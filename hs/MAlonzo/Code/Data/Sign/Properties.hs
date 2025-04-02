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
d_IsAlternativeMagma_10 a0 = ()
-- Data.Sign.Properties._.IsBand
d_IsBand_12 a0 = ()
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_14 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsCommutativeBand
d_IsCommutativeBand_16 a0 = ()
-- Data.Sign.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_18 a0 = ()
-- Data.Sign.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_20 a0 a1 = ()
-- Data.Sign.Properties._.IsCommutativeRing
d_IsCommutativeRing_22 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_24 a0 = ()
-- Data.Sign.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_26 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_28 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_30 a0 = ()
-- Data.Sign.Properties._.IsGroup
d_IsGroup_32 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_34 a0 a1 = ()
-- Data.Sign.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_36 a0 = ()
-- Data.Sign.Properties._.IsIdempotentMonoid
d_IsIdempotentMonoid_38 a0 a1 = ()
-- Data.Sign.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_40 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_42 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_44 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_46 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_48 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsLoop
d_IsLoop_50 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsMagma
d_IsMagma_52 a0 = ()
-- Data.Sign.Properties._.IsMedialMagma
d_IsMedialMagma_54 a0 = ()
-- Data.Sign.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_56 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsMonoid
d_IsMonoid_58 a0 a1 = ()
-- Data.Sign.Properties._.IsMoufangLoop
d_IsMoufangLoop_60 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsNearSemiring
d_IsNearSemiring_62 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsNearring
d_IsNearring_64 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_66 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsQuasigroup
d_IsQuasigroup_68 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsQuasiring
d_IsQuasiring_70 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsRightBolLoop
d_IsRightBolLoop_72 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsRing
d_IsRing_74 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_76 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_78 a0 = ()
-- Data.Sign.Properties._.IsSemigroup
d_IsSemigroup_80 a0 = ()
-- Data.Sign.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_82 a0 = ()
-- Data.Sign.Properties._.IsSemiring
d_IsSemiring_84 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_86 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_88 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsSuccessorSet
d_IsSuccessorSet_90 a0 a1 = ()
-- Data.Sign.Properties._.IsUnitalMagma
d_IsUnitalMagma_92 a0 a1 = ()
-- Data.Sign.Properties._.IsAbelianGroup._//_
d__'47''47'__96 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__96 v0 ~v1 v2 ~v3 = du__'47''47'__96 v0 v2
du__'47''47'__96 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__96 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsAbelianGroup.assoc
d_assoc_98 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_98 = erased
-- Data.Sign.Properties._.IsAbelianGroup.comm
d_comm_100 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_100 = erased
-- Data.Sign.Properties._.IsAbelianGroup.identity
d_identity_102 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_102 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))
-- Data.Sign.Properties._.IsAbelianGroup.identityʳ
d_identity'691'_104 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_104 = erased
-- Data.Sign.Properties._.IsAbelianGroup.identityˡ
d_identity'737'_106 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_106 = erased
-- Data.Sign.Properties._.IsAbelianGroup.inverse
d_inverse_108 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.inverseʳ
d_inverse'691'_110 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_110 = erased
-- Data.Sign.Properties._.IsAbelianGroup.inverseˡ
d_inverse'737'_112 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_112 = erased
-- Data.Sign.Properties._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_114 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_114 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_114 v3
du_isCommutativeMagma_114 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_114 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Sign.Properties._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_116 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_116 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204 v3
-- Data.Sign.Properties._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_118 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_118 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_118 v3
du_isCommutativeSemigroup_118 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
         (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.isEquivalence
d_isEquivalence_120 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))))
-- Data.Sign.Properties._.IsAbelianGroup.isGroup
d_isGroup_122 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_122 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)
-- Data.Sign.Properties._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_124 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_124 ~v0 ~v1 ~v2 v3
  = du_isInvertibleMagma_124 v3
du_isInvertibleMagma_124 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_126 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_126 ~v0 ~v1 ~v2 v3
  = du_isInvertibleUnitalMagma_126 v3
du_isInvertibleUnitalMagma_126 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.isMagma
d_isMagma_128 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))))
-- Data.Sign.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_130 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_132 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_132 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_132 v3
du_isPartialEquivalence_132 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_132 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Sign.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_134 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))
-- Data.Sign.Properties._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_136 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_136 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_136 v3
du_isUnitalMagma_136 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_136 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1)))
-- Data.Sign.Properties._.IsAbelianGroup.refl
d_refl_138 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_138 = erased
-- Data.Sign.Properties._.IsAbelianGroup.reflexive
d_reflexive_140 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_140 = erased
-- Data.Sign.Properties._.IsAbelianGroup.setoid
d_setoid_142 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_142 ~v0 ~v1 ~v2 v3 = du_setoid_142 v3
du_setoid_142 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_142 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Sign.Properties._.IsAbelianGroup.sym
d_sym_144 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_144 = erased
-- Data.Sign.Properties._.IsAbelianGroup.trans
d_trans_146 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_146 = erased
-- Data.Sign.Properties._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_148 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_148 = erased
-- Data.Sign.Properties._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_150 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_150 = erased
-- Data.Sign.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_152 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_152 = erased
-- Data.Sign.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_154 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_154 = erased
-- Data.Sign.Properties._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_156 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_156 = erased
-- Data.Sign.Properties._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_158 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_158 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.alter
d_alter_162 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_162 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_294 (coe v0)
-- Data.Sign.Properties._.IsAlternativeMagma.alternativeʳ
d_alternative'691'_164 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_164 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.alternativeˡ
d_alternative'737'_166 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_166 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_168 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_168 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0))
-- Data.Sign.Properties._.IsAlternativeMagma.isMagma
d_isMagma_170 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_170 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0)
-- Data.Sign.Properties._.IsAlternativeMagma.isPartialEquivalence
d_isPartialEquivalence_172 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_172 ~v0 v1 = du_isPartialEquivalence_172 v1
du_isPartialEquivalence_172 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_172 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsAlternativeMagma.refl
d_refl_174 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_174 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.reflexive
d_reflexive_176 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_176 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.setoid
d_setoid_178 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_178 ~v0 v1 = du_setoid_178 v1
du_setoid_178 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_178 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0))
-- Data.Sign.Properties._.IsAlternativeMagma.sym
d_sym_180 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_180 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.trans
d_trans_182 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_182 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_184 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_184 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.∙-congʳ
d_'8729''45'cong'691'_186 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_186 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.∙-congˡ
d_'8729''45'cong'737'_188 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_188 = erased
-- Data.Sign.Properties._.IsBand.assoc
d_assoc_192 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_192 = erased
-- Data.Sign.Properties._.IsBand.idem
d_idem_194 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_194 = erased
-- Data.Sign.Properties._.IsBand.isEquivalence
d_isEquivalence_196 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)))
-- Data.Sign.Properties._.IsBand.isMagma
d_isMagma_198 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0))
-- Data.Sign.Properties._.IsBand.isPartialEquivalence
d_isPartialEquivalence_200 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_200 ~v0 v1 = du_isPartialEquivalence_200 v1
du_isPartialEquivalence_200 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_200 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Sign.Properties._.IsBand.isSemigroup
d_isSemigroup_202 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_202 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)
-- Data.Sign.Properties._.IsBand.refl
d_refl_204 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_204 = erased
-- Data.Sign.Properties._.IsBand.reflexive
d_reflexive_206 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_206 = erased
-- Data.Sign.Properties._.IsBand.setoid
d_setoid_208 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_208 ~v0 v1 = du_setoid_208 v1
du_setoid_208 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_208 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Data.Sign.Properties._.IsBand.sym
d_sym_210 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_210 = erased
-- Data.Sign.Properties._.IsBand.trans
d_trans_212 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_212 = erased
-- Data.Sign.Properties._.IsBand.∙-cong
d_'8729''45'cong_214 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_214 = erased
-- Data.Sign.Properties._.IsBand.∙-congʳ
d_'8729''45'cong'691'_216 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_216 = erased
-- Data.Sign.Properties._.IsBand.∙-congˡ
d_'8729''45'cong'737'_218 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_218 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_222 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_222 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-cancelʳ-nonZero
d_'42''45'cancel'691''45'nonZero_224 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45'nonZero_224 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_226 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_226 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_228 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_228 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_230 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_230 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_232 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_232 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_234 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_234 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-identity
d_'42''45'identity_236 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_236 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
               (coe v0))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_238 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_238 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_240 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_240 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_242 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_242 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_242 v4
du_isCommutativeMagma_242 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_242 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_244 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_244 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeMonoid_244 v4
du_'42''45'isCommutativeMonoid_244 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_246 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_246 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_246 v4
du_'42''45'isCommutativeSemigroup_246 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_246 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
            (coe v1)))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isMagma
d_'42''45'isMagma_248 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_248 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_248 v4
du_'42''45'isMagma_248 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_248 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_250 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_250 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_250 v4
du_'42''45'isMonoid_250 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_250 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_252 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_252 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_252 v4
du_'42''45'isSemigroup_252 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_252 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_254 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_254 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_256 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_256 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_258 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_258 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_260 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_260 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_262 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_262 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identity
d_identity_264 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                     (coe v0))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_266 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_266 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_268 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_268 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_270 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_270 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_270 v4
du_isCommutativeMagma_270 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_270 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                     (coe v4))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_272 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
               (coe v0))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_274 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_274 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_274 v4
du_isCommutativeSemigroup_274 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_274 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe v3)))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isMagma
d_isMagma_276 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                        (coe v0)))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isMonoid
d_isMonoid_278 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                  (coe v0)))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
d_isSemigroup_280 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_280 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                     (coe v0))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_282 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_282 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_282 v4
du_isUnitalMagma_282 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_282 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.distrib
d_distrib_284 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_284 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
               (coe v0))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.distribʳ
d_distrib'691'_286 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_286 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.distribˡ
d_distrib'737'_288 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_288 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_290 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
      (coe v0)
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_292 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_292 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemiringWithoutOne_292 v4
du_isCommutativeSemiringWithoutOne_292 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
d_isEquivalence_294 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                           (coe v0))))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isNearSemiring
d_isNearSemiring_296 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_296 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_296 v4
du_isNearSemiring_296 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_296 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_298 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_298 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_298 v4
du_isPartialEquivalence_298 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_298 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                              (coe v7)))))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_300 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_300 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_302 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_302 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
            (coe v0)))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_304 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_304 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_304 v4
du_isSemiringWithoutOne_304 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_304 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1)))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.refl
d_refl_306 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_306 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.reflexive
d_reflexive_308 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_308 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.setoid
d_setoid_310 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_310 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_310 v4
du_setoid_310 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_310 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.sym
d_sym_312 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_312 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.trans
d_trans_314 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_314 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.zero
d_zero_316 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
            (coe v0)))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.zeroʳ
d_zero'691'_318 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_318 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.zeroˡ
d_zero'737'_320 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_320 = erased
-- Data.Sign.Properties._.IsCommutativeBand.assoc
d_assoc_324 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_324 = erased
-- Data.Sign.Properties._.IsCommutativeBand.comm
d_comm_326 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_326 = erased
-- Data.Sign.Properties._.IsCommutativeBand.idem
d_idem_328 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_328 = erased
-- Data.Sign.Properties._.IsCommutativeBand.isBand
d_isBand_330 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_330 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)
-- Data.Sign.Properties._.IsCommutativeBand.isCommutativeMagma
d_isCommutativeMagma_332 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_332 ~v0 v1 = du_isCommutativeMagma_332 v1
du_isCommutativeMagma_332 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_332 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_632
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeBand.isCommutativeSemigroup
d_isCommutativeSemigroup_334 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_334 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_632 v1
-- Data.Sign.Properties._.IsCommutativeBand.isEquivalence
d_isEquivalence_336 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_336 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Data.Sign.Properties._.IsCommutativeBand.isMagma
d_isMagma_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeBand.isPartialEquivalence
d_isPartialEquivalence_340 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_340 ~v0 v1 = du_isPartialEquivalence_340 v1
du_isPartialEquivalence_340 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_340 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeBand.isSemigroup
d_isSemigroup_342 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Data.Sign.Properties._.IsCommutativeBand.refl
d_refl_344 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_344 = erased
-- Data.Sign.Properties._.IsCommutativeBand.reflexive
d_reflexive_346 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_346 = erased
-- Data.Sign.Properties._.IsCommutativeBand.setoid
d_setoid_348 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_348 ~v0 v1 = du_setoid_348 v1
du_setoid_348 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_348 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Sign.Properties._.IsCommutativeBand.sym
d_sym_350 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_350 = erased
-- Data.Sign.Properties._.IsCommutativeBand.trans
d_trans_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_352 = erased
-- Data.Sign.Properties._.IsCommutativeBand.∙-cong
d_'8729''45'cong_354 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_354 = erased
-- Data.Sign.Properties._.IsCommutativeBand.∙-congʳ
d_'8729''45'cong'691'_356 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_356 = erased
-- Data.Sign.Properties._.IsCommutativeBand.∙-congˡ
d_'8729''45'cong'737'_358 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_358 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.comm
d_comm_362 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_362 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_364 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_364 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMagma.isMagma
d_isMagma_366 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_366 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0)
-- Data.Sign.Properties._.IsCommutativeMagma.isPartialEquivalence
d_isPartialEquivalence_368 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_368 ~v0 v1 = du_isPartialEquivalence_368 v1
du_isPartialEquivalence_368 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_368 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsCommutativeMagma.refl
d_refl_370 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_370 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.reflexive
d_reflexive_372 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_372 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.setoid
d_setoid_374 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_374 ~v0 v1 = du_setoid_374 v1
du_setoid_374 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_374 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMagma.sym
d_sym_376 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_376 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.trans
d_trans_378 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_378 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_380 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.∙-congʳ
d_'8729''45'cong'691'_382 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_382 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.∙-congˡ
d_'8729''45'cong'737'_384 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_384 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.assoc
d_assoc_388 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_388 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.comm
d_comm_390 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_390 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.identity
d_identity_392 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMonoid.identityʳ
d_identity'691'_394 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_394 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.identityˡ
d_identity'737'_396 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_396 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_398 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_398 ~v0 ~v1 v2 = du_isCommutativeMagma_398 v2
du_isCommutativeMagma_398 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_400 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_400 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786 v2
-- Data.Sign.Properties._.IsCommutativeMonoid.isEquivalence
d_isEquivalence_402 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))))
-- Data.Sign.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_404 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_404 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_406 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_406 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)
-- Data.Sign.Properties._.IsCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_408 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_408 ~v0 ~v1 v2
  = du_isPartialEquivalence_408 v2
