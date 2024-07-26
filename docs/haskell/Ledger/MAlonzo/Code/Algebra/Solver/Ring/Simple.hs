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

module MAlonzo.Code.Algebra.Solver.Ring.Simple where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Solver.Ring
import qualified MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Reflection
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Algebra.Solver.Ring.Simple._._*H_
d__'42'H__162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
d__'42'H__162 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'H__804 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*HN_
d__'42'HN__164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
d__'42'HN__164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'HN__800 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*N_
d__'42'N__166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
d__'42'N__166 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'N__808 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*NH_
d__'42'NH__168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
d__'42'NH__168 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'NH__796 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*x+H_
d__'42'x'43'H__174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
d__'42'x'43'H__174 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'x'43'H__782 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*x+HN_
d__'42'x'43'HN__176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
d__'42'x'43'HN__176 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'x'43'HN__732 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._+H_
d__'43'H__178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
d__'43'H__178 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'43'H__754 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._+N_
d__'43'N__180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
d__'43'N__180 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'43'N__758 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._:*_
d__'58''42'__182 ::
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424
d__'58''42'__182
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C_op_434
      (coe MAlonzo.Code.Algebra.Solver.Ring.C_'91''42''93'_420)
-- Algebra.Solver.Ring.Simple._._:+_
d__'58''43'__184 ::
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424
d__'58''43'__184
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C_op_434
      (coe MAlonzo.Code.Algebra.Solver.Ring.C_'91''43''93'_418)
-- Algebra.Solver.Ring.Simple._._:-_
d__'58''45'__186 ::
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424
d__'58''45'__186 v0 v1
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C_op_434
      (coe MAlonzo.Code.Algebra.Solver.Ring.C_'91''43''93'_418) (coe v0)
      (coe MAlonzo.Code.Algebra.Solver.Ring.C_'58''45'__452 (coe v1))
-- Algebra.Solver.Ring.Simple._._⊜_
d__'8860'__188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8860'__188 ~v0 ~v1 ~v2 ~v3 = du__'8860'__188
du__'8860'__188 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8860'__188 v0
  = coe MAlonzo.Code.Relation.Binary.Reflection.du__'8860'__158
-- Algebra.Solver.Ring.Simple._._:×_
d__'58''215'__192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424
d__'58''215'__192 ~v0 ~v1 v2 ~v3 = du__'58''215'__192 v2
du__'58''215'__192 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424
du__'58''215'__192 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.du__'58''215'__472
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v0))
      v2 v3
-- Algebra.Solver.Ring.Simple._._^N_
d__'94'N__194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
d__'94'N__194 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'94'N__880 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._≈H_
d__'8776'H__196 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Solver.Ring.Simple._._≈N_
d__'8776'N__198 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Solver.Ring.Simple._._≟H_
d__'8799'H__200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  Maybe MAlonzo.Code.Algebra.Solver.Ring.T__'8776'H__554
d__'8799'H__200 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'8799'H__592 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._._≟N_
d__'8799'N__202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  Maybe MAlonzo.Code.Algebra.Solver.Ring.T__'8776'N__558
d__'8799'N__202 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'8799'N__596 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*H-homo
d_'42'H'45'homo_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'H'45'homo_204 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'H'45'homo_1172 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*HN-homo
d_'42'HN'45'homo_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'HN'45'homo_206 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'HN'45'homo_1162 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*N-homo
d_'42'N'45'homo_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'N'45'homo_208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'N'45'homo_1182 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*NH-homo
d_'42'NH'45'homo_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'NH'45'homo_210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'NH'45'homo_1150 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*x+H-homo
d_'42'x'43'H'45'homo_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'x'43'H'45'homo_212 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'x'43'H'45'homo_1120 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*x+HN≈*x+
d_'42'x'43'HN'8776''42'x'43'_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'x'43'HN'8776''42'x'43'_214 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'x'43'HN'8776''42'x'43'_990
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.+H-homo
d_'43'H'45'homo_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'43'H'45'homo_216 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'43'H'45'homo_1066 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.+N-homo
d_'43'N'45'homo_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'43'N'45'homo_218 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'43'N'45'homo_1076 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.-H_
d_'45'H__220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
d_'45'H__220 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'45'H__890 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.-H‿-homo
d_'45'H'8255''45'homo_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'45'H'8255''45'homo_222 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'45'H'8255''45'homo_1326
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.-N_
d_'45'N__224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
d_'45'N__224 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'45'N__894 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.-N‿-homo
d_'45'N'8255''45'homo_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'45'N'8255''45'homo_226 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'45'N'8255''45'homo_1334
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.0H
d_0H_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
d_0H_228 ~v0 ~v1 ~v2 ~v3 ~v4 = du_0H_228
du_0H_228 :: MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
du_0H_228 = coe MAlonzo.Code.Algebra.Solver.Ring.C_'8709'_518
-- Algebra.Solver.Ring.Simple._.0N
d_0N_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
d_0N_230 ~v0 ~v1 v2 ~v3 = du_0N_230 v2
du_0N_230 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
du_0N_230 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.du_0N_714
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v0))
-- Algebra.Solver.Ring.Simple._.0N-homo
d_0N'45'homo_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_0N'45'homo_232 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_0N'45'homo_952 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.0≈⟦0⟧
d_0'8776''10214'0'10215'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T__'8776'N__558 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_0'8776''10214'0'10215'_234 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_0'8776''10214'0'10215'_964
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.1H
d_1H_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512
d_1H_236 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_1H_720 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.1N
d_1N_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
d_1N_238 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_1N_724 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.1N-homo
d_1N'45'homo_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_1N'45'homo_240 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_1N'45'homo_976 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.HNF
d_HNF_244 a0 a1 a2 a3 a4 = ()
-- Algebra.Solver.Ring.Simple._.Normal
d_Normal_246 a0 a1 a2 a3 a4 = ()
-- Algebra.Solver.Ring.Simple._.Op
d_Op_248 a0 a1 a2 a3 = ()
-- Algebra.Solver.Ring.Simple._.Polynomial
d_Polynomial_250 a0 a1 a2 a3 a4 = ()
-- Algebra.Solver.Ring.Simple._.^N-homo
d_'94'N'45'homo_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'94'N'45'homo_256 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'94'N'45'homo_1308 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.correct
d_correct_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_correct_264 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_correct_1388 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.correct-con
d_correct'45'con_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_correct'45'con_266 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_correct'45'con_1354 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.correct-var
d_correct'45'var_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_correct'45'var_268 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_correct'45'var_1370 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.normalise
d_normalise_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
d_normalise_270 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_normalise_920 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.normalise-con
d_normalise'45'con_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> AgdaAny -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
d_normalise'45'con_272 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_normalise'45'con_904 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.normalise-var
d_normalise'45'var_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514
d_normalise'45'var_274 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_normalise'45'var_914 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.prove
d_prove_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  AgdaAny -> AgdaAny
d_prove_282 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
              (coe v2) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
                 (coe v2) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reflection.du_prove_106
               (let v7
                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                          (coe v2) in
                coe
                  (let v8
                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                             (coe v7) in
                   coe
                     (let v9
                            = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v8) in
                      coe
                        (let v10
                               = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                   (coe v9) in
                         coe
                           (let v11
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                      (coe v10) in
                            coe
                              (let v12
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v11) in
                               coe
                                 (let v13
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe v12) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                          (coe v13))))))))))
               (\ v7 v8 v9 ->
                  coe
                    MAlonzo.Code.Algebra.Solver.Ring.du_'10214'_'10215'_484 (coe v2)
                    (coe v5) v8 v9)
               (coe
                  MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215''8595'_942
                  (coe v0) (coe v0) (coe v1) (coe v1) (coe v4) (coe v2) (coe v5)
                  (coe v6))
               (coe
                  MAlonzo.Code.Algebra.Solver.Ring.d_correct_1388 (coe v0) (coe v0)
                  (coe v1) (coe v1) (coe v4) (coe v2) (coe v5) (coe v6)))))