du_isPartialEquivalence_408 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_408 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_410 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_410 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_412 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_412 ~v0 ~v1 v2 = du_isUnitalMagma_412 v2
du_isUnitalMagma_412 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMonoid.refl
d_refl_414 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_414 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.reflexive
d_reflexive_416 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_416 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.setoid
d_setoid_418 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_418 ~v0 ~v1 v2 = du_setoid_418 v2
du_setoid_418 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_418 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Sign.Properties._.IsCommutativeMonoid.sym
d_sym_420 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_420 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.trans
d_trans_422 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_422 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_424 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_424 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_426 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_426 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_428 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_428 = erased
-- Data.Sign.Properties._.IsCommutativeRing._//_
d__'47''47'__432 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__432 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__432 v0 v2
du__'47''47'__432 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__432 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_434 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_434 = erased
-- Data.Sign.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_436 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_436 = erased
-- Data.Sign.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_438 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_438 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_440 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_440 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_442 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_442 = erased
-- Data.Sign.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_444 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_446 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_446 = erased
-- Data.Sign.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_448 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_448 = erased
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_450 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_450 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_450 v0 v1 v2 v3 v5
du_isCommutativeMagma_450 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_450 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
               (coe v6))))
-- Data.Sign.Properties._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_452 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_452 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_452 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_452 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_452 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_454 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_454 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_454 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_454 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_454 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
            (coe v5)))
-- Data.Sign.Properties._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_456 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_456 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_456 v0 v1 v2 v3 v5
du_'42''45'isMagma_456 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_456 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Sign.Properties._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_458 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_458 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_458 v0 v1 v2 v3 v5
du_'42''45'isMonoid_458 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_458 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2792 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4))
-- Data.Sign.Properties._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_460 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_460 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_460 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_460 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_460 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Sign.Properties._.IsCommutativeRing.assoc
d_assoc_462 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_462 = erased
-- Data.Sign.Properties._.IsCommutativeRing.comm
d_comm_464 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_464 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_466 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_466 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_468 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_468 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_470 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_470 = erased
-- Data.Sign.Properties._.IsCommutativeRing.identity
d_identity_472 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_472 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_472 v5
du_identity_472 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_472 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_698
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                  (coe v1)))))
-- Data.Sign.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_474 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_474 = erased
-- Data.Sign.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_476 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_476 = erased
-- Data.Sign.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_478 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_480 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_480 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_480 v5
du_isCommutativeMagma_480 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_480 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                     (coe v4))))))
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_482 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_482 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_482 v5
du_isCommutativeMonoid_482 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_482 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
               (coe v2))))
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_484 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_484 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_484 v5
du_isCommutativeSemigroup_484 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_484 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                  (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeRing.isGroup
d_isGroup_486 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_486 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_486 v5
du_isGroup_486 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
du_isGroup_486 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_488 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_488 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_488 v5
du_isInvertibleMagma_488 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_488 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_490 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_490 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_490 v5
du_isInvertibleUnitalMagma_490 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_490 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeRing.isMagma
d_isMagma_492 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_492 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_492 v5
du_isMagma_492 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_492 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                     (coe v1))))))
-- Data.Sign.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_494 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_494 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_494 v5
du_isMonoid_494 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_isMonoid_494 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v1))))
-- Data.Sign.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_496 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_496 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_496 v5
du_isSemigroup_496 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_496 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                  (coe v1)))))
-- Data.Sign.Properties._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_498 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_498 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_498 v5
du_isUnitalMagma_498 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_498 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4))))))
-- Data.Sign.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_500 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_500 = erased
-- Data.Sign.Properties._.IsCommutativeRing.inverse
d_inverse_502 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_502 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_502 v5
du_inverse_502 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_502 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_inverse_1052
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v1))))
-- Data.Sign.Properties._.IsCommutativeRing.inverseʳ
d_inverse'691'_504 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_504 = erased
-- Data.Sign.Properties._.IsCommutativeRing.inverseˡ
d_inverse'737'_506 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_506 = erased
-- Data.Sign.Properties._.IsCommutativeRing.distrib
d_distrib_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_508 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2702
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.distribʳ
d_distrib'691'_510 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_510 = erased
-- Data.Sign.Properties._.IsCommutativeRing.distribˡ
d_distrib'737'_512 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_512 = erased
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_514 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_514 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948 v0 v1
      v2 v3 v5
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_516 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_516 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_516 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_516 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_516 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_518 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_518 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_518 v5
du_isEquivalence_518 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_518 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                        (coe v1)))))))
-- Data.Sign.Properties._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_520 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_520 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_520 v0 v1 v2 v3 v5
du_isNearSemiring_520 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_520 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v5)))
-- Data.Sign.Properties._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_522 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_522 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_522 v5
du_isPartialEquivalence_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_522 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                              (coe v7)))))))))
-- Data.Sign.Properties._.IsCommutativeRing.isRing
d_isRing_524 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_isRing_524 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0)
-- Data.Sign.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_526 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
d_isRingWithoutOne_526 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_526 v5
du_isRingWithoutOne_526 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
du_isRingWithoutOne_526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.isSemiring
d_isSemiring_528 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_528 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_528 v0 v1 v2 v3 v5
du_isSemiring_528 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
du_isSemiring_528 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4))
-- Data.Sign.Properties._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_530 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_530 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutAnnihilatingZero_530 v5
du_isSemiringWithoutAnnihilatingZero_530 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
du_isSemiringWithoutAnnihilatingZero_530 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2800
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_532 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_532 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_532 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_532 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_532 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Sign.Properties._.IsCommutativeRing.refl
d_refl_534 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_534 = erased
-- Data.Sign.Properties._.IsCommutativeRing.reflexive
d_reflexive_536 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_536 = erased
-- Data.Sign.Properties._.IsCommutativeRing.setoid
d_setoid_538 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_538 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_538 v5
du_setoid_538 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_538 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Data.Sign.Properties._.IsCommutativeRing.sym
d_sym_540 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_540 = erased
-- Data.Sign.Properties._.IsCommutativeRing.trans
d_trans_542 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_542 = erased
-- Data.Sign.Properties._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_544 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_544 = erased
-- Data.Sign.Properties._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_546 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_546 = erased
-- Data.Sign.Properties._.IsCommutativeRing.zero
d_zero_548 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_548 v0 v1 v2 v3 ~v4 v5 = du_zero_548 v0 v1 v2 v3 v5
du_zero_548 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_548 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero_2406 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v5)))
-- Data.Sign.Properties._.IsCommutativeRing.zeroʳ
d_zero'691'_550 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_550 = erased
-- Data.Sign.Properties._.IsCommutativeRing.zeroˡ
d_zero'737'_552 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_552 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.assoc
d_assoc_556 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_556 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.comm
d_comm_558 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_558 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_560 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_560 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586 v1
-- Data.Sign.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_562 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_564 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_564 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemigroup.isPartialEquivalence
d_isPartialEquivalence_566 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_566 ~v0 v1 = du_isPartialEquivalence_566 v1
du_isPartialEquivalence_566 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_566 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Sign.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_568 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_568 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)
-- Data.Sign.Properties._.IsCommutativeSemigroup.refl
d_refl_570 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_570 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.reflexive
d_reflexive_572 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_572 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.setoid
d_setoid_574 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_574 ~v0 v1 = du_setoid_574 v1
du_setoid_574 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_574 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemigroup.sym
d_sym_576 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_576 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.trans
d_trans_578 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_578 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_580 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_580 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.∙-congʳ
d_'8729''45'cong'691'_582 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_582 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.∙-congˡ
d_'8729''45'cong'737'_584 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_584 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_588 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_588 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_590 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_590 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_592 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_592 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_594 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_594 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_596 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_596 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_598 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_600 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_600 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_602 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_602 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_604 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_604 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_604 v4
du_isCommutativeMagma_604 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_604 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_606 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_606 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      v4
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_608 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_608 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_608 v4
du_'42''45'isCommutativeSemigroup_608 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isMagma
d_'42''45'isMagma_610 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_610 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_610 v4
du_'42''45'isMagma_610 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_610 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_612 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_612 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_612 v4
du_'42''45'isMonoid_612 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_612 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_614 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_614 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_614 v4
du_'42''45'isSemigroup_614 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_614 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.assoc
d_assoc_616 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_616 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.comm
d_comm_618 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_618 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_620 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_620 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_622 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_622 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_624 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_624 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.identity
d_identity_626 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))))
-- Data.Sign.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_628 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_628 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_630 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_630 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_632 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_632 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_632 v4
du_isCommutativeMagma_632 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_632 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_634 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_634 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_636 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_636 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_636 v4
du_isCommutativeSemigroup_636 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_636 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe v2))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isMagma
d_isMagma_638 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isMonoid
d_isMonoid_640 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isSemigroup
d_isSemigroup_642 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_642 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_644 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_644 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_644 v4
du_isUnitalMagma_644 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_644 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeSemiring.distrib
d_distrib_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemiring.distribʳ
d_distrib'691'_648 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_648 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.distribˡ
d_distrib'737'_650 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_650 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_652 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_652 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      v4
-- Data.Sign.Properties._.IsCommutativeSemiring.isEquivalence
d_isEquivalence_654 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_654 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isNearSemiring
d_isNearSemiring_656 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_656 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_656 v4
du_isNearSemiring_656 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_656 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_658 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_658 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_658 v4
du_isPartialEquivalence_658 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_658 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v6))))))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_660 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_660 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)
-- Data.Sign.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_662 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_664 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_664 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_664 v4
du_isSemiringWithoutOne_664 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_664 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiring.refl
d_refl_666 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_666 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.reflexive
d_reflexive_668 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_668 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.setoid
d_setoid_670 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_670 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_670 v4
du_setoid_670 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_670 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_200
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))))))
-- Data.Sign.Properties._.IsCommutativeSemiring.sym
d_sym_672 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_672 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.trans
d_trans_674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_674 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.zero
d_zero_676 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiring.zeroʳ
d_zero'691'_678 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_678 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.zeroˡ
d_zero'737'_680 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_680 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_684 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_684 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_686 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_686 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_688 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_688 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_690 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_690 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_692 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_692 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_694 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_694 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_694 v3
du_isCommutativeMagma_694 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_694 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_696 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_696 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
      v3
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_698 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_698 ~v0 ~v1 ~v2 v3 = du_'42''45'isMagma_698 v3
du_'42''45'isMagma_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_698 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1366
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_700 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_700 ~v0 ~v1 ~v2 v3
  = du_'42''45'isSemigroup_700 v3
du_'42''45'isSemigroup_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_700 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.assoc
d_assoc_702 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_702 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_704 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_704 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-cong
d_'8729''45'cong_706 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_706 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_708 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_708 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_710 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_710 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.identity
d_identity_712 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_712 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
               (coe v0))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.identityʳ
d_identity'691'_714 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_714 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.identityˡ
d_identity'737'_716 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_716 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_718 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_718 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_718 v3
du_isCommutativeMagma_718 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_718 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe v2))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_720 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_722 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_722 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_722 v3
du_isCommutativeSemigroup_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_722 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
d_isMonoid_724 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
            (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_726 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1322
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.distribʳ
d_distrib'691'_728 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_728 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.distribˡ
d_distrib'737'_730 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_730 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isEquivalence
d_isEquivalence_732 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
                     (coe v0))))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isNearSemiring
d_isNearSemiring_734 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_734 ~v0 ~v1 ~v2 v3 = du_isNearSemiring_734 v3
du_isNearSemiring_734 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_734 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_736 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_736 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_736 v3
du_isPartialEquivalence_736 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_736 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                        (coe v1)))))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_738 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
      (coe v0)
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.refl
d_refl_740 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_740 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.reflexive
d_reflexive_742 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_742 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.setoid
d_setoid_744 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_744 ~v0 ~v1 ~v2 v3 = du_setoid_744 v3
du_setoid_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_744 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.sym
d_sym_746 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_746 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.trans
d_trans_748 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_748 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_750 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1324
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.zeroʳ
d_zero'691'_752 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_752 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.zeroˡ
d_zero'737'_754 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_754 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.flex
d_flex_758 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_758 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_760 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_760 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0))
-- Data.Sign.Properties._.IsFlexibleMagma.isMagma
d_isMagma_762 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_762 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0)
-- Data.Sign.Properties._.IsFlexibleMagma.isPartialEquivalence
d_isPartialEquivalence_764 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_764 ~v0 v1 = du_isPartialEquivalence_764 v1
du_isPartialEquivalence_764 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_764 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsFlexibleMagma.refl
d_refl_766 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_766 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.reflexive
d_reflexive_768 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_768 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.setoid
d_setoid_770 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_770 ~v0 v1 = du_setoid_770 v1
du_setoid_770 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0))
-- Data.Sign.Properties._.IsFlexibleMagma.sym
d_sym_772 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_772 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.trans
d_trans_774 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_774 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_776 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_776 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.∙-congʳ
d_'8729''45'cong'691'_778 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_778 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.∙-congˡ
d_'8729''45'cong'737'_780 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_780 = erased
-- Data.Sign.Properties._.IsGroup._-_
d__'45'__784 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'45'__784 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du__'45'__1104 v0 v2
-- Data.Sign.Properties._.IsGroup._//_
d__'47''47'__786 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__786 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 v0 v2 v4 v5
-- Data.Sign.Properties._.IsGroup._\\_
d__'92''92'__788 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'92''92'__788 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1092 v0 v2 v4 v5
-- Data.Sign.Properties._.IsGroup.assoc
d_assoc_790 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_790 = erased
-- Data.Sign.Properties._.IsGroup.identity
d_identity_792 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Sign.Properties._.IsGroup.identityʳ
d_identity'691'_794 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_794 = erased
-- Data.Sign.Properties._.IsGroup.identityˡ
d_identity'737'_796 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_796 = erased
-- Data.Sign.Properties._.IsGroup.inverse
d_inverse_798 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_798 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1052 (coe v0)
-- Data.Sign.Properties._.IsGroup.inverseʳ
d_inverse'691'_800 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_800 = erased
-- Data.Sign.Properties._.IsGroup.inverseˡ
d_inverse'737'_802 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_802 = erased
-- Data.Sign.Properties._.IsGroup.isEquivalence
d_isEquivalence_804 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))))
-- Data.Sign.Properties._.IsGroup.isInvertibleMagma
d_isInvertibleMagma_806 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_806 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122 v3
-- Data.Sign.Properties._.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_808 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_808 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124 v3
-- Data.Sign.Properties._.IsGroup.isMagma
d_isMagma_810 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_810 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)))
-- Data.Sign.Properties._.IsGroup.isMonoid
d_isMonoid_812 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_812 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)
-- Data.Sign.Properties._.IsGroup.isPartialEquivalence
d_isPartialEquivalence_814 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_814 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_814 v3
du_isPartialEquivalence_814 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_814 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Sign.Properties._.IsGroup.isSemigroup
d_isSemigroup_816 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_816 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Sign.Properties._.IsGroup.isUnitalMagma
d_isUnitalMagma_818 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_818 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_818 v3
du_isUnitalMagma_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Sign.Properties._.IsGroup.refl
d_refl_820 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_820 = erased
-- Data.Sign.Properties._.IsGroup.reflexive
d_reflexive_822 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_822 = erased
-- Data.Sign.Properties._.IsGroup.setoid
d_setoid_824 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_824 ~v0 ~v1 ~v2 v3 = du_setoid_824 v3
du_setoid_824 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_824 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Sign.Properties._.IsGroup.sym
d_sym_826 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_826 = erased
-- Data.Sign.Properties._.IsGroup.trans
d_trans_828 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_828 = erased
-- Data.Sign.Properties._.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_830 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_830 = erased
-- Data.Sign.Properties._.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_832 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_832 = erased
-- Data.Sign.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_834 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_834 = erased
-- Data.Sign.Properties._.IsGroup.∙-cong
d_'8729''45'cong_836 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_836 = erased
-- Data.Sign.Properties._.IsGroup.∙-congʳ
d_'8729''45'cong'691'_838 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_838 = erased
-- Data.Sign.Properties._.IsGroup.∙-congˡ
d_'8729''45'cong'737'_840 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_840 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_844 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_844 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_846 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_846 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_848 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_848 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.identity
d_identity_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.identityʳ
d_identity'691'_852 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_852 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_854 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_854 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isBand
d_isBand_856 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_856 ~v0 ~v1 v2 = du_isBand_856 v2
du_isBand_856 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_846
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910 (coe v0))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isCommutativeBand
d_isCommutativeBand_858 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_858 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916 v2
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_860 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_860 ~v0 ~v1 v2 = du_isCommutativeMagma_860 v2
du_isCommutativeMagma_860 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_860 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_862 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_862 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0)
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_864 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_864 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_864 v2
du_isCommutativeSemigroup_864 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_864 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
d_isEquivalence_866 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_866 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
                  (coe v0)))))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isIdempotentMonoid
d_isIdempotentMonoid_868 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_868 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910 v2
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isMagma
d_isMagma_870 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_870 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
               (coe v0))))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_872 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_872 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_874 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_874 ~v0 ~v1 v2
  = du_isPartialEquivalence_874 v2
du_isPartialEquivalence_874 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_874 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
d_isSemigroup_876 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_876 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_878 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_878 ~v0 ~v1 v2 = du_isUnitalMagma_878 v2
du_isUnitalMagma_878 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_878 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1)))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.refl
d_refl_880 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_880 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_882 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_882 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.setoid
d_setoid_884 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_884 ~v0 ~v1 v2 = du_setoid_884 v2
du_setoid_884 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_884 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_886 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_886 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.trans
d_trans_888 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_888 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_890 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_890 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_892 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_892 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_894 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_894 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.idem
d_idem_898 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_898 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_900 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_900 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMagma.isMagma
d_isMagma_902 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_902 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0)
-- Data.Sign.Properties._.IsIdempotentMagma.isPartialEquivalence
d_isPartialEquivalence_904 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_904 ~v0 v1 = du_isPartialEquivalence_904 v1
du_isPartialEquivalence_904 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_904 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsIdempotentMagma.refl
d_refl_906 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_906 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.reflexive
d_reflexive_908 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_908 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.setoid
d_setoid_910 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_910 ~v0 v1 = du_setoid_910 v1
du_setoid_910 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_910 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMagma.sym
d_sym_912 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_912 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.trans
d_trans_914 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_914 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_916 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_916 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.∙-congʳ
d_'8729''45'cong'691'_918 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_918 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.∙-congˡ
d_'8729''45'cong'737'_920 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_920 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.assoc
d_assoc_924 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_924 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.idem
d_idem_926 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_926 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.identity
d_identity_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_928 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMonoid.identityʳ
d_identity'691'_930 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_930 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.identityˡ
d_identity'737'_932 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_932 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.isBand
d_isBand_934 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_934 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_846 v2
-- Data.Sign.Properties._.IsIdempotentMonoid.isEquivalence
d_isEquivalence_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_936 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))))
-- Data.Sign.Properties._.IsIdempotentMonoid.isMagma
d_isMagma_938 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_938 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0)))
-- Data.Sign.Properties._.IsIdempotentMonoid.isMonoid
d_isMonoid_940 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_940 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0)
-- Data.Sign.Properties._.IsIdempotentMonoid.isPartialEquivalence
d_isPartialEquivalence_942 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_942 ~v0 ~v1 v2
  = du_isPartialEquivalence_942 v2
du_isPartialEquivalence_942 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_942 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Sign.Properties._.IsIdempotentMonoid.isSemigroup
d_isSemigroup_944 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_944 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMonoid.isUnitalMagma
d_isUnitalMagma_946 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_946 ~v0 ~v1 v2 = du_isUnitalMagma_946 v2
du_isUnitalMagma_946 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMonoid.refl
d_refl_948 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_948 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.reflexive
d_reflexive_950 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_950 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.setoid
d_setoid_952 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_952 ~v0 ~v1 v2 = du_setoid_952 v2
du_setoid_952 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_952 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Sign.Properties._.IsIdempotentMonoid.sym
d_sym_954 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_954 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.trans
d_trans_956 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_956 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.∙-cong
d_'8729''45'cong_958 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_958 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.∙-congʳ
d_'8729''45'cong'691'_960 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_960 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.∙-congˡ
d_'8729''45'cong'737'_962 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_962 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_966 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_968 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_968 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_970 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_970 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_972 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_972 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_974 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_974 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Sign.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_976 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_976 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_978 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_978 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.*-isMagma
d_'42''45'isMagma_980 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_980 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_980 v4
du_'42''45'isMagma_980 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_980 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.*-isMonoid
d_'42''45'isMonoid_982 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_982 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_982 v4
du_'42''45'isMonoid_982 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_982 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.*-isSemigroup
d_'42''45'isSemigroup_984 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_984 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_984 v4
du_'42''45'isSemigroup_984 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_984 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.assoc
d_assoc_986 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_986 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.comm
d_comm_988 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_988 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_990 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_990 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_992 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_992 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_994 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_994 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_996 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_996 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.identity
d_identity_998 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_998 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))))
-- Data.Sign.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1000 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1000 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1002 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1002 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.isBand
d_isBand_1004 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_1004 ~v0 ~v1 ~v2 ~v3 v4 = du_isBand_1004 v4
du_isBand_1004 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_1004 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isBand_846
         (coe
            MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.isCommutativeBand
d_isCommutativeBand_1006 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_1006 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeBand_1006 v4
du_isCommutativeBand_1006 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_isCommutativeBand_1006 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
         (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.isCommutativeMagma
d_isCommutativeMagma_1008 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1008 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1008 v4
du_isCommutativeMagma_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1008 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe v3)))))
-- Data.Sign.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_1010 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Sign.Properties._.IsIdempotentSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1012 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1012 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_1012 v4
du_isCommutativeSemigroup_1012 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1012 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe v2))))
-- Data.Sign.Properties._.IsIdempotentSemiring.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1014 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
d_'43''45'isIdempotentCommutativeMonoid_1014 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
      v4
-- Data.Sign.Properties._.IsIdempotentSemiring.isIdempotentMonoid
d_isIdempotentMonoid_1016 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_1016 ~v0 ~v1 ~v2 ~v3 v4
  = du_isIdempotentMonoid_1016 v4
du_isIdempotentMonoid_1016 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
du_isIdempotentMonoid_1016 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
         (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.isMagma
d_isMagma_1018 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1018 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isMonoid
d_isMonoid_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isSemigroup
d_isSemigroup_1022 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1022 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isUnitalMagma
d_isUnitalMagma_1024 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1024 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_1024 v4
du_isUnitalMagma_1024 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1024 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3)))))
-- Data.Sign.Properties._.IsIdempotentSemiring.distrib
d_distrib_1026 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1026 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Sign.Properties._.IsIdempotentSemiring.distribʳ
d_distrib'691'_1028 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1028 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.distribˡ
d_distrib'737'_1030 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1030 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.isEquivalence
d_isEquivalence_1032 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1032 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isNearSemiring
d_isNearSemiring_1034 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_1034 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_1034 v4
du_isNearSemiring_1034 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_1034 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.isPartialEquivalence
d_isPartialEquivalence_1036 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1036 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1036 v4
du_isPartialEquivalence_1036 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1036 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v6))))))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1038 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_1038 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)
-- Data.Sign.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1040 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_1040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1042 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_1042 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_1042 v4
du_isSemiringWithoutOne_1042 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_1042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.refl
d_refl_1044 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1044 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.reflexive
d_reflexive_1046 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1046 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.setoid
d_setoid_1048 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1048 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1048 v4
du_setoid_1048 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1048 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_200
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))))))
-- Data.Sign.Properties._.IsIdempotentSemiring.sym
d_sym_1050 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1050 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.trans
d_trans_1052 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1052 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.zero
d_zero_1054 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.zeroʳ
d_zero'691'_1056 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1056 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.zeroˡ
d_zero'737'_1058 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1058 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.inverse
d_inverse_1062 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1062 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_940 (coe v0)
-- Data.Sign.Properties._.IsInvertibleMagma.inverseʳ
d_inverse'691'_1064 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1064 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.inverseˡ
d_inverse'737'_1066 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1066 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1068 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1068 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0))
-- Data.Sign.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1070 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1070 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0)
-- Data.Sign.Properties._.IsInvertibleMagma.isPartialEquivalence
d_isPartialEquivalence_1072 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1072 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1072 v3
du_isPartialEquivalence_1072 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1072 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsInvertibleMagma.refl
d_refl_1074 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1074 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.reflexive
d_reflexive_1076 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1076 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.setoid
d_setoid_1078 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1078 ~v0 ~v1 ~v2 v3 = du_setoid_1078 v3
du_setoid_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1078 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0))
-- Data.Sign.Properties._.IsInvertibleMagma.sym
d_sym_1080 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1080 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.trans
d_trans_1082 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1082 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1084 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1086 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1086 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.∙-congʳ
d_'8729''45'cong'691'_1088 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1088 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.∙-congˡ
d_'8729''45'cong'737'_1090 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1090 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1094 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1094 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_990 (coe v0)
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_1096 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1096 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_1098 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1098 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1100 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1100 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_940
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.inverseʳ
d_inverse'691'_1102 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1102 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.inverseˡ
d_inverse'737'_1104 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1104 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isEquivalence
d_isEquivalence_1106 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_938
         (coe
            MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0)))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1108 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_1108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0)
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1110 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1110 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_938
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_1112 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1112 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1112 v3
du_isPartialEquivalence_1112 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1112 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_1114 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1114 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_1028 v3
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.refl
d_refl_1116 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1116 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.reflexive
d_reflexive_1118 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1118 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.setoid
d_setoid_1120 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1120 ~v0 ~v1 ~v2 v3 = du_setoid_1120 v3
du_setoid_1120 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1120 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v1)))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1122 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1122 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.trans
d_trans_1124 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1124 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1126 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1126 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1128 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1128 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_1130 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1130 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_1132 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1132 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1136 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1136 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1138 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1138 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1140 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1140 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1142 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1142 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.*-identity
d_'42''45'identity_1144 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
               (coe v0))))
-- Data.Sign.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1146 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1146 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1148 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1148 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.*-isMagma
d_'42''45'isMagma_1150 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1150 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1150 v5
du_'42''45'isMagma_1150 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_1150 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.*-isMonoid
d_'42''45'isMonoid_1152 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1152 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1152 v5
du_'42''45'isMonoid_1152 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_1152 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.*-isSemigroup
d_'42''45'isSemigroup_1154 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1154 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1154 v5
du_'42''45'isSemigroup_1154 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_1154 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.assoc
d_assoc_1156 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1156 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.comm
d_comm_1158 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1158 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1160 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1160 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1162 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1162 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1164 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1164 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1166 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1166 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.identity
d_identity_1168 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1168 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                     (coe v0))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1170 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1170 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1172 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1172 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.isBand
d_isBand_1174 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_1174 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isBand_1174 v5
du_isBand_1174 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_1174 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isBand_846
            (coe
               MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isCommutativeBand
d_isCommutativeBand_1176 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_1176 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeBand_1176 v5
du_isCommutativeBand_1176 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_isCommutativeBand_1176 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
            (coe v1)))
-- Data.Sign.Properties._.IsKleeneAlgebra.isCommutativeMagma
d_isCommutativeMagma_1178 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1178 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_1178 v5
du_isCommutativeMagma_1178 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1178 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                     (coe v4))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1180 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_1180 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
               (coe v0))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isCommutativeSemigroup
d_isCommutativeSemigroup_1182 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1182 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_1182 v5
du_isCommutativeSemigroup_1182 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1182 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe v3)))))
-- Data.Sign.Properties._.IsKleeneAlgebra.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1184 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
d_'43''45'isIdempotentCommutativeMonoid_1184 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'isIdempotentCommutativeMonoid_1184 v5
du_'43''45'isIdempotentCommutativeMonoid_1184 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
du_'43''45'isIdempotentCommutativeMonoid_1184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
         (coe v0))
-- Data.Sign.Properties._.IsKleeneAlgebra.isIdempotentMonoid
d_isIdempotentMonoid_1186 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_1186 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isIdempotentMonoid_1186 v5
du_isIdempotentMonoid_1186 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
du_isIdempotentMonoid_1186 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
            (coe v1)))
-- Data.Sign.Properties._.IsKleeneAlgebra.isMagma
d_isMagma_1188 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1188 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                        (coe v0)))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isMonoid
d_isMonoid_1190 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                  (coe v0)))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isSemigroup
d_isSemigroup_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                     (coe v0))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isUnitalMagma
d_isUnitalMagma_1194 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1194 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1194 v5
du_isUnitalMagma_1194 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1194 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.distrib
d_distrib_1196 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
               (coe v0))))
-- Data.Sign.Properties._.IsKleeneAlgebra.distribʳ
d_distrib'691'_1198 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1198 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.distribˡ
d_distrib'737'_1200 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1200 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.isEquivalence
d_isEquivalence_1202 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                           (coe v0))))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1204 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942
d_isIdempotentSemiring_1204 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
      (coe v0)
-- Data.Sign.Properties._.IsKleeneAlgebra.isNearSemiring
d_isNearSemiring_1206 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_1206 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_1206 v5
du_isNearSemiring_1206 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_1206 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isPartialEquivalence
d_isPartialEquivalence_1208 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1208 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1208 v5
du_isPartialEquivalence_1208 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1208 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                              (coe v7)))))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_1210 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
         (coe v0))