-- Algebra.Solver.Ring.Simple._.sem
d_sem_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Op_416 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sem_284 ~v0 ~v1 v2 ~v3 = du_sem_284 v2
du_sem_284 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Op_416 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sem_284 v0
  = coe MAlonzo.Code.Algebra.Solver.Ring.du_sem_480 (coe v0)
-- Algebra.Solver.Ring.Simple._.solve
d_solve_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_solve_286 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
              (coe v2) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
                 (coe v2) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reflection.du_solve_130
               (let v7
                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                          (coe v2) in
                coe
                  (let v8
                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                             (coe v7) in
                   coe
                     (let v9
                            = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v8) in
                      coe
                        (let v10
                               = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                   (coe v9) in
                         coe
                           (let v11
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                      (coe v10) in
                            coe
                              (let v12
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v11) in
                               coe
                                 (let v13
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe v12) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                          (coe v13))))))))))
               (coe (\ v7 -> coe MAlonzo.Code.Algebra.Solver.Ring.C_var_442))
               (\ v7 v8 v9 ->
                  coe
                    MAlonzo.Code.Algebra.Solver.Ring.du_'10214'_'10215'_484 (coe v2)
                    (coe v5) v8 v9)
               (coe
                  MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215''8595'_942
                  (coe v0) (coe v0) (coe v1) (coe v1) (coe v4) (coe v2) (coe v5)
                  (coe v6))
               (coe
                  MAlonzo.Code.Algebra.Solver.Ring.d_correct_1388 (coe v0) (coe v0)
                  (coe v1) (coe v1) (coe v4) (coe v2) (coe v5) (coe v6)))))
-- Algebra.Solver.Ring.Simple._.∅*x+HN-homo
d_'8709''42'x'43'HN'45'homo_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'8709''42'x'43'HN'45'homo_294 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'8709''42'x'43'HN'45'homo_1032
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧
d_'10214'_'10215'_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'_296 ~v0 ~v1 v2 ~v3 = du_'10214'_'10215'_296 v2
du_'10214'_'10215'_296 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'10214'_'10215'_296 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.du_'10214'_'10215'_484 (coe v0)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v0))
      v2 v3
-- Algebra.Solver.Ring.Simple._.⟦_⟧H
d_'10214'_'10215'H_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'H_298 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215'H_532 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧H-cong
d_'10214'_'10215'H'45'cong_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_512 ->
  MAlonzo.Code.Algebra.Solver.Ring.T__'8776'H__554 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'H'45'cong_300 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215'H'45'cong_682
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧N
d_'10214'_'10215'N_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'N_302 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215'N_536 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧N-cong
d_'10214'_'10215'N'45'cong_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_514 ->
  MAlonzo.Code.Algebra.Solver.Ring.T__'8776'N__558 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'N'45'cong_304 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215'N'45'cong_692
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧↓
d_'10214'_'10215''8595'_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_424 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215''8595'_306 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215''8595'_942
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_344
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_774
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_800
         (coe v3))