-- Data.Sign.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1212 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_1212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
            (coe v0)))
-- Data.Sign.Properties._.IsKleeneAlgebra.isSemiringWithoutOne
d_isSemiringWithoutOne_1214 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_1214 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_1214 v5
du_isSemiringWithoutOne_1214 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_1214 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1)))
-- Data.Sign.Properties._.IsKleeneAlgebra.refl
d_refl_1216 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1216 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.reflexive
d_reflexive_1218 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1218 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.setoid
d_setoid_1220 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1220 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1220 v5
du_setoid_1220 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1220 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1222 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1222 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_2086 (coe v0)
-- Data.Sign.Properties._.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_1224 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'691'_1224 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_1226 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'737'_1226 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1228 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1228 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_2084 (coe v0)
-- Data.Sign.Properties._.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_1230 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'691'_1230 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_1232 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'737'_1232 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.sym
d_sym_1234 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1234 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.trans
d_trans_1236 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1236 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.zero
d_zero_1238 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
            (coe v0)))
-- Data.Sign.Properties._.IsKleeneAlgebra.zeroʳ
d_zero'691'_1240 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1240 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.zeroˡ
d_zero'737'_1242 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1242 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1246 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1246 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.//-congʳ
d_'47''47''45'cong'691'_1248 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1248 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.//-congˡ
d_'47''47''45'cong'737'_1250 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1250 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1252 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1252 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1254 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1254 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1256 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1256 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.identity
d_identity_1258 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))
-- Data.Sign.Properties._.IsLeftBolLoop.identityʳ
d_identity'691'_1260 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1260 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.identityˡ
d_identity'737'_1262 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1262 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.isEquivalence
d_isEquivalence_1264 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))))
-- Data.Sign.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1266 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1266 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)
-- Data.Sign.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1268 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1268 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Sign.Properties._.IsLeftBolLoop.isPartialEquivalence
d_isPartialEquivalence_1270 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1270 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1270 v4
du_isPartialEquivalence_1270 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1270 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Sign.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1272 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))
-- Data.Sign.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1274 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1276 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Sign.Properties._.IsLeftBolLoop.leftDividesʳ
d_leftDivides'691'_1278 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1278 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.leftDividesˡ
d_leftDivides'737'_1280 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1280 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.refl
d_refl_1282 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1282 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.reflexive
d_reflexive_1284 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1284 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1286 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Sign.Properties._.IsLeftBolLoop.rightDividesʳ
d_rightDivides'691'_1288 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1288 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.rightDividesˡ
d_rightDivides'737'_1290 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1290 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.setoid
d_setoid_1292 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1292 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1292 v4
du_setoid_1292 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1292 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2))))
-- Data.Sign.Properties._.IsLeftBolLoop.sym
d_sym_1294 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1294 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.trans
d_trans_1296 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1296 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1298 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1298 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.∙-congʳ
d_'8729''45'cong'691'_1300 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1300 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.∙-congˡ
d_'8729''45'cong'737'_1302 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1302 = erased
-- Data.Sign.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1306 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1306 = erased
-- Data.Sign.Properties._.IsLoop.//-congʳ
d_'47''47''45'cong'691'_1308 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1308 = erased
-- Data.Sign.Properties._.IsLoop.//-congˡ
d_'47''47''45'cong'737'_1310 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1310 = erased
-- Data.Sign.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1312 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1312 = erased
-- Data.Sign.Properties._.IsLoop.\\-congʳ
d_'92''92''45'cong'691'_1314 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1314 = erased
-- Data.Sign.Properties._.IsLoop.\\-congˡ
d_'92''92''45'cong'737'_1316 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1316 = erased
-- Data.Sign.Properties._.IsLoop.identity
d_identity_1318 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1318 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3064 (coe v0)
-- Data.Sign.Properties._.IsLoop.identityʳ
d_identity'691'_1320 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1320 = erased
-- Data.Sign.Properties._.IsLoop.identityˡ
d_identity'737'_1322 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1322 = erased
-- Data.Sign.Properties._.IsLoop.isEquivalence
d_isEquivalence_1324 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0)))
-- Data.Sign.Properties._.IsLoop.isMagma
d_isMagma_1326 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Sign.Properties._.IsLoop.isPartialEquivalence
d_isPartialEquivalence_1328 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1328 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1328 v4
du_isPartialEquivalence_1328 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1328 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Sign.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1330 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1330 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0)
-- Data.Sign.Properties._.IsLoop.leftDivides
d_leftDivides_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1332 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Sign.Properties._.IsLoop.leftDividesʳ
d_leftDivides'691'_1334 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1334 = erased
-- Data.Sign.Properties._.IsLoop.leftDividesˡ
d_leftDivides'737'_1336 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1336 = erased
-- Data.Sign.Properties._.IsLoop.refl
d_refl_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1338 = erased
-- Data.Sign.Properties._.IsLoop.reflexive
d_reflexive_1340 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1340 = erased
-- Data.Sign.Properties._.IsLoop.rightDivides
d_rightDivides_1342 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Sign.Properties._.IsLoop.rightDividesʳ
d_rightDivides'691'_1344 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1344 = erased
-- Data.Sign.Properties._.IsLoop.rightDividesˡ
d_rightDivides'737'_1346 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1346 = erased
-- Data.Sign.Properties._.IsLoop.setoid
d_setoid_1348 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1348 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1348 v4
du_setoid_1348 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1348 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v1)))
-- Data.Sign.Properties._.IsLoop.sym
d_sym_1350 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1350 = erased
-- Data.Sign.Properties._.IsLoop.trans
d_trans_1352 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1352 = erased
-- Data.Sign.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1354 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1354 = erased
-- Data.Sign.Properties._.IsLoop.∙-congʳ
d_'8729''45'cong'691'_1356 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1356 = erased
-- Data.Sign.Properties._.IsLoop.∙-congˡ
d_'8729''45'cong'737'_1358 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1358 = erased
-- Data.Sign.Properties._.IsMagma.isEquivalence
d_isEquivalence_1362 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1362 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0)
-- Data.Sign.Properties._.IsMagma.isPartialEquivalence
d_isPartialEquivalence_1364 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1364 ~v0 v1
  = du_isPartialEquivalence_1364 v1
du_isPartialEquivalence_1364 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1364 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0))
-- Data.Sign.Properties._.IsMagma.refl
d_refl_1366 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1366 = erased
-- Data.Sign.Properties._.IsMagma.reflexive
d_reflexive_1368 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1368 = erased
-- Data.Sign.Properties._.IsMagma.setoid
d_setoid_1370 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1370 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_200 v1
-- Data.Sign.Properties._.IsMagma.sym
d_sym_1372 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1372 = erased
-- Data.Sign.Properties._.IsMagma.trans
d_trans_1374 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1374 = erased
-- Data.Sign.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1376 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1376 = erased
-- Data.Sign.Properties._.IsMagma.∙-congʳ
d_'8729''45'cong'691'_1378 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1378 = erased
-- Data.Sign.Properties._.IsMagma.∙-congˡ
d_'8729''45'cong'737'_1380 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1380 = erased
-- Data.Sign.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1384 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1384 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0))
-- Data.Sign.Properties._.IsMedialMagma.isMagma
d_isMagma_1386 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1386 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0)
-- Data.Sign.Properties._.IsMedialMagma.isPartialEquivalence
d_isPartialEquivalence_1388 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1388 ~v0 v1
  = du_isPartialEquivalence_1388 v1
du_isPartialEquivalence_1388 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1388 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsMedialMagma.medial
d_medial_1390 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1390 = erased
-- Data.Sign.Properties._.IsMedialMagma.refl
d_refl_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1392 = erased
-- Data.Sign.Properties._.IsMedialMagma.reflexive
d_reflexive_1394 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1394 = erased
-- Data.Sign.Properties._.IsMedialMagma.setoid
d_setoid_1396 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1396 ~v0 v1 = du_setoid_1396 v1
du_setoid_1396 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0))
-- Data.Sign.Properties._.IsMedialMagma.sym
d_sym_1398 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1398 = erased
-- Data.Sign.Properties._.IsMedialMagma.trans
d_trans_1400 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1400 = erased
-- Data.Sign.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1402 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1402 = erased
-- Data.Sign.Properties._.IsMedialMagma.∙-congʳ
d_'8729''45'cong'691'_1404 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1404 = erased
-- Data.Sign.Properties._.IsMedialMagma.∙-congˡ
d_'8729''45'cong'737'_1406 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1406 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1410 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1410 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.//-congʳ
d_'47''47''45'cong'691'_1412 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1412 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.//-congˡ
d_'47''47''45'cong'737'_1414 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1414 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1416 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1416 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1418 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1418 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1420 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1420 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.identity
d_identity_1422 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))
-- Data.Sign.Properties._.IsMiddleBolLoop.identityʳ
d_identity'691'_1424 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1424 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.identityˡ
d_identity'737'_1426 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1426 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.isEquivalence
d_isEquivalence_1428 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1428 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))))
-- Data.Sign.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1430 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1430 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)
-- Data.Sign.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1432 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1432 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Sign.Properties._.IsMiddleBolLoop.isPartialEquivalence
d_isPartialEquivalence_1434 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1434 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1434 v4
du_isPartialEquivalence_1434 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1434 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Sign.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))
-- Data.Sign.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1438 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1438 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Sign.Properties._.IsMiddleBolLoop.leftDividesʳ
d_leftDivides'691'_1440 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1440 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.leftDividesˡ
d_leftDivides'737'_1442 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1442 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1444 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1444 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.refl
d_refl_1446 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1446 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.reflexive
d_reflexive_1448 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1448 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1450 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Sign.Properties._.IsMiddleBolLoop.rightDividesʳ
d_rightDivides'691'_1452 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1452 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.rightDividesˡ
d_rightDivides'737'_1454 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1454 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.setoid
d_setoid_1456 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1456 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1456 v4
du_setoid_1456 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1456 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2))))
-- Data.Sign.Properties._.IsMiddleBolLoop.sym
d_sym_1458 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1458 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.trans
d_trans_1460 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1460 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1462 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1462 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.∙-congʳ
d_'8729''45'cong'691'_1464 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1464 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.∙-congˡ
d_'8729''45'cong'737'_1466 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1466 = erased
-- Data.Sign.Properties._.IsMonoid.assoc
d_assoc_1470 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1470 = erased
-- Data.Sign.Properties._.IsMonoid.identity
d_identity_1472 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1472 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_698 (coe v0)
-- Data.Sign.Properties._.IsMonoid.identityʳ
d_identity'691'_1474 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1474 = erased
-- Data.Sign.Properties._.IsMonoid.identityˡ
d_identity'737'_1476 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1476 = erased
-- Data.Sign.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)))
-- Data.Sign.Properties._.IsMonoid.isMagma
d_isMagma_1480 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1480 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0))
-- Data.Sign.Properties._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1482 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1482 ~v0 ~v1 v2
  = du_isPartialEquivalence_1482 v2
du_isPartialEquivalence_1482 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1482 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Sign.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1484 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1484 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)
-- Data.Sign.Properties._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1486 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1486 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730 v2
-- Data.Sign.Properties._.IsMonoid.refl
d_refl_1488 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1488 = erased
-- Data.Sign.Properties._.IsMonoid.reflexive
d_reflexive_1490 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1490 = erased
-- Data.Sign.Properties._.IsMonoid.setoid
d_setoid_1492 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1492 ~v0 ~v1 v2 = du_setoid_1492 v2
du_setoid_1492 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1492 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Data.Sign.Properties._.IsMonoid.sym
d_sym_1494 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1494 = erased
-- Data.Sign.Properties._.IsMonoid.trans
d_trans_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1496 = erased
-- Data.Sign.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1498 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1498 = erased
-- Data.Sign.Properties._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1500 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1500 = erased
-- Data.Sign.Properties._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1502 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1502 = erased
-- Data.Sign.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1506 = erased
-- Data.Sign.Properties._.IsMoufangLoop.//-congʳ
d_'47''47''45'cong'691'_1508 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1508 = erased
-- Data.Sign.Properties._.IsMoufangLoop.//-congˡ
d_'47''47''45'cong'737'_1510 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1510 = erased
-- Data.Sign.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1512 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1512 = erased
-- Data.Sign.Properties._.IsMoufangLoop.\\-congʳ
d_'92''92''45'cong'691'_1514 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1514 = erased
-- Data.Sign.Properties._.IsMoufangLoop.\\-congˡ
d_'92''92''45'cong'737'_1516 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1516 = erased
-- Data.Sign.Properties._.IsMoufangLoop.identical
d_identical_1518 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1518 = erased
-- Data.Sign.Properties._.IsMoufangLoop.identity
d_identity_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3140
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)))
-- Data.Sign.Properties._.IsMoufangLoop.identityʳ
d_identity'691'_1522 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1522 = erased
-- Data.Sign.Properties._.IsMoufangLoop.identityˡ
d_identity'737'_1524 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1524 = erased
-- Data.Sign.Properties._.IsMoufangLoop.isEquivalence
d_isEquivalence_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLoop_3140
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)))))
-- Data.Sign.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1528 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126
d_isLeftBolLoop_1528 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)
-- Data.Sign.Properties._.IsMoufangLoop.isLoop
d_isLoop_1530 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1530 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_3140
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))
-- Data.Sign.Properties._.IsMoufangLoop.isMagma
d_isMagma_1532 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3140
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))))
-- Data.Sign.Properties._.IsMoufangLoop.isPartialEquivalence
d_isPartialEquivalence_1534 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1534 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1534 v4
du_isPartialEquivalence_1534 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1534 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Sign.Properties._.IsMoufangLoop.isQuasigroup
d_isQuasigroup_1536 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3140
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)))
-- Data.Sign.Properties._.IsMoufangLoop.leftBol
d_leftBol_1538 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1538 = erased
-- Data.Sign.Properties._.IsMoufangLoop.leftDivides
d_leftDivides_1540 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1540 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3140
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))))
-- Data.Sign.Properties._.IsMoufangLoop.leftDividesʳ
d_leftDivides'691'_1542 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1542 = erased
-- Data.Sign.Properties._.IsMoufangLoop.leftDividesˡ
d_leftDivides'737'_1544 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1544 = erased
-- Data.Sign.Properties._.IsMoufangLoop.refl
d_refl_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1546 = erased
-- Data.Sign.Properties._.IsMoufangLoop.reflexive
d_reflexive_1548 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1548 = erased
-- Data.Sign.Properties._.IsMoufangLoop.rightBol
d_rightBol_1550 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1550 = erased
-- Data.Sign.Properties._.IsMoufangLoop.rightDivides
d_rightDivides_1552 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1552 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3140
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))))
-- Data.Sign.Properties._.IsMoufangLoop.rightDividesʳ
d_rightDivides'691'_1554 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1554 = erased
-- Data.Sign.Properties._.IsMoufangLoop.rightDividesˡ
d_rightDivides'737'_1556 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1556 = erased
-- Data.Sign.Properties._.IsMoufangLoop.setoid
d_setoid_1558 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1558 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1558 v4
du_setoid_1558 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1558 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3)))))
-- Data.Sign.Properties._.IsMoufangLoop.sym
d_sym_1560 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1560 = erased
-- Data.Sign.Properties._.IsMoufangLoop.trans
d_trans_1562 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1562 = erased
-- Data.Sign.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1564 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1564 = erased
-- Data.Sign.Properties._.IsMoufangLoop.∙-congʳ
d_'8729''45'cong'691'_1566 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1566 = erased
-- Data.Sign.Properties._.IsMoufangLoop.∙-congˡ
d_'8729''45'cong'737'_1568 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1568 = erased
-- Data.Sign.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1572 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1572 = erased
-- Data.Sign.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1574 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1574 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1576 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1576 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1578 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1578 = erased
-- Data.Sign.Properties._.IsNearSemiring.*-isMagma
d_'42''45'isMagma_1580 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1580 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282 v3
-- Data.Sign.Properties._.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_1582 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1582 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284 v3
-- Data.Sign.Properties._.IsNearSemiring.assoc
d_assoc_1584 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1584 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1586 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1586 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1588 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1588 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1590 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1590 = erased
-- Data.Sign.Properties._.IsNearSemiring.identity
d_identity_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Sign.Properties._.IsNearSemiring.identityʳ
d_identity'691'_1594 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1594 = erased
-- Data.Sign.Properties._.IsNearSemiring.identityˡ
d_identity'737'_1596 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1596 = erased
-- Data.Sign.Properties._.IsNearSemiring.isMagma
d_isMagma_1598 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0)))
-- Data.Sign.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1600 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0)
-- Data.Sign.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1602 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1602 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Sign.Properties._.IsNearSemiring.isUnitalMagma
d_isUnitalMagma_1604 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1604 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_1604 v3
du_isUnitalMagma_1604 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Sign.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1606 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1606 = erased
-- Data.Sign.Properties._.IsNearSemiring.isEquivalence
d_isEquivalence_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))))
-- Data.Sign.Properties._.IsNearSemiring.isPartialEquivalence
d_isPartialEquivalence_1610 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1610 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1610 v3
du_isPartialEquivalence_1610 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1610 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Sign.Properties._.IsNearSemiring.refl
d_refl_1612 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1612 = erased
-- Data.Sign.Properties._.IsNearSemiring.reflexive
d_reflexive_1614 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1614 = erased
-- Data.Sign.Properties._.IsNearSemiring.setoid
d_setoid_1616 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1616 ~v0 ~v1 ~v2 v3 = du_setoid_1616 v3
du_setoid_1616 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1616 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Sign.Properties._.IsNearSemiring.sym
d_sym_1618 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1618 = erased
-- Data.Sign.Properties._.IsNearSemiring.trans
d_trans_1620 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1620 = erased
-- Data.Sign.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1622 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1622 = erased
-- Data.Sign.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1626 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1626 = erased
-- Data.Sign.Properties._.IsNearring.*-cong
d_'42''45'cong_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1628 = erased
-- Data.Sign.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1630 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1630 = erased
-- Data.Sign.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1632 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1632 = erased
-- Data.Sign.Properties._.IsNearring.*-identity
d_'42''45'identity_1634 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1634 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2228
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Sign.Properties._.IsNearring.identityʳ
d_identity'691'_1636 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1636 = erased
-- Data.Sign.Properties._.IsNearring.identityˡ
d_identity'737'_1638 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1638 = erased
-- Data.Sign.Properties._.IsNearring.*-isMagma
d_'42''45'isMagma_1640 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1640 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1640 v5
du_'42''45'isMagma_1640 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_1640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2282
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Sign.Properties._.IsNearring.*-isMonoid
d_'42''45'isMonoid_1642 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1642 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1642 v5
du_'42''45'isMonoid_1642 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_1642 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Sign.Properties._.IsNearring.*-isSemigroup
d_'42''45'isSemigroup_1644 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1644 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1644 v5
du_'42''45'isSemigroup_1644 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_1644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2284
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Sign.Properties._.IsNearring.assoc
d_assoc_1646 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1646 = erased
-- Data.Sign.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1648 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1648 = erased
-- Data.Sign.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1650 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1650 = erased
-- Data.Sign.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1652 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1652 = erased
-- Data.Sign.Properties._.IsNearring.identity
d_identity_1654 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1654 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))
-- Data.Sign.Properties._.IsNearring.identityʳ
d_identity'691'_1656 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1656 = erased
-- Data.Sign.Properties._.IsNearring.identityˡ
d_identity'737'_1658 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1658 = erased
-- Data.Sign.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1660 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1660 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2580 (coe v0)
-- Data.Sign.Properties._.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_1662 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_1662 = erased
-- Data.Sign.Properties._.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_1664 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_1664 = erased
-- Data.Sign.Properties._.IsNearring.isMagma
d_isMagma_1666 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
            (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))))
-- Data.Sign.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1668 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Sign.Properties._.IsNearring.isSemigroup
d_isSemigroup_1670 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1670 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))
-- Data.Sign.Properties._.IsNearring.isUnitalMagma
d_isUnitalMagma_1672 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1672 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1672 v5
du_isUnitalMagma_1672 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1672 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v1)))
-- Data.Sign.Properties._.IsNearring.distrib
d_distrib_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1674 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2230
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Sign.Properties._.IsNearring.distribʳ
d_distrib'691'_1676 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1676 = erased
-- Data.Sign.Properties._.IsNearring.distribˡ
d_distrib'737'_1678 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1678 = erased
-- Data.Sign.Properties._.IsNearring.identityʳ
d_identity'691'_1680 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1680 = erased
-- Data.Sign.Properties._.IsNearring.identityˡ
d_identity'737'_1682 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1682 = erased
-- Data.Sign.Properties._.IsNearring.isEquivalence
d_isEquivalence_1684 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1684 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))))
-- Data.Sign.Properties._.IsNearring.isPartialEquivalence
d_isPartialEquivalence_1686 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1686 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1686 v5
du_isPartialEquivalence_1686 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1686 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Sign.Properties._.IsNearring.isQuasiring
d_isQuasiring_1688 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200
d_isQuasiring_1688 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)
-- Data.Sign.Properties._.IsNearring.refl
d_refl_1690 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1690 = erased
-- Data.Sign.Properties._.IsNearring.reflexive
d_reflexive_1692 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1692 = erased
-- Data.Sign.Properties._.IsNearring.setoid
d_setoid_1694 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1694 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1694 v5
du_setoid_1694 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1694 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Sign.Properties._.IsNearring.sym
d_sym_1696 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1696 = erased
-- Data.Sign.Properties._.IsNearring.trans
d_trans_1698 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1698 = erased
-- Data.Sign.Properties._.IsNearring.zero
d_zero_1700 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1700 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2232
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Sign.Properties._.IsNearring.zeroʳ
d_zero'691'_1702 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1702 = erased
-- Data.Sign.Properties._.IsNearring.zeroˡ
d_zero'737'_1704 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1704 = erased
-- Data.Sign.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_1706 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1706 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing._//_
d__'47''47'__1710 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__1710 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__1710 v0 v2
du__'47''47'__1710 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__1710 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_1712 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1712 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_1714 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1714 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_1716 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1716 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_1718 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2456 (coe v0)
-- Data.Sign.Properties._.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_1720 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_1720 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_1722 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_1722 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_1724 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1724 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2536 v5
-- Data.Sign.Properties._.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_1726 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_'42''45'isUnitalMagma_1726 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2542 v5
-- Data.Sign.Properties._.IsNonAssociativeRing.assoc
d_assoc_1728 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1728 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.comm
d_comm_1730 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1730 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_1732 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1732 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_1734 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1734 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_1736 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1736 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.identity
d_identity_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
               (coe v0))))
-- Data.Sign.Properties._.IsNonAssociativeRing.identityʳ
d_identity'691'_1740 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1740 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.identityˡ
d_identity'737'_1742 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1742 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1744 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_1744 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
      (coe v0)
-- Data.Sign.Properties._.IsNonAssociativeRing.isCommutativeMagma
d_isCommutativeMagma_1746 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1746 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_1746 v5
du_isCommutativeMagma_1746 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1746 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe v2))))
-- Data.Sign.Properties._.IsNonAssociativeRing.isCommutativeMonoid
d_isCommutativeMonoid_1748 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_1748 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_1748 v5
du_isCommutativeMonoid_1748 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_1748 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
         (coe v0))
-- Data.Sign.Properties._.IsNonAssociativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_1750 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1750 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_1750 v5
du_isCommutativeSemigroup_1750 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1750 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
            (coe v1)))
-- Data.Sign.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_1752 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_1752 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
         (coe v0))
-- Data.Sign.Properties._.IsNonAssociativeRing.isInvertibleMagma
d_isInvertibleMagma_1754 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_1754 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_1754 v5
du_isInvertibleMagma_1754 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_1754 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Sign.Properties._.IsNonAssociativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1756 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_1756 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_1756 v5
du_isInvertibleUnitalMagma_1756 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_1756 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Sign.Properties._.IsNonAssociativeRing.isMagma
d_isMagma_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
                  (coe v0)))))
-- Data.Sign.Properties._.IsNonAssociativeRing.isMonoid
d_isMonoid_1760 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1760 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
            (coe v0)))
-- Data.Sign.Properties._.IsNonAssociativeRing.isSemigroup
d_isSemigroup_1762 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1762 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
               (coe v0))))
-- Data.Sign.Properties._.IsNonAssociativeRing.isUnitalMagma
d_isUnitalMagma_1764 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1764 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1764 v5
du_isUnitalMagma_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1764 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2))))
-- Data.Sign.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_1766 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1766 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.inverse
d_inverse_1768 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1768 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
            (coe v0)))
-- Data.Sign.Properties._.IsNonAssociativeRing.inverseʳ
d_inverse'691'_1770 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1770 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.inverseˡ
d_inverse'737'_1772 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1772 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.distrib
d_distrib_1774 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1774 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2458 (coe v0)
-- Data.Sign.Properties._.IsNonAssociativeRing.distribʳ
d_distrib'691'_1776 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1776 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.distribˡ
d_distrib'737'_1778 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1778 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.isEquivalence
d_isEquivalence_1780 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1780 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
                     (coe v0))))))
-- Data.Sign.Properties._.IsNonAssociativeRing.isPartialEquivalence
d_isPartialEquivalence_1782 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1782 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1782 v5
du_isPartialEquivalence_1782 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1782 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5)))))))
-- Data.Sign.Properties._.IsNonAssociativeRing.refl
d_refl_1784 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1784 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.reflexive
d_reflexive_1786 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1786 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.setoid
d_setoid_1788 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1788 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1788 v5
du_setoid_1788 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1788 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Data.Sign.Properties._.IsNonAssociativeRing.sym
d_sym_1790 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1790 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.trans
d_trans_1792 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1792 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1794 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_1794 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1796 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_1796 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.zero
d_zero_1798 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1798 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2460 (coe v0)
-- Data.Sign.Properties._.IsNonAssociativeRing.zeroʳ
d_zero'691'_1800 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1800 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.zeroˡ
d_zero'737'_1802 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1802 = erased
-- Data.Sign.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_1806 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1806 = erased
-- Data.Sign.Properties._.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_1808 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1808 = erased
-- Data.Sign.Properties._.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_1810 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1810 = erased
-- Data.Sign.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_1812 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1812 = erased
-- Data.Sign.Properties._.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_1814 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1814 = erased
-- Data.Sign.Properties._.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_1816 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1816 = erased
-- Data.Sign.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0))
-- Data.Sign.Properties._.IsQuasigroup.isMagma
d_isMagma_1820 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1820 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0)
-- Data.Sign.Properties._.IsQuasigroup.isPartialEquivalence
d_isPartialEquivalence_1822 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1822 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1822 v3
du_isPartialEquivalence_1822 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1822 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsQuasigroup.leftDivides
d_leftDivides_1824 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1824 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_2990 (coe v0)
-- Data.Sign.Properties._.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_1826 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1826 = erased
-- Data.Sign.Properties._.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_1828 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1828 = erased
-- Data.Sign.Properties._.IsQuasigroup.refl
d_refl_1830 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1830 = erased
-- Data.Sign.Properties._.IsQuasigroup.reflexive
d_reflexive_1832 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1832 = erased
-- Data.Sign.Properties._.IsQuasigroup.rightDivides
d_rightDivides_1834 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1834 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_2992 (coe v0)
-- Data.Sign.Properties._.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_1836 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1836 = erased
-- Data.Sign.Properties._.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_1838 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1838 = erased
-- Data.Sign.Properties._.IsQuasigroup.setoid
d_setoid_1840 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1840 ~v0 ~v1 ~v2 v3 = du_setoid_1840 v3
du_setoid_1840 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1840 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0))
-- Data.Sign.Properties._.IsQuasigroup.sym
d_sym_1842 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1842 = erased
-- Data.Sign.Properties._.IsQuasigroup.trans
d_trans_1844 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1844 = erased
-- Data.Sign.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_1846 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1846 = erased
-- Data.Sign.Properties._.IsQuasigroup.∙-congʳ
d_'8729''45'cong'691'_1848 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1848 = erased
-- Data.Sign.Properties._.IsQuasigroup.∙-congˡ
d_'8729''45'cong'737'_1850 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1850 = erased
-- Data.Sign.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_1854 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1854 = erased
-- Data.Sign.Properties._.IsQuasiring.*-cong
d_'42''45'cong_1856 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1856 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_1858 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1858 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_1860 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1860 = erased
-- Data.Sign.Properties._.IsQuasiring.*-identity
d_'42''45'identity_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1862 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2228 (coe v0)
-- Data.Sign.Properties._.IsQuasiring.identityʳ
d_identity'691'_1864 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1864 = erased
-- Data.Sign.Properties._.IsQuasiring.identityˡ
d_identity'737'_1866 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1866 = erased
-- Data.Sign.Properties._.IsQuasiring.*-isMagma
d_'42''45'isMagma_1868 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1868 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2282 v4
-- Data.Sign.Properties._.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_1870 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1870 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286 v4
-- Data.Sign.Properties._.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_1872 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1872 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2284 v4
-- Data.Sign.Properties._.IsQuasiring.assoc
d_assoc_1874 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1874 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_1876 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1876 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_1878 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1878 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_1880 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1880 = erased
-- Data.Sign.Properties._.IsQuasiring.identity
d_identity_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1882 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Sign.Properties._.IsQuasiring.identityʳ
d_identity'691'_1884 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1884 = erased
-- Data.Sign.Properties._.IsQuasiring.identityˡ
d_identity'737'_1886 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1886 = erased
-- Data.Sign.Properties._.IsQuasiring.isMagma
d_isMagma_1888 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1888 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0)))
-- Data.Sign.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_1890 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0)
-- Data.Sign.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_1892 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1892 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Sign.Properties._.IsQuasiring.isUnitalMagma
d_isUnitalMagma_1894 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1894 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_1894 v4
du_isUnitalMagma_1894 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1894 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Sign.Properties._.IsQuasiring.distrib
d_distrib_1896 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1896 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2230 (coe v0)
-- Data.Sign.Properties._.IsQuasiring.distribʳ
d_distrib'691'_1898 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1898 = erased
-- Data.Sign.Properties._.IsQuasiring.distribˡ
d_distrib'737'_1900 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1900 = erased
-- Data.Sign.Properties._.IsQuasiring.identityʳ
d_identity'691'_1902 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1902 = erased
-- Data.Sign.Properties._.IsQuasiring.identityˡ
d_identity'737'_1904 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1904 = erased
-- Data.Sign.Properties._.IsQuasiring.isEquivalence
d_isEquivalence_1906 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1906 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))))
-- Data.Sign.Properties._.IsQuasiring.isPartialEquivalence
d_isPartialEquivalence_1908 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1908 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1908 v4
du_isPartialEquivalence_1908 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1908 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Sign.Properties._.IsQuasiring.refl
d_refl_1910 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1910 = erased
-- Data.Sign.Properties._.IsQuasiring.reflexive
d_reflexive_1912 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1912 = erased
-- Data.Sign.Properties._.IsQuasiring.setoid
d_setoid_1914 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1914 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1914 v4
du_setoid_1914 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1914 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Sign.Properties._.IsQuasiring.sym
d_sym_1916 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1916 = erased
-- Data.Sign.Properties._.IsQuasiring.trans
d_trans_1918 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1918 = erased
-- Data.Sign.Properties._.IsQuasiring.zero
d_zero_1920 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1920 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2232 (coe v0)
-- Data.Sign.Properties._.IsQuasiring.zeroʳ
d_zero'691'_1922 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1922 = erased
-- Data.Sign.Properties._.IsQuasiring.zeroˡ
d_zero'737'_1924 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1924 = erased
-- Data.Sign.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_1928 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1928 = erased
-- Data.Sign.Properties._.IsRightBolLoop.//-congʳ
d_'47''47''45'cong'691'_1930 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1930 = erased
-- Data.Sign.Properties._.IsRightBolLoop.//-congˡ
d_'47''47''45'cong'737'_1932 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1932 = erased
-- Data.Sign.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_1934 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1934 = erased
-- Data.Sign.Properties._.IsRightBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1936 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1936 = erased
-- Data.Sign.Properties._.IsRightBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1938 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1938 = erased
-- Data.Sign.Properties._.IsRightBolLoop.identity
d_identity_1940 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))
-- Data.Sign.Properties._.IsRightBolLoop.identityʳ
d_identity'691'_1942 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1942 = erased
-- Data.Sign.Properties._.IsRightBolLoop.identityˡ
d_identity'737'_1944 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1944 = erased
-- Data.Sign.Properties._.IsRightBolLoop.isEquivalence
d_isEquivalence_1946 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))))
-- Data.Sign.Properties._.IsRightBolLoop.isLoop
d_isLoop_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1948 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)
-- Data.Sign.Properties._.IsRightBolLoop.isMagma
d_isMagma_1950 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1950 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Sign.Properties._.IsRightBolLoop.isPartialEquivalence
d_isPartialEquivalence_1952 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1952 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1952 v4
du_isPartialEquivalence_1952 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1952 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Sign.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_1954 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1954 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))
-- Data.Sign.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_1956 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1956 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Sign.Properties._.IsRightBolLoop.leftDividesʳ
d_leftDivides'691'_1958 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1958 = erased
-- Data.Sign.Properties._.IsRightBolLoop.leftDividesˡ
d_leftDivides'737'_1960 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1960 = erased
-- Data.Sign.Properties._.IsRightBolLoop.refl
d_refl_1962 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1962 = erased
-- Data.Sign.Properties._.IsRightBolLoop.reflexive
d_reflexive_1964 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1964 = erased
-- Data.Sign.Properties._.IsRightBolLoop.rightBol
d_rightBol_1966 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1966 = erased
-- Data.Sign.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_1968 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1968 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Sign.Properties._.IsRightBolLoop.rightDividesʳ
d_rightDivides'691'_1970 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1970 = erased
-- Data.Sign.Properties._.IsRightBolLoop.rightDividesˡ
d_rightDivides'737'_1972 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1972 = erased
-- Data.Sign.Properties._.IsRightBolLoop.setoid
d_setoid_1974 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1974 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1974 v4
du_setoid_1974 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1974 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2))))
-- Data.Sign.Properties._.IsRightBolLoop.sym
d_sym_1976 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1976 = erased
-- Data.Sign.Properties._.IsRightBolLoop.trans
d_trans_1978 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1978 = erased
-- Data.Sign.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_1980 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1980 = erased
-- Data.Sign.Properties._.IsRightBolLoop.∙-congʳ
d_'8729''45'cong'691'_1982 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1982 = erased
-- Data.Sign.Properties._.IsRightBolLoop.∙-congˡ
d_'8729''45'cong'737'_1984 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1984 = erased
-- Data.Sign.Properties._.IsRing._//_
d__'47''47'__1988 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__1988 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__1988 v0 v2
du__'47''47'__1988 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__1988 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsRing.*-assoc
d_'42''45'assoc_1990 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1990 = erased
-- Data.Sign.Properties._.IsRing.*-cong
d_'42''45'cong_1992 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1992 = erased
-- Data.Sign.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_1994 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1994 = erased
-- Data.Sign.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_1996 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1996 = erased
-- Data.Sign.Properties._.IsRing.*-identity
d_'42''45'identity_1998 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1998 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700 (coe v0)
-- Data.Sign.Properties._.IsRing.identityʳ
d_identity'691'_2000 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2000 = erased
-- Data.Sign.Properties._.IsRing.identityˡ
d_identity'737'_2002 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2002 = erased
-- Data.Sign.Properties._.IsRing.*-isMagma
d_'42''45'isMagma_2004 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2004 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_2004 v0 v1 v2 v3 v5
du_'42''45'isMagma_2004 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_2004 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Sign.Properties._.IsRing.*-isMonoid
d_'42''45'isMonoid_2006 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2006 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2792 v0 v1 v2
      v3 v5
-- Data.Sign.Properties._.IsRing.*-isSemigroup
d_'42''45'isSemigroup_2008 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2008 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_2008 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_2008 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_2008 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Sign.Properties._.IsRing.assoc
d_assoc_2010 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2010 = erased
-- Data.Sign.Properties._.IsRing.comm
d_comm_2012 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2012 = erased
-- Data.Sign.Properties._.IsRing.∙-cong
d_'8729''45'cong_2014 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2014 = erased
-- Data.Sign.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2016 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2016 = erased
-- Data.Sign.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2018 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2018 = erased
-- Data.Sign.Properties._.IsRing.identity
d_identity_2020 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2020 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_2020 v5
du_identity_2020 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v0))))
-- Data.Sign.Properties._.IsRing.identityʳ
d_identity'691'_2022 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2022 = erased
-- Data.Sign.Properties._.IsRing.identityˡ
d_identity'737'_2024 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2024 = erased
-- Data.Sign.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2026 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2026 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe v0)
-- Data.Sign.Properties._.IsRing.isCommutativeMagma
d_isCommutativeMagma_2028 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2028 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_2028 v5
du_isCommutativeMagma_2028 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2028 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe v3)))))
-- Data.Sign.Properties._.IsRing.isCommutativeMonoid
d_isCommutativeMonoid_2030 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_2030 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_2030 v5
du_isCommutativeMonoid_2030 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_2030 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
            (coe v1)))
-- Data.Sign.Properties._.IsRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2032 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2032 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_2032 v5
du_isCommutativeSemigroup_2032 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2032 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
               (coe v2))))
-- Data.Sign.Properties._.IsRing.isGroup
d_isGroup_2034 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_2034 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_2034 v5
du_isGroup_2034 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
du_isGroup_2034 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
         (coe v0))
-- Data.Sign.Properties._.IsRing.isInvertibleMagma
d_isInvertibleMagma_2036 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_2036 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_2036 v5
du_isInvertibleMagma_2036 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_2036 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2))))
-- Data.Sign.Properties._.IsRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2038 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_2038 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_2038 v5
du_isInvertibleUnitalMagma_2038 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_2038 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2))))
-- Data.Sign.Properties._.IsRing.isMagma
d_isMagma_2040 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2040 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_2040 v5
du_isMagma_2040 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_2040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                  (coe v0)))))
-- Data.Sign.Properties._.IsRing.isMonoid
d_isMonoid_2042 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2042 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_2042 v5
du_isMonoid_2042 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_isMonoid_2042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
            (coe v0)))
-- Data.Sign.Properties._.IsRing.isSemigroup
d_isSemigroup_2044 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2044 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_2044 v5
du_isSemigroup_2044 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_2044 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v0))))
-- Data.Sign.Properties._.IsRing.isUnitalMagma
d_isUnitalMagma_2046 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2046 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2046 v5
du_isUnitalMagma_2046 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2046 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v3)))))
-- Data.Sign.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2048 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2048 = erased
-- Data.Sign.Properties._.IsRing.inverse
d_inverse_2050 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2050 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_2050 v5
du_inverse_2050 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
            (coe v0)))
-- Data.Sign.Properties._.IsRing.inverseʳ
d_inverse'691'_2052 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2052 = erased
-- Data.Sign.Properties._.IsRing.inverseˡ
d_inverse'737'_2054 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2054 = erased
-- Data.Sign.Properties._.IsRing.distrib
d_distrib_2056 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2056 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2702 (coe v0)
-- Data.Sign.Properties._.IsRing.distribʳ
d_distrib'691'_2058 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2058 = erased
-- Data.Sign.Properties._.IsRing.distribˡ
d_distrib'737'_2060 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2060 = erased
-- Data.Sign.Properties._.IsRing.isEquivalence
d_isEquivalence_2062 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2062 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_2062 v5
du_isEquivalence_2062 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2062 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                     (coe v0))))))
-- Data.Sign.Properties._.IsRing.isNearSemiring
d_isNearSemiring_2064 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2064 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_2064 v0 v1 v2 v3 v5
du_isNearSemiring_2064 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_2064 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v4))
-- Data.Sign.Properties._.IsRing.isPartialEquivalence
d_isPartialEquivalence_2066 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2066 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2066 v5
du_isPartialEquivalence_2066 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2066 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v6))))))))
-- Data.Sign.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2068 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
d_isRingWithoutOne_2068 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 v5
-- Data.Sign.Properties._.IsRing.isSemiring
d_isSemiring_2070 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_2070 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 v0 v1 v2 v3 v5
-- Data.Sign.Properties._.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2072 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2072 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2800
      v5
-- Data.Sign.Properties._.IsRing.isSemiringWithoutOne
d_isSemiringWithoutOne_2074 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_2074 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_2074 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_2074 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_2074 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsRing.refl
d_refl_2076 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2076 = erased
-- Data.Sign.Properties._.IsRing.reflexive
d_reflexive_2078 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2078 = erased
-- Data.Sign.Properties._.IsRing.setoid
d_setoid_2080 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2080 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2080 v5
du_setoid_2080 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2080 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_200
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))))))
-- Data.Sign.Properties._.IsRing.sym
d_sym_2082 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2082 = erased
-- Data.Sign.Properties._.IsRing.trans
d_trans_2084 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2084 = erased
-- Data.Sign.Properties._.IsRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2086 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2086 = erased
-- Data.Sign.Properties._.IsRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2088 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2088 = erased
-- Data.Sign.Properties._.IsRing.zero
d_zero_2090 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2090 v0 v1 v2 v3 ~v4 v5 = du_zero_2090 v0 v1 v2 v3 v5
du_zero_2090 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2090 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero_2406 (coe v0) (coe v1)
      (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v4))
-- Data.Sign.Properties._.IsRing.zeroʳ
d_zero'691'_2092 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2092 = erased
-- Data.Sign.Properties._.IsRing.zeroˡ
d_zero'737'_2094 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2094 = erased
-- Data.Sign.Properties._.IsRingWithoutOne._//_
d__'47''47'__2098 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__2098 v0 ~v1 v2 ~v3 ~v4 = du__'47''47'__2098 v0 v2
du__'47''47'__2098 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__2098 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2100 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2100 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2102 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2102 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2104 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2104 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2106 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2106 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.*-isMagma
d_'42''45'isMagma_2108 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2108 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsRingWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2110 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2110 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsRingWithoutOne.assoc
d_assoc_2112 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2112 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.comm
d_comm_2114 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2114 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2116 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2116 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2118 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2118 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2120 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2120 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.identity
d_identity_2122 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
               (coe v0))))
-- Data.Sign.Properties._.IsRingWithoutOne.identityʳ
d_identity'691'_2124 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2124 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.identityˡ
d_identity'737'_2126 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2126 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2128 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
      (coe v0)
-- Data.Sign.Properties._.IsRingWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2130 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2130 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2130 v4
du_isCommutativeMagma_2130 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2130 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe v2))))
-- Data.Sign.Properties._.IsRingWithoutOne.isCommutativeMonoid
d_isCommutativeMonoid_2132 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_2132 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMonoid_2132 v4
du_isCommutativeMonoid_2132 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_2132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
         (coe v0))
-- Data.Sign.Properties._.IsRingWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2134 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2134 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2134 v4
du_isCommutativeSemigroup_2134 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2134 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
            (coe v1)))
-- Data.Sign.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2136 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_2136 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
         (coe v0))
-- Data.Sign.Properties._.IsRingWithoutOne.isInvertibleMagma
d_isInvertibleMagma_2138 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_2138 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleMagma_2138 v4
du_isInvertibleMagma_2138 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_2138 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Sign.Properties._.IsRingWithoutOne.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2140 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_2140 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleUnitalMagma_2140 v4
du_isInvertibleUnitalMagma_2140 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_2140 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Sign.Properties._.IsRingWithoutOne.isMagma
d_isMagma_2142 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2142 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                  (coe v0)))))
-- Data.Sign.Properties._.IsRingWithoutOne.isMonoid
d_isMonoid_2144 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
            (coe v0)))
-- Data.Sign.Properties._.IsRingWithoutOne.isSemigroup
d_isSemigroup_2146 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
               (coe v0))))
-- Data.Sign.Properties._.IsRingWithoutOne.isUnitalMagma
d_isUnitalMagma_2148 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2148 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2148 v4
du_isUnitalMagma_2148 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2148 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2))))
-- Data.Sign.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2150 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2150 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.inverse
d_inverse_2152 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
            (coe v0)))
-- Data.Sign.Properties._.IsRingWithoutOne.inverseʳ
d_inverse'691'_2154 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2154 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.inverseˡ
d_inverse'737'_2156 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2156 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.distrib
d_distrib_2158 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2158 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2330 (coe v0)
-- Data.Sign.Properties._.IsRingWithoutOne.distribʳ
d_distrib'691'_2160 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2160 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.distribˡ
d_distrib'737'_2162 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2162 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.isEquivalence
d_isEquivalence_2164 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2164 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                     (coe v0))))))
-- Data.Sign.Properties._.IsRingWithoutOne.isNearSemiring
d_isNearSemiring_2166 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2166
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408
-- Data.Sign.Properties._.IsRingWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2168 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2168 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2168 v4
du_isPartialEquivalence_2168 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2168 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5)))))))
-- Data.Sign.Properties._.IsRingWithoutOne.refl
d_refl_2170 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2170 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.reflexive
d_reflexive_2172 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2172 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.setoid
d_setoid_2174 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2174 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2174 v4
du_setoid_2174 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2174 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Data.Sign.Properties._.IsRingWithoutOne.sym
d_sym_2176 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2176 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.trans
d_trans_2178 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2178 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2180 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2180 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2182 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2182 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.zero
d_zero_2184 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2184 = coe MAlonzo.Code.Algebra.Structures.du_zero_2406
-- Data.Sign.Properties._.IsRingWithoutOne.zeroʳ
d_zero'691'_2186 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2186 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.zeroˡ
d_zero'737'_2188 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2188 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2192 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0))
-- Data.Sign.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2194 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2194 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0)
-- Data.Sign.Properties._.IsSelectiveMagma.isPartialEquivalence
d_isPartialEquivalence_2196 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2196 ~v0 v1
  = du_isPartialEquivalence_2196 v1
du_isPartialEquivalence_2196 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2196 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsSelectiveMagma.refl
d_refl_2198 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2198 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.reflexive
d_reflexive_2200 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2200 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.sel
d_sel_2202 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2202 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_446 (coe v0)
-- Data.Sign.Properties._.IsSelectiveMagma.setoid
d_setoid_2204 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2204 ~v0 v1 = du_setoid_2204 v1
du_setoid_2204 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2204 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0))
-- Data.Sign.Properties._.IsSelectiveMagma.sym
d_sym_2206 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2206 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.trans
d_trans_2208 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2208 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2210 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2210 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.∙-congʳ
d_'8729''45'cong'691'_2212 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2212 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.∙-congˡ
d_'8729''45'cong'737'_2214 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2214 = erased
-- Data.Sign.Properties._.IsSemigroup.assoc
d_assoc_2218 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2218 = erased
-- Data.Sign.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2220 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2220 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0))
-- Data.Sign.Properties._.IsSemigroup.isMagma
d_isMagma_2222 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2222 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Data.Sign.Properties._.IsSemigroup.isPartialEquivalence
d_isPartialEquivalence_2224 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2224 ~v0 v1
  = du_isPartialEquivalence_2224 v1
du_isPartialEquivalence_2224 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2224 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsSemigroup.refl
d_refl_2226 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2226 = erased
-- Data.Sign.Properties._.IsSemigroup.reflexive
d_reflexive_2228 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2228 = erased
-- Data.Sign.Properties._.IsSemigroup.setoid
d_setoid_2230 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2230 ~v0 v1 = du_setoid_2230 v1
du_setoid_2230 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0))
-- Data.Sign.Properties._.IsSemigroup.sym
d_sym_2232 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2232 = erased
-- Data.Sign.Properties._.IsSemigroup.trans
d_trans_2234 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2234 = erased
-- Data.Sign.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2236 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2236 = erased
-- Data.Sign.Properties._.IsSemigroup.∙-congʳ
d_'8729''45'cong'691'_2238 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2238 = erased
-- Data.Sign.Properties._.IsSemigroup.∙-congˡ
d_'8729''45'cong'737'_2240 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2240 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2244 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0))
-- Data.Sign.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2246 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2246 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0)
-- Data.Sign.Properties._.IsSemimedialMagma.isPartialEquivalence
d_isPartialEquivalence_2248 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2248 ~v0 v1
  = du_isPartialEquivalence_2248 v1
du_isPartialEquivalence_2248 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2248 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsSemimedialMagma.refl
d_refl_2250 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2250 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.reflexive
d_reflexive_2252 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2252 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2254 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2254 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_406 (coe v0)
-- Data.Sign.Properties._.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_2256 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_2256 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_2258 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_2258 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.setoid
d_setoid_2260 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2260 ~v0 v1 = du_setoid_2260 v1
du_setoid_2260 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0))
-- Data.Sign.Properties._.IsSemimedialMagma.sym
d_sym_2262 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2262 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.trans
d_trans_2264 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2264 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2266 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2266 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.∙-congʳ
d_'8729''45'cong'691'_2268 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2268 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.∙-congˡ
d_'8729''45'cong'737'_2270 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2270 = erased
-- Data.Sign.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2274 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2274 = erased
-- Data.Sign.Properties._.IsSemiring.*-cong
d_'42''45'cong_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2276 = erased
-- Data.Sign.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2278 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2278 = erased
-- Data.Sign.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2280 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2280 = erased
-- Data.Sign.Properties._.IsSemiring.*-identity
d_'42''45'identity_2282 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2282 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.identityʳ
d_identity'691'_2284 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2284 = erased
-- Data.Sign.Properties._.IsSemiring.identityˡ
d_identity'737'_2286 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2286 = erased
-- Data.Sign.Properties._.IsSemiring.*-isMagma
d_'42''45'isMagma_2288 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2288 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_2288 v4
du_'42''45'isMagma_2288 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_2288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.*-isMonoid
d_'42''45'isMonoid_2290 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2290 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_2290 v4
du_'42''45'isMonoid_2290 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_2290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.*-isSemigroup
d_'42''45'isSemigroup_2292 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2292 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_2292 v4
du_'42''45'isSemigroup_2292 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_2292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.assoc
d_assoc_2294 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2294 = erased
-- Data.Sign.Properties._.IsSemiring.comm
d_comm_2296 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2296 = erased
-- Data.Sign.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2298 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2298 = erased
-- Data.Sign.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2300 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2300 = erased
-- Data.Sign.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2302 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2302 = erased
-- Data.Sign.Properties._.IsSemiring.identity
d_identity_2304 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2304 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v0))))
-- Data.Sign.Properties._.IsSemiring.identityʳ
d_identity'691'_2306 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2306 = erased
-- Data.Sign.Properties._.IsSemiring.identityˡ
d_identity'737'_2308 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2308 = erased
-- Data.Sign.Properties._.IsSemiring.isCommutativeMagma
d_isCommutativeMagma_2310 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2310 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2310 v4
du_isCommutativeMagma_2310 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2310 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe v2))))
-- Data.Sign.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2312 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2312 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_2314 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2314 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2314 v4
du_isCommutativeSemigroup_2314 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2314 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe v1)))
-- Data.Sign.Properties._.IsSemiring.isMagma
d_isMagma_2316 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v0)))))
-- Data.Sign.Properties._.IsSemiring.isMonoid
d_isMonoid_2318 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v0)))
-- Data.Sign.Properties._.IsSemiring.isSemigroup
d_isSemigroup_2320 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v0))))
-- Data.Sign.Properties._.IsSemiring.isUnitalMagma
d_isUnitalMagma_2322 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2322 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2322 v4
du_isUnitalMagma_2322 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2322 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2))))
-- Data.Sign.Properties._.IsSemiring.distrib
d_distrib_2324 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.distribʳ
d_distrib'691'_2326 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2326 = erased
-- Data.Sign.Properties._.IsSemiring.distribˡ
d_distrib'737'_2328 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2328 = erased
-- Data.Sign.Properties._.IsSemiring.isEquivalence
d_isEquivalence_2330 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2330 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe v0))))))
-- Data.Sign.Properties._.IsSemiring.isNearSemiring
d_isNearSemiring_2332 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2332 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_2332 v4
du_isNearSemiring_2332 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_2332 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.isPartialEquivalence
d_isPartialEquivalence_2334 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2334 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2334 v4
du_isPartialEquivalence_2334 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2334 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5)))))))
-- Data.Sign.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2336 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2336 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe v0)
-- Data.Sign.Properties._.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_2338 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_2338 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680 v4
-- Data.Sign.Properties._.IsSemiring.refl
d_refl_2340 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2340 = erased
-- Data.Sign.Properties._.IsSemiring.reflexive
d_reflexive_2342 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2342 = erased
-- Data.Sign.Properties._.IsSemiring.setoid
d_setoid_2344 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2344 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2344 v4
du_setoid_2344 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2344 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Data.Sign.Properties._.IsSemiring.sym
d_sym_2346 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2346 = erased
-- Data.Sign.Properties._.IsSemiring.trans
d_trans_2348 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2348 = erased
-- Data.Sign.Properties._.IsSemiring.zero
d_zero_2350 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2350 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1606 (coe v0)
-- Data.Sign.Properties._.IsSemiring.zeroʳ
d_zero'691'_2352 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2352 = erased
-- Data.Sign.Properties._.IsSemiring.zeroˡ
d_zero'737'_2354 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2354 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2358 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2358 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2360 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2362 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2362 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2364 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2364 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2366 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514 (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2368 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2368 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2370 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2370 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_2372 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2372 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566 v4
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_2374 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2374 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570 v4
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_2376 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2376 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568 v4
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2378 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2378 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2380 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2380 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2382 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2382 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2384 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2384 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2386 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2386 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identity
d_identity_2388 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe v0)))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2390 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2390 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2392 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2392 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeMagma
d_isCommutativeMagma_2394 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2394 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2394 v4
du_isCommutativeMagma_2394 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2394 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2396 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeSemigroup
d_isCommutativeSemigroup_2398 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2398 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2398 v4
du_isCommutativeSemigroup_2398 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe v0))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
d_isMagma_2400 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe v0))))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2402 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe v0))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
d_isSemigroup_2404 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2404 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe v0)))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isUnitalMagma
d_isUnitalMagma_2406 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2406 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2406 v4
du_isUnitalMagma_2406 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2406 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1)))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2408 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2408 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1516 (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_2410 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2410 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_2412 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2412 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
d_isEquivalence_2414 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe v0)))))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isPartialEquivalence
d_isPartialEquivalence_2416 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2416 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2416 v4
du_isPartialEquivalence_2416 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2416 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.refl
d_refl_2418 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2418 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.reflexive
d_reflexive_2420 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2420 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.setoid
d_setoid_2422 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2422 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2422 v4
du_setoid_2422 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2422 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2424 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2424 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.trans
d_trans_2426 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2426 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2430 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2430 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2432 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2432 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2434 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2434 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2436 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2436 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_2438 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2438 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1366 v3
-- Data.Sign.Properties._.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2440 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2440 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1368 v3
-- Data.Sign.Properties._.IsSemiringWithoutOne.assoc
d_assoc_2442 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2442 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.comm
d_comm_2444 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2444 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-cong
d_'8729''45'cong_2446 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2446 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2448 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2448 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2450 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2450 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.identity
d_identity_2452 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2452 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
            (coe v0)))
-- Data.Sign.Properties._.IsSemiringWithoutOne.identityʳ
d_identity'691'_2454 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2454 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.identityˡ
d_identity'737'_2456 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2456 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2458 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2458 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_2458 v3
du_isCommutativeMagma_2458 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2458 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Sign.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2460 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
      (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2462 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2462 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_2462 v3
du_isCommutativeSemigroup_2462 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe v0))
-- Data.Sign.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2464 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2464 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe v0))
-- Data.Sign.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2466 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2466 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1322 (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutOne.distribʳ
d_distrib'691'_2468 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2468 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.distribˡ
d_distrib'737'_2470 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2470 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.isEquivalence
d_isEquivalence_2472 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                  (coe v0)))))
-- Data.Sign.Properties._.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_2474 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2474 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384 v3
-- Data.Sign.Properties._.IsSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2476 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2476 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2476 v3
du_isPartialEquivalence_2476 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2476 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                     (coe v0))))))
-- Data.Sign.Properties._.IsSemiringWithoutOne.refl
d_refl_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2478 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.reflexive
d_reflexive_2480 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2480 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.setoid
d_setoid_2482 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2482 ~v0 ~v1 ~v2 v3 = du_setoid_2482 v3
du_setoid_2482 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2482 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Sign.Properties._.IsSemiringWithoutOne.sym
d_sym_2484 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2484 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.trans
d_trans_2486 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2486 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.zero
d_zero_2488 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2488 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1324 (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutOne.zeroʳ
d_zero'691'_2490 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2490 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.zeroˡ
d_zero'737'_2492 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2492 = erased
-- Data.Sign.Properties._.IsSuccessorSet.isEquivalence
d_isEquivalence_2496 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2496 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_156 (coe v0)
-- Data.Sign.Properties._.IsSuccessorSet.isPartialEquivalence
d_isPartialEquivalence_2498 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2498 ~v0 ~v1 v2
  = du_isPartialEquivalence_2498 v2
du_isPartialEquivalence_2498 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2498 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_156 (coe v0))
-- Data.Sign.Properties._.IsSuccessorSet.refl
d_refl_2500 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2500 = erased
-- Data.Sign.Properties._.IsSuccessorSet.reflexive
d_reflexive_2502 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2502 = erased
-- Data.Sign.Properties._.IsSuccessorSet.setoid
d_setoid_2504 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2504 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_172 v2
-- Data.Sign.Properties._.IsSuccessorSet.suc#-cong
d_suc'35''45'cong_2506 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'35''45'cong_2506 = erased
-- Data.Sign.Properties._.IsSuccessorSet.sym
d_sym_2508 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2508 = erased
-- Data.Sign.Properties._.IsSuccessorSet.trans
d_trans_2510 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2510 = erased
-- Data.Sign.Properties._.IsUnitalMagma.identity
d_identity_2514 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2514 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_654 (coe v0)
-- Data.Sign.Properties._.IsUnitalMagma.identityʳ
d_identity'691'_2516 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2516 = erased
-- Data.Sign.Properties._.IsUnitalMagma.identityˡ
d_identity'737'_2518 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2518 = erased
-- Data.Sign.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2520 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0))
-- Data.Sign.Properties._.IsUnitalMagma.isMagma
d_isMagma_2522 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2522 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0)
-- Data.Sign.Properties._.IsUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_2524 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2524 ~v0 ~v1 v2
  = du_isPartialEquivalence_2524 v2
du_isPartialEquivalence_2524 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2524 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Sign.Properties._.IsUnitalMagma.refl
d_refl_2526 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2526 = erased
-- Data.Sign.Properties._.IsUnitalMagma.reflexive
d_reflexive_2528 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2528 = erased
-- Data.Sign.Properties._.IsUnitalMagma.setoid
d_setoid_2530 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2530 ~v0 ~v1 v2 = du_setoid_2530 v2
du_setoid_2530 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2530 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0))
-- Data.Sign.Properties._.IsUnitalMagma.sym
d_sym_2532 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2532 = erased
-- Data.Sign.Properties._.IsUnitalMagma.trans
d_trans_2534 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2534 = erased
-- Data.Sign.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2536 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2536 = erased
-- Data.Sign.Properties._.IsUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_2538 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2538 = erased
-- Data.Sign.Properties._.IsUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_2540 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2540 = erased
-- Data.Sign.Properties._._Absorbs_
d__Absorbs__2544 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__Absorbs__2544 = erased
-- Data.Sign.Properties._._DistributesOver_
d__DistributesOver__2546 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__DistributesOver__2546 = erased
-- Data.Sign.Properties._._DistributesOverʳ_
d__DistributesOver'691'__2548 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__DistributesOver'691'__2548 = erased
-- Data.Sign.Properties._._DistributesOverˡ_
d__DistributesOver'737'__2550 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__DistributesOver'737'__2550 = erased
-- Data.Sign.Properties._._IdempotentOn_
d__IdempotentOn__2552 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> ()
d__IdempotentOn__2552 = erased
-- Data.Sign.Properties._._MiddleFourExchange_
d__MiddleFourExchange__2554 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__MiddleFourExchange__2554 = erased
-- Data.Sign.Properties._.Absorptive
d_Absorptive_2556 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Absorptive_2556 = erased
-- Data.Sign.Properties._.AlmostCancellative
d_AlmostCancellative_2558 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_AlmostCancellative_2558 = erased
-- Data.Sign.Properties._.AlmostLeftCancellative
d_AlmostLeftCancellative_2560 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_AlmostLeftCancellative_2560 = erased
-- Data.Sign.Properties._.AlmostRightCancellative
d_AlmostRightCancellative_2562 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_AlmostRightCancellative_2562 = erased
-- Data.Sign.Properties._.Alternative
d_Alternative_2564 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Alternative_2564 = erased
-- Data.Sign.Properties._.Associative
d_Associative_2566 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Associative_2566 = erased
-- Data.Sign.Properties._.Cancellative
d_Cancellative_2568 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Cancellative_2568 = erased
-- Data.Sign.Properties._.Commutative
d_Commutative_2570 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Commutative_2570 = erased
-- Data.Sign.Properties._.Congruent₁
d_Congruent'8321'_2572 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Congruent'8321'_2572 = erased
-- Data.Sign.Properties._.Congruent₂
d_Congruent'8322'_2574 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Congruent'8322'_2574 = erased
-- Data.Sign.Properties._.Conical
d_Conical_2576 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Conical_2576 = erased
-- Data.Sign.Properties._.Flexible
d_Flexible_2578 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Flexible_2578 = erased
-- Data.Sign.Properties._.Idempotent
d_Idempotent_2580 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Idempotent_2580 = erased
-- Data.Sign.Properties._.IdempotentFun
d_IdempotentFun_2582 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_IdempotentFun_2582 = erased
-- Data.Sign.Properties._.Identical
d_Identical_2584 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Identical_2584 = erased
-- Data.Sign.Properties._.Identity
d_Identity_2586 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Identity_2586 = erased
-- Data.Sign.Properties._.Interchangable
d_Interchangable_2588 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Interchangable_2588 = erased
-- Data.Sign.Properties._.Inverse
d_Inverse_2590 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Inverse_2590 = erased
-- Data.Sign.Properties._.Invertible
d_Invertible_2592 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> ()
d_Invertible_2592 = erased
-- Data.Sign.Properties._.Involutive
d_Involutive_2594 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Involutive_2594 = erased
-- Data.Sign.Properties._.LeftAlternative
d_LeftAlternative_2596 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftAlternative_2596 = erased
-- Data.Sign.Properties._.LeftBol
d_LeftBol_2598 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftBol_2598 = erased
-- Data.Sign.Properties._.LeftCancellative
d_LeftCancellative_2600 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftCancellative_2600 = erased
-- Data.Sign.Properties._.LeftCongruent
d_LeftCongruent_2602 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftCongruent_2602 = erased
-- Data.Sign.Properties._.LeftConical
d_LeftConical_2604 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftConical_2604 = erased
-- Data.Sign.Properties._.LeftDivides
d_LeftDivides_2606 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftDivides_2606 = erased
-- Data.Sign.Properties._.LeftDividesʳ
d_LeftDivides'691'_2608 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftDivides'691'_2608 = erased
-- Data.Sign.Properties._.LeftDividesˡ
d_LeftDivides'737'_2610 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftDivides'737'_2610 = erased
-- Data.Sign.Properties._.LeftIdentity
d_LeftIdentity_2612 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftIdentity_2612 = erased
-- Data.Sign.Properties._.LeftInverse
d_LeftInverse_2614 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftInverse_2614 = erased
-- Data.Sign.Properties._.LeftInvertible
d_LeftInvertible_2616 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> ()
d_LeftInvertible_2616 = erased
-- Data.Sign.Properties._.LeftSemimedial
d_LeftSemimedial_2618 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftSemimedial_2618 = erased
-- Data.Sign.Properties._.LeftZero
d_LeftZero_2620 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftZero_2620 = erased
-- Data.Sign.Properties._.Medial
d_Medial_2622 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Medial_2622 = erased
-- Data.Sign.Properties._.MiddleBol
d_MiddleBol_2624 ::
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
d_MiddleBol_2624 = erased
-- Data.Sign.Properties._.RightAlternative
d_RightAlternative_2626 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightAlternative_2626 = erased
-- Data.Sign.Properties._.RightBol
d_RightBol_2628 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightBol_2628 = erased
-- Data.Sign.Properties._.RightCancellative
d_RightCancellative_2630 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightCancellative_2630 = erased
-- Data.Sign.Properties._.RightCongruent
d_RightCongruent_2632 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightCongruent_2632 = erased
-- Data.Sign.Properties._.RightConical
d_RightConical_2634 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightConical_2634 = erased
-- Data.Sign.Properties._.RightDivides
d_RightDivides_2636 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightDivides_2636 = erased
-- Data.Sign.Properties._.RightDividesʳ
d_RightDivides'691'_2638 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightDivides'691'_2638 = erased
-- Data.Sign.Properties._.RightDividesˡ
d_RightDivides'737'_2640 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightDivides'737'_2640 = erased
-- Data.Sign.Properties._.RightIdentity
d_RightIdentity_2642 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightIdentity_2642 = erased
-- Data.Sign.Properties._.RightInverse
d_RightInverse_2644 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightInverse_2644 = erased
-- Data.Sign.Properties._.RightInvertible
d_RightInvertible_2646 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> ()
d_RightInvertible_2646 = erased
-- Data.Sign.Properties._.RightSemimedial
d_RightSemimedial_2648 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightSemimedial_2648 = erased
-- Data.Sign.Properties._.RightZero
d_RightZero_2650 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightZero_2650 = erased
-- Data.Sign.Properties._.Selective
d_Selective_2652 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Selective_2652 = erased
-- Data.Sign.Properties._.SelfInverse
d_SelfInverse_2654 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_SelfInverse_2654 = erased
-- Data.Sign.Properties._.Semimedial
d_Semimedial_2656 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Semimedial_2656 = erased
-- Data.Sign.Properties._.StarDestructive
d_StarDestructive_2658 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_StarDestructive_2658 = erased
-- Data.Sign.Properties._.StarExpansive
d_StarExpansive_2660 ::
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
d_StarExpansive_2660 = erased
-- Data.Sign.Properties._.StarLeftDestructive
d_StarLeftDestructive_2662 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_StarLeftDestructive_2662 = erased
-- Data.Sign.Properties._.StarLeftExpansive
d_StarLeftExpansive_2664 ::
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
d_StarLeftExpansive_2664 = erased
-- Data.Sign.Properties._.StarRightDestructive
d_StarRightDestructive_2666 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_StarRightDestructive_2666 = erased
-- Data.Sign.Properties._.StarRightExpansive
d_StarRightExpansive_2668 ::
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
d_StarRightExpansive_2668 = erased
-- Data.Sign.Properties._.Zero
d_Zero_2670 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Zero_2670 = erased
-- Data.Sign.Properties._≟_
d__'8799'__2672 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2672 v0 v1
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
d_'8801''45'setoid_2674 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_2674
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Sign.Properties.≡-decSetoid
d_'8801''45'decSetoid_2676 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86
d_'8801''45'decSetoid_2676
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__2672)
-- Data.Sign.Properties.≡-isDecEquivalence
d_'8801''45'isDecEquivalence_2678 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_'8801''45'isDecEquivalence_2678
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isDecEquivalence_398
      (coe d__'8799'__2672)
-- Data.Sign.Properties.opposite-selfInverse
d_opposite'45'selfInverse_2680 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'45'selfInverse_2680 = erased
-- Data.Sign.Properties.opposite-involutive
d_opposite'45'involutive_2682 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'45'involutive_2682 = erased
-- Data.Sign.Properties.opposite-injective
d_opposite'45'injective_2684 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'45'injective_2684 = erased
-- Data.Sign.Properties.s≢opposite[s]
d_s'8802'opposite'91's'93'_2688 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_s'8802'opposite'91's'93'_2688 = erased
-- Data.Sign.Properties.s*s≡+
d_s'42's'8801''43'_2692 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'42's'8801''43'_2692 = erased
-- Data.Sign.Properties.*-identityˡ
d_'42''45'identity'737'_2694 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_2694 = erased
-- Data.Sign.Properties.*-identityʳ
d_'42''45'identity'691'_2696 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_2696 = erased
-- Data.Sign.Properties.*-identity
d_'42''45'identity_2698 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2698
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Sign.Properties.*-comm
d_'42''45'comm_2700 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_2700 = erased
-- Data.Sign.Properties.*-assoc
d_'42''45'assoc_2702 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2702 = erased
-- Data.Sign.Properties.*-cancelʳ-≡
d_'42''45'cancel'691''45''8801'_2704 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45''8801'_2704 = erased
-- Data.Sign.Properties.*-cancelˡ-≡
d_'42''45'cancel'737''45''8801'_2710 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45''8801'_2710 = erased
-- Data.Sign.Properties.*-cancel-≡
d_'42''45'cancel'45''8801'_2716 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'cancel'45''8801'_2716
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Sign.Properties.*-inverse
d_'42''45'inverse_2718 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'inverse_2718
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Sign.Properties.*-isMagma
d_'42''45'isMagma_2720 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2720
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Sign.Properties.*-magma
d_'42''45'magma_2722 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'42''45'magma_2722
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323
      MAlonzo.Code.Data.Sign.Base.d__'42'__14 d_'42''45'isMagma_2720
-- Data.Sign.Properties.*-isSemigroup
d_'42''45'isSemigroup_2724 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2724
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe d_'42''45'isMagma_2720) erased
-- Data.Sign.Properties.*-semigroup
d_'42''45'semigroup_2726 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'42''45'semigroup_2726
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837
      MAlonzo.Code.Data.Sign.Base.d__'42'__14 d_'42''45'isSemigroup_2724
-- Data.Sign.Properties.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_2728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_2728
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_12093
      (coe d_'42''45'isSemigroup_2724) erased
-- Data.Sign.Properties.*-commutativeSemigroup
d_'42''45'commutativeSemigroup_2730 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'42''45'commutativeSemigroup_2730
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_12079
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      d_'42''45'isCommutativeSemigroup_2728
-- Data.Sign.Properties.*-isMonoid
d_'42''45'isMonoid_2732 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2732
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe d_'42''45'isSemigroup_2724) (coe d_'42''45'identity_2698)
-- Data.Sign.Properties.*-monoid
d_'42''45'monoid_2734 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'42''45'monoid_2734
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10) d_'42''45'isMonoid_2732
-- Data.Sign.Properties.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_2736 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_2736
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe d_'42''45'isMonoid_2732) erased
-- Data.Sign.Properties.*-commutativeMonoid
d_'42''45'commutativeMonoid_2738 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'42''45'commutativeMonoid_2738
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10)
      d_'42''45'isCommutativeMonoid_2736
-- Data.Sign.Properties.*-isGroup
d_'42''45'isGroup_2740 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_'42''45'isGroup_2740
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsGroup'46'constructor_26963
      (coe d_'42''45'isMonoid_2732) (coe d_'42''45'inverse_2718)
      (coe (\ v0 v1 v2 -> v2))
-- Data.Sign.Properties.*-group
d_'42''45'group_2742 :: MAlonzo.Code.Algebra.Bundles.T_Group_1524
d_'42''45'group_2742
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Group'46'constructor_27347
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10) (\ v0 -> v0)
      d_'42''45'isGroup_2740
-- Data.Sign.Properties.*-isAbelianGroup
d_'42''45'isAbelianGroup_2744 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'42''45'isAbelianGroup_2744
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsAbelianGroup'46'constructor_32441
      (coe d_'42''45'isGroup_2740) erased
-- Data.Sign.Properties.*-abelianGroup
d_'42''45'abelianGroup_2746 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640
d_'42''45'abelianGroup_2746
  = coe
      MAlonzo.Code.Algebra.Bundles.C_AbelianGroup'46'constructor_29899
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10) (\ v0 -> v0)
      d_'42''45'isAbelianGroup_2744
-- Data.Sign.Properties.s*opposite[s]≡-
d_s'42'opposite'91's'93''8801''45'_2750 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'42'opposite'91's'93''8801''45'_2750 = erased
-- Data.Sign.Properties.opposite[s]*s≡-
d_opposite'91's'93''42's'8801''45'_2754 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'91's'93''42's'8801''45'_2754 = erased
