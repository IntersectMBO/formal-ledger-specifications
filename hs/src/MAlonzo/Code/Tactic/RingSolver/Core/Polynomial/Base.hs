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

module MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Kleene.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters

-- Tactic.RingSolver.Core.Polynomial.Base.InjectionOrdering
d_InjectionOrdering_66 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_InjectionOrdering_66
  = C_inj'45'lt_78 MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 |
    C_inj'45'gt_88 MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 |
    C_inj'45'eq_94
-- Tactic.RingSolver.Core.Polynomial.Base.inj-compare
d_inj'45'compare_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_InjectionOrdering_66
d_inj'45'compare_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_inj'45'compare_106 v6 v7
du_inj'45'compare_106 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_InjectionOrdering_66
du_inj'45'compare_106 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
               -> coe C_inj'45'eq_94
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352 v5
               -> coe C_inj'45'gt_88 v5
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
               -> coe C_inj'45'lt_78 v3
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352 v5
               -> coe du_inj'45'compare_106 (coe v3) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base..extendedlambda0
d_'46'extendedlambda0_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_InjectionOrdering_66 -> T_InjectionOrdering_66
d_'46'extendedlambda0_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'46'extendedlambda0_116 v8
du_'46'extendedlambda0_116 ::
  T_InjectionOrdering_66 -> T_InjectionOrdering_66
du_'46'extendedlambda0_116 v0 = coe v0
-- Tactic.RingSolver.Core.Polynomial.Base.space
d_space_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> Integer
d_space_130 ~v0 ~v1 ~v2 v3 v4 = du_space_130 v3 v4
du_space_130 ::
  Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> Integer
du_space_130 v0 v1
  = coe addInt (coe (1 :: Integer)) (coe du_go_140 (coe v0) (coe v1))
-- Tactic.RingSolver.Core.Polynomial.Base._.go
d_go_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> Integer
d_go_140 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_go_140 v5 v6
du_go_140 ::
  Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> Integer
du_go_140 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe subInt (coe v0) (coe (1 :: Integer))
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_go_140 (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.space≤′n
d_space'8804''8242'n_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_space'8804''8242'n_150 ~v0 ~v1 ~v2 ~v3 v4
  = du_space'8804''8242'n_150 v4
du_space'8804''8242'n_150 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
du_space'8804''8242'n_150 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
             (coe du_space'8804''8242'n_150 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.PowInd
d_PowInd_158 a0 a1 a2 a3 a4 = ()
data T_PowInd_158 = C__Δ__172 AgdaAny Integer
-- Tactic.RingSolver.Core.Polynomial.Base.PowInd.coeff
d_coeff_168 :: T_PowInd_158 -> AgdaAny
d_coeff_168 v0
  = case coe v0 of
      C__Δ__172 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.PowInd.pow
d_pow_170 :: T_PowInd_158 -> Integer
d_pow_170 v0
  = case coe v0 of
      C__Δ__172 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.Poly
d_Poly_176 a0 a1 a2 a3 = ()
data T_Poly_176
  = C__'8848'__208 Integer T_FlatPoly_178
                   MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
-- Tactic.RingSolver.Core.Polynomial.Base.FlatPoly
d_FlatPoly_178 a0 a1 a2 a3 = ()
data T_FlatPoly_178
  = C_Κ_210 AgdaAny |
    C_'8512'_218 MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 AgdaAny
-- Tactic.RingSolver.Core.Polynomial.Base.Coeff
d_Coeff_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> ()
d_Coeff_180 = erased
-- Tactic.RingSolver.Core.Polynomial.Base.NonZero
d_NonZero_184 a0 a1 a2 a3 = ()
newtype T_NonZero_184 = C__'8800'0_232 T_Poly_176
-- Tactic.RingSolver.Core.Polynomial.Base.Zero
d_Zero_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> T_Poly_176 -> ()
d_Zero_188 = erased
-- Tactic.RingSolver.Core.Polynomial.Base.Normalised
d_Normalised_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 -> ()
d_Normalised_192 = erased
-- Tactic.RingSolver.Core.Polynomial.Base.Poly.i
d_i_202 :: T_Poly_176 -> Integer
d_i_202 v0
  = case coe v0 of
      C__'8848'__208 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.Poly.flat
d_flat_204 :: T_Poly_176 -> T_FlatPoly_178
d_flat_204 v0
  = case coe v0 of
      C__'8848'__208 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.Poly.i≤n
d_i'8804'n_206 ::
  T_Poly_176 -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_i'8804'n_206 v0
  = case coe v0 of
      C__'8848'__208 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.NonZero.poly
d_poly_228 :: T_NonZero_184 -> T_Poly_176
d_poly_228 v0
  = case coe v0 of
      C__'8800'0_232 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.zero?
d_zero'63'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  T_Poly_176 -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_zero'63'_240 ~v0 ~v1 v2 ~v3 v4 = du_zero'63'_240 v2 v4
du_zero'63'_240 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  T_Poly_176 -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_zero'63'_240 v0 v1
  = case coe v1 of
      C__'8848'__208 v2 v3 v4
        -> case coe v3 of
             C_Κ_210 v5
               -> let v6
                        = coe
                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                            v0 v5 in
                  coe
                    (if coe v6
                       then coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe v6)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                       else coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe v6)
                              (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
             C_'8512'_218 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base._⍓*_
d__'9043''42'__254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  Integer -> MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d__'9043''42'__254 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'9043''42'__254 v4 v5
du__'9043''42'__254 ::
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  Integer -> MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
du__'9043''42'__254 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 -> coe v0
      MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v2
        -> coe
             MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48
             (coe du__'9043''43'__258 (coe v2) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base._⍓+_
d__'9043''43'__258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  Integer -> MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24
d__'9043''43'__258 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'9043''43'__258 v4 v5
du__'9043''43'__258 ::
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  Integer -> MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24
du__'9043''43'__258 v0 v1
  = coe
      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
      (coe
         C__Δ__172
         (coe
            d_coeff_168
            (coe MAlonzo.Code.Data.List.Kleene.Base.d_head_38 (coe v0)))
         (coe
            addInt
            (coe
               d_pow_170
               (coe MAlonzo.Code.Data.List.Kleene.Base.d_head_38 (coe v0)))
            (coe v1)))
      (coe MAlonzo.Code.Data.List.Kleene.Base.d_tail_40 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Base._∷↓_
d__'8759''8595'__278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  T_PowInd_158 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d__'8759''8595'__278 ~v0 ~v1 v2 ~v3 v4 v5
  = du__'8759''8595'__278 v2 v4 v5
du__'8759''8595'__278 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  T_PowInd_158 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
du__'8759''8595'__278 v0 v1 v2
  = case coe v1 of
      C__Δ__172 v3 v4
        -> coe
             du_'46'extendedlambda1_286 (coe v3) (coe v4) (coe v2)
             (case coe v3 of
                C__'8848'__208 v5 v6 v7
                  -> case coe v6 of
                       C_Κ_210 v8
                         -> let v9
                                  = coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                      v0 v8 in
                            coe
                              (if coe v9
                                 then coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v9)
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                 else coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v9)
                                        (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                       C_'8512'_218 v9 v10
                         -> coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                              (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base..extendedlambda1
d_'46'extendedlambda1_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  T_Poly_176 ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d_'46'extendedlambda1_286 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'46'extendedlambda1_286 v4 v5 v6 v7
du_'46'extendedlambda1_286 ::
  T_Poly_176 ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
du_'46'extendedlambda1_286 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
        -> if coe v4
             then coe
                    seq (coe v5)
                    (coe
                       du__'9043''42'__254 (coe v2)
                       (coe addInt (coe (1 :: Integer)) (coe v1)))
             else coe
                    seq (coe v5)
                    (coe
                       MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48
                       (coe
                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                          (coe C__Δ__172 (coe C__'8800'0_232 v0) (coe v1)) (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base._⊐↑_
d__'8848''8593'__296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  T_Poly_176 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 -> T_Poly_176
d__'8848''8593'__296 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du__'8848''8593'__296 v5 v6
du__'8848''8593'__296 ::
  T_Poly_176 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 -> T_Poly_176
du__'8848''8593'__296 v0 v1
  = case coe v0 of
      C__'8848'__208 v2 v3 v4
        -> coe
             C__'8848'__208 (coe v2) (coe v3)
             (coe
                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                (coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352 v4)
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base._⊐↓_
d__'8848''8595'__308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 -> T_Poly_176
d__'8848''8595'__308 ~v0 ~v1 v2 v3 v4 v5 v6
  = du__'8848''8595'__308 v2 v3 v4 v5 v6
du__'8848''8595'__308 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 -> T_Poly_176
du__'8848''8595'__308 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
        -> coe
             C__'8848'__208 (coe (0 :: Integer))
             (coe
                C_Κ_210
                (coe
                   MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                      (coe v0))))
             (coe
                MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v2))
      MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v5
        -> case coe v5 of
             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v6 v7
               -> case coe v6 of
                    C__Δ__172 v8 v9
                      -> case coe v8 of
                           C__'8800'0_232 v10
                             -> case coe v9 of
                                  0 -> case coe v7 of
                                         MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                           -> case coe v10 of
                                                C__'8848'__208 v12 v13 v14
                                                  -> coe
                                                       C__'8848'__208 (coe v12) (coe v13)
                                                       (coe
                                                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                          (coe
                                                             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                             v14)
                                                          (coe
                                                             MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                          (coe v4))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v12
                                           -> coe
                                                C__'8848'__208
                                                (coe addInt (coe (1 :: Integer)) (coe v1))
                                                (coe
                                                   C_'8512'_218
                                                   (coe
                                                      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                      (coe
                                                         C__Δ__172 (coe C__'8800'0_232 v10)
                                                         (coe (0 :: Integer)))
                                                      (coe v7))
                                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe v4)
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> coe
                                         C__'8848'__208 (coe addInt (coe (1 :: Integer)) (coe v1))
                                         (coe
                                            C_'8512'_218
                                            (coe
                                               MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                               (coe C__Δ__172 (coe C__'8800'0_232 v10) (coe v9))
                                               (coe v7))
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                         (coe v4)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.PolyF
d_PolyF_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> ()
d_PolyF_330 = erased
-- Tactic.RingSolver.Core.Polynomial.Base.Fold
d_Fold_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> ()
d_Fold_334 = erased
-- Tactic.RingSolver.Core.Polynomial.Base.para
d_para_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d_para_340 ~v0 ~v1 v2 ~v3 v4 v5 = du_para_340 v2 v4 v5
du_para_340 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
du_para_340 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v3 v4
        -> case coe v3 of
             C__Δ__172 v5 v6
               -> case coe v5 of
                    C__'8800'0_232 v7
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                             -> let v9
                                      = coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                             (coe v4)) in
                                coe
                                  (case coe v9 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                       -> coe
                                            du_'46'extendedlambda1_286 (coe v10) (coe v6) (coe v11)
                                            (case coe v10 of
                                               C__'8848'__208 v12 v13 v14
                                                 -> case coe v13 of
                                                      C_Κ_210 v15
                                                        -> let v16
                                                                 = coe
                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                                     v0 v15 in
                                                           coe
                                                             (if coe v16
                                                                then coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe v16)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                else coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe v16)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                      C_'8512'_218 v16 v17
                                                        -> coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                           MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v9
                             -> let v10
                                      = coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                             (coe du_para_340 (coe v0) (coe v1) (coe v9))) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            du_'46'extendedlambda1_286 (coe v11) (coe v6) (coe v12)
                                            (case coe v11 of
                                               C__'8848'__208 v13 v14 v15
                                                 -> case coe v14 of
                                                      C_Κ_210 v16
                                                        -> let v17
                                                                 = coe
                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                                     v0 v16 in
                                                           coe
                                                             (if coe v17
                                                                then coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe v17)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                else coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe v17)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                      C_'8512'_218 v17 v18
                                                        -> coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.poly-map
d_poly'45'map_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  (T_Poly_176 -> T_Poly_176) ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d_poly'45'map_370 ~v0 ~v1 v2 ~v3 v4 = du_poly'45'map_370 v2 v4
du_poly'45'map_370 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  (T_Poly_176 -> T_Poly_176) ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
du_poly'45'map_370 v0 v1
  = coe
      du_para_340 (coe v0)
      (coe MAlonzo.Code.Data.Product.Base.du_map'8321'_138 (coe v1))
-- Tactic.RingSolver.Core.Polynomial.Base._⊞_
d__'8862'__376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> T_Poly_176 -> T_Poly_176 -> T_Poly_176
d__'8862'__376 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C__'8848'__208 v6 v7 v8
        -> case coe v5 of
             C__'8848'__208 v9 v10 v11
               -> coe
                    d_'8862''45'match_388 (coe v0) (coe v1) (coe v2) (coe v6) (coe v9)
                    (coe v3) (coe v8) (coe v11)
                    (coe du_inj'45'compare_106 (coe v8) (coe v11)) (coe v7) (coe v10)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊞-match
d_'8862''45'match_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_InjectionOrdering_66 ->
  T_FlatPoly_178 -> T_FlatPoly_178 -> T_Poly_176
d_'8862''45'match_388 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C_inj'45'lt_78 v13
        -> let v15 = subInt (coe v4) (coe (1 :: Integer)) in
           coe
             (case coe v10 of
                C_'8512'_218 v17 v18
                  -> let v19
                           = d_'8862''45'inj_394
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v15) (coe v13) (coe v9)
                               (coe v17) in
                     coe
                       (case coe v19 of
                          MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                            -> coe
                                 C__'8848'__208 (coe (0 :: Integer))
                                 (coe
                                    C_Κ_210
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v5))
                          MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v20
                            -> case coe v20 of
                                 MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v21 v22
                                   -> case coe v21 of
                                        C__Δ__172 v23 v24
                                          -> case coe v23 of
                                               C__'8800'0_232 v25
                                                 -> case coe v24 of
                                                      0 -> case coe v22 of
                                                             MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                               -> case coe v25 of
                                                                    C__'8848'__208 v27 v28 v29
                                                                      -> coe
                                                                           C__'8848'__208 (coe v27)
                                                                           (coe v28)
                                                                           (coe
                                                                              MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                 v29)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                              (coe v7))
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v27
                                                               -> coe
                                                                    C__'8848'__208 (coe v4)
                                                                    (coe
                                                                       C_'8512'_218
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                          (coe
                                                                             C__Δ__172
                                                                             (coe
                                                                                C__'8800'0_232 v25)
                                                                             (coe (0 :: Integer)))
                                                                          (coe v22))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                    (coe v7)
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> coe
                                                             C__'8848'__208 (coe v4)
                                                             (coe
                                                                C_'8512'_218
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                   (coe
                                                                      C__Δ__172
                                                                      (coe C__'8800'0_232 v25)
                                                                      (coe v24))
                                                                   (coe v22))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                             (coe v7)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError)
      C_inj'45'gt_88 v14
        -> let v15 = subInt (coe v3) (coe (1 :: Integer)) in
           coe
             (case coe v9 of
                C_'8512'_218 v17 v18
                  -> let v19
                           = d_'8862''45'inj_394
                               (coe v0) (coe v1) (coe v2) (coe v4) (coe v15) (coe v14) (coe v10)
                               (coe v17) in
                     coe
                       (case coe v19 of
                          MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                            -> coe
                                 C__'8848'__208 (coe (0 :: Integer))
                                 (coe
                                    C_Κ_210
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v5))
                          MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v20
                            -> case coe v20 of
                                 MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v21 v22
                                   -> case coe v21 of
                                        C__Δ__172 v23 v24
                                          -> case coe v23 of
                                               C__'8800'0_232 v25
                                                 -> case coe v24 of
                                                      0 -> case coe v22 of
                                                             MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                               -> case coe v25 of
                                                                    C__'8848'__208 v27 v28 v29
                                                                      -> coe
                                                                           C__'8848'__208 (coe v27)
                                                                           (coe v28)
                                                                           (coe
                                                                              MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                 v29)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                              (coe v6))
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v27
                                                               -> coe
                                                                    C__'8848'__208 (coe v3)
                                                                    (coe
                                                                       C_'8512'_218
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                          (coe
                                                                             C__Δ__172
                                                                             (coe
                                                                                C__'8800'0_232 v25)
                                                                             (coe (0 :: Integer)))
                                                                          (coe v22))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                    (coe v6)
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> coe
                                                             C__'8848'__208 (coe v3)
                                                             (coe
                                                                C_'8512'_218
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                   (coe
                                                                      C__Δ__172
                                                                      (coe C__'8800'0_232 v25)
                                                                      (coe v24))
                                                                   (coe v22))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                             (coe v6)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError)
      C_inj'45'eq_94
        -> case coe v9 of
             C_Κ_210 v13
               -> case coe v10 of
                    C_Κ_210 v14
                      -> coe
                           C__'8848'__208 (coe (0 :: Integer))
                           (coe
                              C_Κ_210
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314
                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                    (coe v2))
                                 v13 v14))
                           (coe v6)
                    _ -> MAlonzo.RTE.mazUnreachableError
             C_'8512'_218 v14 v15
               -> let v16 = subInt (coe v3) (coe (1 :: Integer)) in
                  coe
                    (case coe v14 of
                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v17 v18
                         -> case coe v17 of
                              C__Δ__172 v19 v20
                                -> case coe v10 of
                                     C_'8512'_218 v22 v23
                                       -> case coe v22 of
                                            MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v24 v25
                                              -> case coe v24 of
                                                   C__Δ__172 v26 v27
                                                     -> let v28
                                                              = MAlonzo.Code.Data.Nat.Base.d_compare_474
                                                                  (coe v20) (coe v27) in
                                                        coe
                                                          (case coe v28 of
                                                             MAlonzo.Code.Data.Nat.Base.C_less_458 v30
                                                               -> let v31
                                                                        = d_'8862''45'zip'45'r_410
                                                                            (coe v0) (coe v1)
                                                                            (coe v2) (coe v16)
                                                                            (coe v26) (coe v30)
                                                                            (coe v25) (coe v18) in
                                                                  coe
                                                                    (case coe v19 of
                                                                       C__'8800'0_232 v32
                                                                         -> case coe v20 of
                                                                              0 -> case coe v31 of
                                                                                     MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                                       -> case coe
                                                                                                 v32 of
                                                                                            C__'8848'__208 v34 v35 v36
                                                                                              -> coe
                                                                                                   C__'8848'__208
                                                                                                   (coe
                                                                                                      v34)
                                                                                                   (coe
                                                                                                      v35)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                                         v36)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                                                      (coe
                                                                                                         v6))
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                     MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v34
                                                                                       -> coe
                                                                                            C__'8848'__208
                                                                                            (coe v3)
                                                                                            (coe
                                                                                               C_'8512'_218
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                                  (coe
                                                                                                     C__Δ__172
                                                                                                     (coe
                                                                                                        C__'8800'0_232
                                                                                                        v32)
                                                                                                     (coe
                                                                                                        (0 ::
                                                                                                           Integer)))
                                                                                                  (coe
                                                                                                     v31))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                            (coe v6)
                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                              _ -> coe
                                                                                     C__'8848'__208
                                                                                     (coe v3)
                                                                                     (coe
                                                                                        C_'8512'_218
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                           (coe
                                                                                              C__Δ__172
                                                                                              (coe
                                                                                                 C__'8800'0_232
                                                                                                 v32)
                                                                                              (coe
                                                                                                 v20))
                                                                                           (coe
                                                                                              v31))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                     (coe v6)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                             MAlonzo.Code.Data.Nat.Base.C_equal_462
                                                               -> let v30
                                                                        = let v30
                                                                                = d_'8862''45'coeffs_398
                                                                                    (coe v0)
                                                                                    (coe v1)
                                                                                    (coe v2)
                                                                                    (coe v16)
                                                                                    (coe v18)
                                                                                    (coe v25) in
                                                                          coe
                                                                            (let v31
                                                                                   = d__'8862'__376
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v16)
                                                                                       (coe
                                                                                          d_poly_228
                                                                                          (coe v19))
                                                                                       (coe
                                                                                          d_poly_228
                                                                                          (coe
                                                                                             v26)) in
                                                                             coe
                                                                               (coe
                                                                                  du_'46'extendedlambda1_286
                                                                                  (coe v31)
                                                                                  (coe v20)
                                                                                  (coe v30)
                                                                                  (case coe v31 of
                                                                                     C__'8848'__208 v32 v33 v34
                                                                                       -> case coe
                                                                                                 v33 of
                                                                                            C_Κ_210 v35
                                                                                              -> let v36
                                                                                                       = coe
                                                                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                                                                           v2
                                                                                                           v35 in
                                                                                                 coe
                                                                                                   (if coe
                                                                                                         v36
                                                                                                      then coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                             (coe
                                                                                                                v36)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                      else coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                             (coe
                                                                                                                v36)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                            C_'8512'_218 v36 v37
                                                                                              -> coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                     _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                  coe
                                                                    (case coe v30 of
                                                                       MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                         -> coe
                                                                              C__'8848'__208
                                                                              (coe (0 :: Integer))
                                                                              (coe
                                                                                 C_Κ_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                                                                    (coe
                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                                                       (coe v2))))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222
                                                                                 (coe v5))
                                                                       MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v31
                                                                         -> case coe v31 of
                                                                              MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v32 v33
                                                                                -> case coe v32 of
                                                                                     C__Δ__172 v34 v35
                                                                                       -> case coe
                                                                                                 v34 of
                                                                                            C__'8800'0_232 v36
                                                                                              -> case coe
                                                                                                        v35 of
                                                                                                   0 -> case coe
                                                                                                               v33 of
                                                                                                          MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                                                            -> case coe
                                                                                                                      v36 of
                                                                                                                 C__'8848'__208 v38 v39 v40
                                                                                                                   -> coe
                                                                                                                        C__'8848'__208
                                                                                                                        (coe
                                                                                                                           v38)
                                                                                                                        (coe
                                                                                                                           v39)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                                                              v40)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                                                                           (coe
                                                                                                                              v6))
                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                          MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v38
                                                                                                            -> coe
                                                                                                                 C__'8848'__208
                                                                                                                 (coe
                                                                                                                    v3)
                                                                                                                 (coe
                                                                                                                    C_'8512'_218
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                                                       (coe
                                                                                                                          C__Δ__172
                                                                                                                          (coe
                                                                                                                             C__'8800'0_232
                                                                                                                             v36)
                                                                                                                          (coe
                                                                                                                             (0 ::
                                                                                                                                Integer)))
                                                                                                                       (coe
                                                                                                                          v33))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                 (coe
                                                                                                                    v6)
                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                   _ -> coe
                                                                                                          C__'8848'__208
                                                                                                          (coe
                                                                                                             v3)
                                                                                                          (coe
                                                                                                             C_'8512'_218
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                                                (coe
                                                                                                                   C__Δ__172
                                                                                                                   (coe
                                                                                                                      C__'8800'0_232
                                                                                                                      v36)
                                                                                                                   (coe
                                                                                                                      v35))
                                                                                                                (coe
                                                                                                                   v33))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                          (coe
                                                                                                             v6)
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                             MAlonzo.Code.Data.Nat.Base.C_greater_468 v30
                                                               -> let v31
                                                                        = d_'8862''45'zip'45'r_410
                                                                            (coe v0) (coe v1)
                                                                            (coe v2) (coe v16)
                                                                            (coe v19) (coe v30)
                                                                            (coe v18) (coe v25) in
                                                                  coe
                                                                    (case coe v26 of
                                                                       C__'8800'0_232 v32
                                                                         -> case coe v27 of
                                                                              0 -> case coe v31 of
                                                                                     MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                                       -> case coe
                                                                                                 v32 of
                                                                                            C__'8848'__208 v34 v35 v36
                                                                                              -> coe
                                                                                                   C__'8848'__208
                                                                                                   (coe
                                                                                                      v34)
                                                                                                   (coe
                                                                                                      v35)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                                         v36)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                                                      (coe
                                                                                                         v6))
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                     MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v34
                                                                                       -> coe
                                                                                            C__'8848'__208
                                                                                            (coe v3)
                                                                                            (coe
                                                                                               C_'8512'_218
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                                  (coe
                                                                                                     C__Δ__172
                                                                                                     (coe
                                                                                                        C__'8800'0_232
                                                                                                        v32)
                                                                                                     (coe
                                                                                                        (0 ::
                                                                                                           Integer)))
                                                                                                  (coe
                                                                                                     v31))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                            (coe v6)
                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                              _ -> coe
                                                                                     C__'8848'__208
                                                                                     (coe v3)
                                                                                     (coe
                                                                                        C_'8512'_218
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                           (coe
                                                                                              C__Δ__172
                                                                                              (coe
                                                                                                 C__'8800'0_232
                                                                                                 v32)
                                                                                              (coe
                                                                                                 v27))
                                                                                           (coe
                                                                                              v31))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                     (coe v6)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊞-inj
d_'8862''45'inj_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_FlatPoly_178 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d_'8862''45'inj_394 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v8 v9
        -> case coe v8 of
             C__Δ__172 v10 v11
               -> case coe v10 of
                    C__'8800'0_232 v12
                      -> case coe v12 of
                           C__'8848'__208 v14 v15 v16
                             -> case coe v11 of
                                  0 -> let v17
                                             = d_'8862''45'match_388
                                                 (coe v0) (coe v1) (coe v2) (coe v14) (coe v3)
                                                 (coe v4) (coe v16) (coe v5)
                                                 (coe du_inj'45'compare_106 (coe v16) (coe v5))
                                                 (coe v15) (coe v6) in
                                       coe
                                         (let v18 = 0 :: Integer in
                                          coe
                                            (coe
                                               du_'46'extendedlambda1_286 (coe v17) (coe v18)
                                               (coe v9)
                                               (case coe v17 of
                                                  C__'8848'__208 v19 v20 v21
                                                    -> case coe v20 of
                                                         C_Κ_210 v22
                                                           -> let v23
                                                                    = coe
                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                                        v2 v22 in
                                                              coe
                                                                (if coe v23
                                                                   then coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe v23)
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                   else coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe v23)
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                         C_'8512'_218 v23 v24
                                                           -> coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                  _ -> let v17 = subInt (coe v11) (coe (1 :: Integer)) in
                                       coe
                                         (let v18
                                                = coe
                                                    MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48
                                                    (coe
                                                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                       (coe
                                                          C__Δ__172 (coe C__'8800'0_232 v12)
                                                          (coe v17))
                                                       (coe v9)) in
                                          coe
                                            (let v19
                                                   = coe
                                                       C__'8848'__208 (coe v3) (coe v6) (coe v5) in
                                             coe
                                               (let v20 = 0 :: Integer in
                                                coe
                                                  (coe
                                                     du_'46'extendedlambda1_286 (coe v19) (coe v20)
                                                     (coe v18)
                                                     (case coe v6 of
                                                        C_Κ_210 v21
                                                          -> let v22
                                                                   = coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                                       v2 v21 in
                                                             coe
                                                               (if coe v22
                                                                  then coe
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                         (coe v22)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                  else coe
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                         (coe v22)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                        C_'8512'_218 v22 v23
                                                          -> coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊞-coeffs
d_'8862''45'coeffs_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d_'8862''45'coeffs_398 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 -> coe v5
      MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v6
        -> case coe v6 of
             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v7 v8
               -> case coe v7 of
                    C__Δ__172 v9 v10
                      -> coe
                           d_'8862''45'zip'45'r_410 (coe v0) (coe v1) (coe v2) (coe v3)
                           (coe v9) (coe v10) (coe v8) (coe v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊞-zip
d_'8862''45'zip_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_Ordering_452 ->
  T_NonZero_184 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  T_NonZero_184 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d_'8862''45'zip_406 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v6 of
      MAlonzo.Code.Data.Nat.Base.C_less_458 v12
        -> coe
             MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48
             (coe
                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                (coe C__Δ__172 (coe v7) (coe v3))
                (coe
                   d_'8862''45'zip'45'r_410 (coe v0) (coe v1) (coe v2) (coe v5)
                   (coe v9) (coe v12) (coe v10) (coe v8)))
      MAlonzo.Code.Data.Nat.Base.C_equal_462
        -> let v12
                 = d_'8862''45'coeffs_398
                     (coe v0) (coe v1) (coe v2) (coe v5) (coe v8) (coe v10) in
           coe
             (let v13
                    = d__'8862'__376
                        (coe v0) (coe v1) (coe v2) (coe v5) (coe d_poly_228 (coe v7))
                        (coe d_poly_228 (coe v9)) in
              coe
                (coe
                   du_'46'extendedlambda1_286 (coe v13) (coe v3) (coe v12)
                   (case coe v13 of
                      C__'8848'__208 v14 v15 v16
                        -> case coe v15 of
                             C_Κ_210 v17
                               -> let v18
                                        = coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                            v2 v17 in
                                  coe
                                    (if coe v18
                                       then coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                              (coe v18)
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       else coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                              (coe v18)
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                             C_'8512'_218 v18 v19
                               -> coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                             _ -> MAlonzo.RTE.mazUnreachableError
                      _ -> MAlonzo.RTE.mazUnreachableError)))
      MAlonzo.Code.Data.Nat.Base.C_greater_468 v12
        -> coe
             MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48
             (coe
                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                (coe C__Δ__172 (coe v9) (coe v4))
                (coe
                   d_'8862''45'zip'45'r_410 (coe v0) (coe v1) (coe v2) (coe v5)
                   (coe v7) (coe v12) (coe v8) (coe v10)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊞-zip-r
d_'8862''45'zip'45'r_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  T_NonZero_184 ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d_'8862''45'zip'45'r_410 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
        -> coe
             MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48
             (coe
                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                (coe C__Δ__172 (coe v4) (coe v5)) (coe v6))
      MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v8
        -> case coe v8 of
             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v9 v10
               -> case coe v9 of
                    C__Δ__172 v11 v12
                      -> coe
                           d_'8862''45'zip_406 (coe v0) (coe v1) (coe v2) (coe v5) (coe v12)
                           (coe v3)
                           (coe MAlonzo.Code.Data.Nat.Base.d_compare_474 (coe v5) (coe v12))
                           (coe v4) (coe v6) (coe v11) (coe v10)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊟-step
d_'8863''45'step_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  T_Poly_176 -> T_Poly_176
d_'8863''45'step_540 ~v0 ~v1 v2 v3 ~v4 v5
  = du_'8863''45'step_540 v2 v3 v5
du_'8863''45'step_540 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> T_Poly_176 -> T_Poly_176
du_'8863''45'step_540 v0 v1 v2
  = case coe v2 of
      C__'8848'__208 v3 v4 v5
        -> case coe v4 of
             C_Κ_210 v6
               -> coe
                    C__'8848'__208 (coe (0 :: Integer))
                    (coe
                       C_Κ_210
                       (coe
                          MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318
                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                             (coe v0))
                          v6))
                    (coe v5)
             C_'8512'_218 v7 v8
               -> let v9 = subInt (coe v3) (coe (1 :: Integer)) in
                  coe
                    (let v10
                           = coe
                               du_para_340 (coe v0)
                               (coe
                                  MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                  (coe du_'8863''45'step_540 (coe v0) (coe v9)))
                               (coe v7) in
                     coe
                       (case coe v10 of
                          MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                            -> coe
                                 C__'8848'__208 (coe (0 :: Integer))
                                 (coe
                                    C_Κ_210
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v1))
                          MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v11
                            -> case coe v11 of
                                 MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v12 v13
                                   -> case coe v12 of
                                        C__Δ__172 v14 v15
                                          -> case coe v14 of
                                               C__'8800'0_232 v16
                                                 -> case coe v15 of
                                                      0 -> case coe v13 of
                                                             MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                               -> case coe v16 of
                                                                    C__'8848'__208 v18 v19 v20
                                                                      -> coe
                                                                           C__'8848'__208 (coe v18)
                                                                           (coe v19)
                                                                           (coe
                                                                              MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                 v20)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                              (coe v5))
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v18
                                                               -> coe
                                                                    C__'8848'__208 (coe v3)
                                                                    (coe
                                                                       C_'8512'_218
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                          (coe
                                                                             C__Δ__172
                                                                             (coe
                                                                                C__'8800'0_232 v16)
                                                                             (coe (0 :: Integer)))
                                                                          (coe v13))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                    (coe v5)
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> coe
                                                             C__'8848'__208 (coe v3)
                                                             (coe
                                                                C_'8512'_218
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                   (coe
                                                                      C__Δ__172
                                                                      (coe C__'8800'0_232 v16)
                                                                      (coe v15))
                                                                   (coe v13))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                             (coe v5)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊟_
d_'8863'__556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> T_Poly_176 -> T_Poly_176
d_'8863'__556 ~v0 ~v1 v2 v3 = du_'8863'__556 v2 v3
du_'8863'__556 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> T_Poly_176 -> T_Poly_176
du_'8863'__556 v0 v1 = coe du_'8863''45'step_540 (coe v0) (coe v1)
-- Tactic.RingSolver.Core.Polynomial.Base.⊠-step′
d_'8864''45'step'8242'_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  T_Poly_176 -> T_Poly_176 -> T_Poly_176
d_'8864''45'step'8242'_560 v0 v1 v2 v3 ~v4 v5
  = du_'8864''45'step'8242'_560 v0 v1 v2 v3 v5
du_'8864''45'step'8242'_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> T_Poly_176 -> T_Poly_176 -> T_Poly_176
du_'8864''45'step'8242'_560 v0 v1 v2 v3 v4
  = case coe v4 of
      C__'8848'__208 v5 v6 v7
        -> coe du_'8864''45'step_566 v0 v1 v2 v5 v3 v6 v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊠-step
d_'8864''45'step_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  T_FlatPoly_178 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_Poly_176 -> T_Poly_176
d_'8864''45'step_566 v0 v1 v2 v3 v4 ~v5 v6
  = du_'8864''45'step_566 v0 v1 v2 v3 v4 v6
du_'8864''45'step_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  T_FlatPoly_178 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_Poly_176 -> T_Poly_176
du_'8864''45'step_566 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C_Κ_210 v6
        -> coe
             (\ v7 v8 ->
                case coe v8 of
                  C__'8848'__208 v9 v10 v11
                    -> case coe v10 of
                         C_Κ_210 v12
                           -> coe
                                C__'8848'__208 (coe (0 :: Integer))
                                (coe
                                   C_Κ_210
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316
                                      (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                         (coe v2))
                                      v6 v12))
                                (coe v11)
                         C_'8512'_218 v13 v14
                           -> let v15 = subInt (coe v9) (coe (1 :: Integer)) in
                              coe
                                (let v16
                                       = coe
                                           du_'8864''45'Κ'45'inj_580 (coe v0) (coe v1) (coe v2)
                                           (coe v15) (coe v6) (coe v13) in
                                 coe
                                   (case coe v16 of
                                      MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                        -> coe
                                             C__'8848'__208 (coe (0 :: Integer))
                                             (coe
                                                C_Κ_210
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                                   (coe
                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                      (coe v2))))
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222
                                                (coe v4))
                                      MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v17
                                        -> case coe v17 of
                                             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v18 v19
                                               -> case coe v18 of
                                                    C__Δ__172 v20 v21
                                                      -> case coe v20 of
                                                           C__'8800'0_232 v22
                                                             -> case coe v21 of
                                                                  0 -> case coe v19 of
                                                                         MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                           -> case coe v22 of
                                                                                C__'8848'__208 v24 v25 v26
                                                                                  -> coe
                                                                                       C__'8848'__208
                                                                                       (coe v24)
                                                                                       (coe v25)
                                                                                       (coe
                                                                                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                             v26)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                                          (coe v11))
                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                         MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v24
                                                                           -> coe
                                                                                C__'8848'__208
                                                                                (coe v9)
                                                                                (coe
                                                                                   C_'8512'_218
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                      (coe
                                                                                         C__Δ__172
                                                                                         (coe
                                                                                            C__'8800'0_232
                                                                                            v22)
                                                                                         (coe
                                                                                            (0 ::
                                                                                               Integer)))
                                                                                      (coe v19))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                (coe v11)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                  _ -> coe
                                                                         C__'8848'__208 (coe v9)
                                                                         (coe
                                                                            C_'8512'_218
                                                                            (coe
                                                                               MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                               (coe
                                                                                  C__Δ__172
                                                                                  (coe
                                                                                     C__'8800'0_232
                                                                                     v22)
                                                                                  (coe v21))
                                                                               (coe v19))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                         (coe v11)
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError)
      C_'8512'_218 v7 v8
        -> let v9 = subInt (coe v3) (coe (1 :: Integer)) in
           coe
             (coe
                du_'8864''45''8512'_576 (coe v0) (coe v1) (coe v2) (coe v9)
                (coe v4) (coe v7))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊠-Κ
d_'8864''45'Κ_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  AgdaAny -> T_Poly_176 -> T_Poly_176
d_'8864''45'Κ_570 v0 v1 v2 v3 ~v4 v5 v6
  = du_'8864''45'Κ_570 v0 v1 v2 v3 v5 v6
du_'8864''45'Κ_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> AgdaAny -> T_Poly_176 -> T_Poly_176
du_'8864''45'Κ_570 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C__'8848'__208 v6 v7 v8
        -> case coe v7 of
             C_Κ_210 v9
               -> coe
                    C__'8848'__208 (coe (0 :: Integer))
                    (coe
                       C_Κ_210
                       (coe
                          MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316
                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                             (coe v2))
                          v4 v9))
                    (coe v8)
             C_'8512'_218 v10 v11
               -> let v12 = subInt (coe v6) (coe (1 :: Integer)) in
                  coe
                    (let v13
                           = coe
                               du_'8864''45'Κ'45'inj_580 (coe v0) (coe v1) (coe v2) (coe v12)
                               (coe v4) (coe v10) in
                     coe
                       (case coe v13 of
                          MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                            -> coe
                                 C__'8848'__208 (coe (0 :: Integer))
                                 (coe
                                    C_Κ_210
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v3))
                          MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v14
                            -> case coe v14 of
                                 MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v15 v16
                                   -> case coe v15 of
                                        C__Δ__172 v17 v18
                                          -> case coe v17 of
                                               C__'8800'0_232 v19
                                                 -> case coe v18 of
                                                      0 -> case coe v16 of
                                                             MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                               -> case coe v19 of
                                                                    C__'8848'__208 v21 v22 v23
                                                                      -> coe
                                                                           C__'8848'__208 (coe v21)
                                                                           (coe v22)
                                                                           (coe
                                                                              MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                 v23)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                              (coe v8))
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v21
                                                               -> coe
                                                                    C__'8848'__208 (coe v6)
                                                                    (coe
                                                                       C_'8512'_218
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                          (coe
                                                                             C__Δ__172
                                                                             (coe
                                                                                C__'8800'0_232 v19)
                                                                             (coe (0 :: Integer)))
                                                                          (coe v16))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                    (coe v8)
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> coe
                                                             C__'8848'__208 (coe v6)
                                                             (coe
                                                                C_'8512'_218
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                   (coe
                                                                      C__Δ__172
                                                                      (coe C__'8800'0_232 v19)
                                                                      (coe v18))
                                                                   (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                             (coe v8)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊠-⅀
d_'8864''45''8512'_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_Poly_176 -> T_Poly_176
d_'8864''45''8512'_576 v0 v1 v2 v3 v4 ~v5 v6 v7 v8
  = du_'8864''45''8512'_576 v0 v1 v2 v3 v4 v6 v7 v8
du_'8864''45''8512'_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_Poly_176 -> T_Poly_176
du_'8864''45''8512'_576 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      C__'8848'__208 v8 v9 v10
        -> case coe v9 of
             C_Κ_210 v11
               -> let v12
                        = coe
                            du_'8864''45'Κ'45'inj_580 (coe v0) (coe v1) (coe v2) (coe v3)
                            (coe v11) (coe v5) in
                  coe
                    (case coe v12 of
                       MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                         -> coe
                              C__'8848'__208 (coe (0 :: Integer))
                              (coe
                                 C_Κ_210
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                       (coe v2))))
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v4))
                       MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v13
                         -> case coe v13 of
                              MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v14 v15
                                -> case coe v14 of
                                     C__Δ__172 v16 v17
                                       -> case coe v16 of
                                            C__'8800'0_232 v18
                                              -> case coe v17 of
                                                   0 -> case coe v15 of
                                                          MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                            -> case coe v18 of
                                                                 C__'8848'__208 v20 v21 v22
                                                                   -> coe
                                                                        C__'8848'__208 (coe v20)
                                                                        (coe v21)
                                                                        (coe
                                                                           MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                              v22)
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                           (coe v6))
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v20
                                                            -> coe
                                                                 C__'8848'__208
                                                                 (coe
                                                                    addInt (coe (1 :: Integer))
                                                                    (coe v3))
                                                                 (coe
                                                                    C_'8512'_218
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                       (coe
                                                                          C__Δ__172
                                                                          (coe C__'8800'0_232 v18)
                                                                          (coe (0 :: Integer)))
                                                                       (coe v15))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                 (coe v6)
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> coe
                                                          C__'8848'__208
                                                          (coe addInt (coe (1 :: Integer)) (coe v3))
                                                          (coe
                                                             C_'8512'_218
                                                             (coe
                                                                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                (coe
                                                                   C__Δ__172
                                                                   (coe C__'8800'0_232 v18)
                                                                   (coe v17))
                                                                (coe v15))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                          (coe v6)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             C_'8512'_218 v12 v13
               -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
                  coe
                    (coe
                       du_'8864''45'match_598 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v14) (coe v4) (coe v6) (coe v10)
                       (coe du_inj'45'compare_106 (coe v6) (coe v10)) (coe v5) (coe v12))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊠-Κ-inj
d_'8864''45'Κ'45'inj_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d_'8864''45'Κ'45'inj_580 v0 v1 v2 v3 ~v4 v5 v6
  = du_'8864''45'Κ'45'inj_580 v0 v1 v2 v3 v5 v6
du_'8864''45'Κ'45'inj_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
du_'8864''45'Κ'45'inj_580 v0 v1 v2 v3 v4 v5
  = coe
      du_para_340 (coe v2)
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8321'_138
         (coe
            du_'8864''45'Κ_570 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (coe v5)
-- Tactic.RingSolver.Core.Polynomial.Base.⊠-⅀-inj
d_'8864''45''8512''45'inj_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  T_Poly_176 -> T_Poly_176
d_'8864''45''8512''45'inj_586 v0 v1 v2 v3 v4 ~v5 v6 v7 v8
  = du_'8864''45''8512''45'inj_586 v0 v1 v2 v3 v4 v6 v7 v8
du_'8864''45''8512''45'inj_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  T_Poly_176 -> T_Poly_176
du_'8864''45''8512''45'inj_586 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      C__'8848'__208 v8 v9 v10
        -> case coe v9 of
             C_Κ_210 v11
               -> let v12
                        = coe
                            du_'8864''45'Κ'45'inj_580 (coe v0) (coe v1) (coe v2) (coe v3)
                            (coe v11) (coe v6) in
                  coe
                    (case coe v12 of
                       MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                         -> coe
                              C__'8848'__208 (coe (0 :: Integer))
                              (coe
                                 C_Κ_210
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                       (coe v2))))
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v4))
                       MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v13
                         -> case coe v13 of
                              MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v14 v15
                                -> case coe v14 of
                                     C__Δ__172 v16 v17
                                       -> case coe v16 of
                                            C__'8800'0_232 v18
                                              -> case coe v17 of
                                                   0 -> case coe v15 of
                                                          MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                            -> case coe v18 of
                                                                 C__'8848'__208 v20 v21 v22
                                                                   -> coe
                                                                        C__'8848'__208 (coe v20)
                                                                        (coe v21)
                                                                        (coe
                                                                           MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                              v22)
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                           (coe v5))
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v20
                                                            -> coe
                                                                 C__'8848'__208
                                                                 (coe
                                                                    addInt (coe (1 :: Integer))
                                                                    (coe v3))
                                                                 (coe
                                                                    C_'8512'_218
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                       (coe
                                                                          C__Δ__172
                                                                          (coe C__'8800'0_232 v18)
                                                                          (coe (0 :: Integer)))
                                                                       (coe v15))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                 (coe v5)
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> coe
                                                          C__'8848'__208
                                                          (coe addInt (coe (1 :: Integer)) (coe v3))
                                                          (coe
                                                             C_'8512'_218
                                                             (coe
                                                                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                (coe
                                                                   C__Δ__172
                                                                   (coe C__'8800'0_232 v18)
                                                                   (coe v17))
                                                                (coe v15))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                          (coe v5)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             C_'8512'_218 v12 v13
               -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
                  coe
                    (coe
                       du_'8864''45'match_598 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v14) (coe v4) (coe v5) (coe v10)
                       (coe du_inj'45'compare_106 (coe v5) (coe v10)) (coe v6) (coe v12))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊠-match
d_'8864''45'match_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_InjectionOrdering_66 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 -> T_Poly_176
d_'8864''45'match_598 v0 v1 v2 v3 v4 v5 ~v6 v7 v8 v9 v10 v11
  = du_'8864''45'match_598 v0 v1 v2 v3 v4 v5 v7 v8 v9 v10 v11
du_'8864''45'match_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  T_InjectionOrdering_66 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 -> T_Poly_176
du_'8864''45'match_598 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C_inj'45'lt_78 v13
        -> let v15
                 = coe
                     du_para_340 (coe v2)
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                        (coe
                           du_'8864''45''8512''45'inj_586 (coe v0) (coe v1) (coe v2) (coe v3)
                           (coe v4) (coe v13) (coe v9)))
                     (coe v10) in
           coe
             (case coe v15 of
                MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                  -> coe
                       C__'8848'__208 (coe (0 :: Integer))
                       (coe
                          C_Κ_210
                          (coe
                             MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                (coe v2))))
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v5))
                MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v16
                  -> case coe v16 of
                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v17 v18
                         -> case coe v17 of
                              C__Δ__172 v19 v20
                                -> case coe v19 of
                                     C__'8800'0_232 v21
                                       -> case coe v20 of
                                            0 -> case coe v18 of
                                                   MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                     -> case coe v21 of
                                                          C__'8848'__208 v23 v24 v25
                                                            -> coe
                                                                 C__'8848'__208 (coe v23) (coe v24)
                                                                 (coe
                                                                    MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                       v25)
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                    (coe v7))
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v23
                                                     -> coe
                                                          C__'8848'__208
                                                          (coe addInt (coe (1 :: Integer)) (coe v4))
                                                          (coe
                                                             C_'8512'_218
                                                             (coe
                                                                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                (coe
                                                                   C__Δ__172
                                                                   (coe C__'8800'0_232 v21)
                                                                   (coe (0 :: Integer)))
                                                                (coe v18))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                          (coe v7)
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> coe
                                                   C__'8848'__208
                                                   (coe addInt (coe (1 :: Integer)) (coe v4))
                                                   (coe
                                                      C_'8512'_218
                                                      (coe
                                                         MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                         (coe
                                                            C__Δ__172 (coe C__'8800'0_232 v21)
                                                            (coe v20))
                                                         (coe v18))
                                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                   (coe v7)
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      C_inj'45'gt_88 v14
        -> let v15
                 = coe
                     du_para_340 (coe v2)
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                        (coe
                           du_'8864''45''8512''45'inj_586 (coe v0) (coe v1) (coe v2) (coe v4)
                           (coe v3) (coe v14) (coe v10)))
                     (coe v9) in
           coe
             (case coe v15 of
                MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                  -> coe
                       C__'8848'__208 (coe (0 :: Integer))
                       (coe
                          C_Κ_210
                          (coe
                             MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                (coe v2))))
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v5))
                MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v16
                  -> case coe v16 of
                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v17 v18
                         -> case coe v17 of
                              C__Δ__172 v19 v20
                                -> case coe v19 of
                                     C__'8800'0_232 v21
                                       -> case coe v20 of
                                            0 -> case coe v18 of
                                                   MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                     -> case coe v21 of
                                                          C__'8848'__208 v23 v24 v25
                                                            -> coe
                                                                 C__'8848'__208 (coe v23) (coe v24)
                                                                 (coe
                                                                    MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                       v25)
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                    (coe v6))
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v23
                                                     -> coe
                                                          C__'8848'__208
                                                          (coe addInt (coe (1 :: Integer)) (coe v3))
                                                          (coe
                                                             C_'8512'_218
                                                             (coe
                                                                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                (coe
                                                                   C__Δ__172
                                                                   (coe C__'8800'0_232 v21)
                                                                   (coe (0 :: Integer)))
                                                                (coe v18))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                          (coe v6)
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> coe
                                                   C__'8848'__208
                                                   (coe addInt (coe (1 :: Integer)) (coe v3))
                                                   (coe
                                                      C_'8512'_218
                                                      (coe
                                                         MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                         (coe
                                                            C__Δ__172 (coe C__'8800'0_232 v21)
                                                            (coe v20))
                                                         (coe v18))
                                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                   (coe v6)
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      C_inj'45'eq_94
        -> case coe v10 of
             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v13 v14
               -> case coe v13 of
                    C__Δ__172 v15 v16
                      -> case coe v15 of
                           C__'8800'0_232 v17
                             -> case coe v14 of
                                  MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                    -> let v19
                                             = coe
                                                 du__'9043''42'__254
                                                 (coe
                                                    du_para_340 (coe v2)
                                                    (coe
                                                       MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                                       (coe
                                                          du_'8864''45'step'8242'_560 (coe v0)
                                                          (coe v1) (coe v2) (coe v3) (coe v17)))
                                                    (coe v9))
                                                 (coe v16) in
                                       coe
                                         (case coe v19 of
                                            MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                              -> coe
                                                   C__'8848'__208 (coe (0 :: Integer))
                                                   (coe
                                                      C_Κ_210
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                                         (coe
                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                            (coe v2))))
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222
                                                      (coe v5))
                                            MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v20
                                              -> case coe v20 of
                                                   MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v21 v22
                                                     -> case coe v21 of
                                                          C__Δ__172 v23 v24
                                                            -> case coe v23 of
                                                                 C__'8800'0_232 v25
                                                                   -> case coe v24 of
                                                                        0 -> case coe v22 of
                                                                               MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                                 -> case coe v25 of
                                                                                      C__'8848'__208 v27 v28 v29
                                                                                        -> coe
                                                                                             C__'8848'__208
                                                                                             (coe
                                                                                                v27)
                                                                                             (coe
                                                                                                v28)
                                                                                             (coe
                                                                                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                                   v29)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                                                (coe
                                                                                                   v6))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v27
                                                                                 -> coe
                                                                                      C__'8848'__208
                                                                                      (coe
                                                                                         addInt
                                                                                         (coe
                                                                                            (1 ::
                                                                                               Integer))
                                                                                         (coe v3))
                                                                                      (coe
                                                                                         C_'8512'_218
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                            (coe
                                                                                               C__Δ__172
                                                                                               (coe
                                                                                                  C__'8800'0_232
                                                                                                  v25)
                                                                                               (coe
                                                                                                  (0 ::
                                                                                                     Integer)))
                                                                                            (coe
                                                                                               v22))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                      (coe v6)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> coe
                                                                               C__'8848'__208
                                                                               (coe
                                                                                  addInt
                                                                                  (coe
                                                                                     (1 :: Integer))
                                                                                  (coe v3))
                                                                               (coe
                                                                                  C_'8512'_218
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                     (coe
                                                                                        C__Δ__172
                                                                                        (coe
                                                                                           C__'8800'0_232
                                                                                           v25)
                                                                                        (coe v24))
                                                                                     (coe v22))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                               (coe v6)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                  MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v19
                                    -> let v20
                                             = coe
                                                 du__'9043''42'__254
                                                 (coe
                                                    du_para_340 (coe v2)
                                                    (coe
                                                       (\ v20 ->
                                                          case coe v20 of
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                              -> case coe v21 of
                                                                   C__'8848'__208 v23 v24 v25
                                                                     -> coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe
                                                                             du_'8864''45'step_566
                                                                             v0 v1 v2 v23 v3 v24 v25
                                                                             v17)
                                                                          (coe
                                                                             d_'8862''45'coeffs_398
                                                                             (coe v0) (coe v1)
                                                                             (coe v2) (coe v3)
                                                                             (coe
                                                                                du_para_340 (coe v2)
                                                                                (coe
                                                                                   MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                                                                   (coe
                                                                                      du_'8864''45'step_566
                                                                                      v0 v1 v2 v23
                                                                                      v3 v24 v25))
                                                                                (coe v19))
                                                                             (coe v22))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                    (coe v9))
                                                 (coe v16) in
                                       coe
                                         (case coe v20 of
                                            MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                              -> coe
                                                   C__'8848'__208 (coe (0 :: Integer))
                                                   (coe
                                                      C_Κ_210
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                                         (coe
                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                            (coe v2))))
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222
                                                      (coe v5))
                                            MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v21
                                              -> case coe v21 of
                                                   MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v22 v23
                                                     -> case coe v22 of
                                                          C__Δ__172 v24 v25
                                                            -> case coe v24 of
                                                                 C__'8800'0_232 v26
                                                                   -> case coe v25 of
                                                                        0 -> case coe v23 of
                                                                               MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                                 -> case coe v26 of
                                                                                      C__'8848'__208 v28 v29 v30
                                                                                        -> coe
                                                                                             C__'8848'__208
                                                                                             (coe
                                                                                                v28)
                                                                                             (coe
                                                                                                v29)
                                                                                             (coe
                                                                                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                                   v30)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                                                (coe
                                                                                                   v6))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v28
                                                                                 -> coe
                                                                                      C__'8848'__208
                                                                                      (coe
                                                                                         addInt
                                                                                         (coe
                                                                                            (1 ::
                                                                                               Integer))
                                                                                         (coe v3))
                                                                                      (coe
                                                                                         C_'8512'_218
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                            (coe
                                                                                               C__Δ__172
                                                                                               (coe
                                                                                                  C__'8800'0_232
                                                                                                  v26)
                                                                                               (coe
                                                                                                  (0 ::
                                                                                                     Integer)))
                                                                                            (coe
                                                                                               v23))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                      (coe v6)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> coe
                                                                               C__'8848'__208
                                                                               (coe
                                                                                  addInt
                                                                                  (coe
                                                                                     (1 :: Integer))
                                                                                  (coe v3))
                                                                               (coe
                                                                                  C_'8512'_218
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                     (coe
                                                                                        C__Δ__172
                                                                                        (coe
                                                                                           C__'8800'0_232
                                                                                           v26)
                                                                                        (coe v25))
                                                                                     (coe v23))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                               (coe v6)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊠-coeffs
d_'8864''45'coeffs_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
d_'8864''45'coeffs_602 v0 v1 v2 v3 ~v4 v5 v6
  = du_'8864''45'coeffs_602 v0 v1 v2 v3 v5 v6
du_'8864''45'coeffs_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'42'_30
du_'8864''45'coeffs_602 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v6 v7
        -> case coe v6 of
             C__Δ__172 v8 v9
               -> case coe v8 of
                    C__'8800'0_232 v10
                      -> case coe v7 of
                           MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                             -> coe
                                  du__'9043''42'__254
                                  (coe
                                     du_para_340 (coe v2)
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                        (coe
                                           du_'8864''45'step'8242'_560 (coe v0) (coe v1) (coe v2)
                                           (coe v3) (coe v10)))
                                     (coe v4))
                                  (coe v9)
                           MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v12
                             -> coe
                                  du__'9043''42'__254
                                  (coe
                                     du_para_340 (coe v2)
                                     (coe
                                        (\ v13 ->
                                           case coe v13 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                               -> case coe v14 of
                                                    C__'8848'__208 v16 v17 v18
                                                      -> coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              du_'8864''45'step_566 v0 v1 v2 v16 v3
                                                              v17 v18 v10)
                                                           (coe
                                                              d_'8862''45'coeffs_398 (coe v0)
                                                              (coe v1) (coe v2) (coe v3)
                                                              (coe
                                                                 du_para_340 (coe v2)
                                                                 (coe
                                                                    MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                                                    (coe
                                                                       du_'8864''45'step_566 v0 v1
                                                                       v2 v16 v3 v17 v18))
                                                                 (coe v12))
                                                              (coe v15))
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                     (coe v4))
                                  (coe v9)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base.⊠-cons
d_'8864''45'cons_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  T_Poly_176 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8864''45'cons_606 v0 v1 v2 v3 ~v4 v5 v6 v7
  = du_'8864''45'cons_606 v0 v1 v2 v3 v5 v6 v7
du_'8864''45'cons_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer ->
  T_Poly_176 ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8864''45'cons_606 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
        -> case coe v7 of
             C__'8848'__208 v9 v10 v11
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe du_'8864''45'step_566 v0 v1 v2 v9 v3 v10 v11 v4)
                    (coe
                       d_'8862''45'coeffs_398 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe
                          du_para_340 (coe v2)
                          (coe
                             MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                             (coe du_'8864''45'step_566 v0 v1 v2 v9 v3 v10 v11))
                          (coe v5))
                       (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base._⊠_
d__'8864'__740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> T_Poly_176 -> T_Poly_176 -> T_Poly_176
d__'8864'__740 v0 v1 v2 v3
  = coe
      du_'8864''45'step'8242'_560 (coe v0) (coe v1) (coe v2) (coe v3)
-- Tactic.RingSolver.Core.Polynomial.Base.κ
d_κ_744 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> AgdaAny -> T_Poly_176
d_κ_744 ~v0 v1 v2 = du_κ_744 v1 v2
du_κ_744 :: Integer -> AgdaAny -> T_Poly_176
du_κ_744 v0 v1
  = coe
      C__'8848'__208 (coe (0 :: Integer)) (coe C_Κ_210 (coe v1))
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Base.ι
d_ι_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> T_Poly_176
d_ι_750 ~v0 ~v1 v2 v3 v4 = du_ι_750 v2 v3 v4
du_ι_750 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> T_Poly_176
du_ι_750 v0 v1 v2
  = let v3 = coe du_go_140 (coe v1) (coe v2) in
    coe
      (let v4
             = let v4 = coe MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 in
               coe
                 (let v5
                        = coe
                            C__'8848'__208 (coe (0 :: Integer))
                            (coe
                               C_Κ_210
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322
                                  (coe
                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                     (coe v0))))
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222
                               (coe du_go_140 (coe v1) (coe v2))) in
                  coe
                    (let v6 = 1 :: Integer in
                     coe
                       (coe
                          du_'46'extendedlambda1_286 (coe v5) (coe v6) (coe v4)
                          (let v7
                                 = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                        (coe v0)) in
                           coe
                             (let v8
                                    = coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                        v0 v7 in
                              coe
                                (if coe v8
                                   then coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                          (coe v8)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                   else coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                          (coe v8)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))))) in
       coe
         (let v5 = coe du_space'8804''8242'n_150 (coe v2) in
          coe
            (case coe v4 of
               MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                 -> coe
                      C__'8848'__208 (coe (0 :: Integer))
                      (coe
                         C_Κ_210
                         (coe
                            MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                            (coe
                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                               (coe v0))))
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v1))
               MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v6
                 -> case coe v6 of
                      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v7 v8
                        -> case coe v7 of
                             C__Δ__172 v9 v10
                               -> case coe v9 of
                                    C__'8800'0_232 v11
                                      -> case coe v10 of
                                           0 -> case coe v8 of
                                                  MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                    -> case coe v11 of
                                                         C__'8848'__208 v13 v14 v15
                                                           -> coe
                                                                C__'8848'__208 (coe v13) (coe v14)
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                   (coe
                                                                      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                      v15)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                   (coe v5))
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v13
                                                    -> coe
                                                         C__'8848'__208
                                                         (coe addInt (coe (1 :: Integer)) (coe v3))
                                                         (coe
                                                            C_'8512'_218
                                                            (coe
                                                               MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                               (coe
                                                                  C__Δ__172 (coe C__'8800'0_232 v11)
                                                                  (coe (0 :: Integer)))
                                                               (coe v8))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                         (coe v5)
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           _ -> coe
                                                  C__'8848'__208
                                                  (coe addInt (coe (1 :: Integer)) (coe v3))
                                                  (coe
                                                     C_'8512'_218
                                                     (coe
                                                        MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                        (coe
                                                           C__Δ__172 (coe C__'8800'0_232 v11)
                                                           (coe v10))
                                                        (coe v8))
                                                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                  (coe v5)
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             _ -> MAlonzo.RTE.mazUnreachableError
                      _ -> MAlonzo.RTE.mazUnreachableError
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Tactic.RingSolver.Core.Polynomial.Base.⊡-mult
d_'8865''45'mult_756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> Integer -> T_Poly_176 -> T_Poly_176
d_'8865''45'mult_756 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      0 -> coe v5
      _ -> let v6 = subInt (coe v4) (coe (1 :: Integer)) in
           coe
             (coe
                du_'8864''45'step'8242'_560 v0 v1 v2 v3
                (d_'8865''45'mult_756
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) (coe v5))
                v5)
-- Tactic.RingSolver.Core.Polynomial.Base._⊡_+1
d__'8865'_'43'1_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> T_Poly_176 -> Integer -> T_Poly_176
d__'8865'_'43'1_766 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C__'8848'__208 v6 v7 v8
        -> case coe v7 of
             C_Κ_210 v9
               -> coe
                    C__'8848'__208 (coe (0 :: Integer))
                    (coe
                       C_Κ_210
                       (let v10
                              = coe
                                  MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                        (coe v2))) in
                        coe
                          (let v11
                                 = coe
                                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v10
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                        (coe v10) (coe v5) (coe v9))
                                     v9 in
                           coe
                             (case coe v5 of
                                0 -> coe v9
                                _ -> coe v11))))
                    (coe v8)
             C_'8512'_218 v10 v11
               -> let v12 = subInt (coe v6) (coe (1 :: Integer)) in
                  coe
                    (case coe v10 of
                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v13 v14
                         -> case coe v13 of
                              C__Δ__172 v15 v16
                                -> case coe v14 of
                                     MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                       -> let v17
                                                = let v17
                                                        = d__'8865'_'43'1_766
                                                            (coe v0) (coe v1) (coe v2) (coe v12)
                                                            (coe d_poly_228 (coe v15)) (coe v5) in
                                                  coe
                                                    (let v18
                                                           = addInt
                                                               (coe mulInt (coe v5) (coe v16))
                                                               (coe v16) in
                                                     coe
                                                       (coe
                                                          du_'46'extendedlambda1_286 (coe v17)
                                                          (coe v18) (coe v14)
                                                          (case coe v17 of
                                                             C__'8848'__208 v19 v20 v21
                                                               -> case coe v20 of
                                                                    C_Κ_210 v22
                                                                      -> let v23
                                                                               = coe
                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                                                   v2 v22 in
                                                                         coe
                                                                           (if coe v23
                                                                              then coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                     (coe v23)
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              else coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                     (coe v23)
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                    C_'8512'_218 v23 v24
                                                                      -> coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError))) in
                                          coe
                                            (case coe v17 of
                                               MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                 -> coe
                                                      C__'8848'__208 (coe (0 :: Integer))
                                                      (coe
                                                         C_Κ_210
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                                            (coe
                                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222
                                                         (coe v3))
                                               MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v18
                                                 -> case coe v18 of
                                                      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v19 v20
                                                        -> case coe v19 of
                                                             C__Δ__172 v21 v22
                                                               -> case coe v21 of
                                                                    C__'8800'0_232 v23
                                                                      -> case coe v22 of
                                                                           0 -> case coe v20 of
                                                                                  MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                                    -> case coe
                                                                                              v23 of
                                                                                         C__'8848'__208 v25 v26 v27
                                                                                           -> coe
                                                                                                C__'8848'__208
                                                                                                (coe
                                                                                                   v25)
                                                                                                (coe
                                                                                                   v26)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                                      v27)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                                                   (coe
                                                                                                      v8))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                  MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v25
                                                                                    -> coe
                                                                                         C__'8848'__208
                                                                                         (coe v6)
                                                                                         (coe
                                                                                            C_'8512'_218
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                               (coe
                                                                                                  C__Δ__172
                                                                                                  (coe
                                                                                                     C__'8800'0_232
                                                                                                     v23)
                                                                                                  (coe
                                                                                                     (0 ::
                                                                                                        Integer)))
                                                                                               (coe
                                                                                                  v20))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                         (coe v8)
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                           _ -> coe
                                                                                  C__'8848'__208
                                                                                  (coe v6)
                                                                                  (coe
                                                                                     C_'8512'_218
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                                        (coe
                                                                                           C__Δ__172
                                                                                           (coe
                                                                                              C__'8800'0_232
                                                                                              v23)
                                                                                           (coe
                                                                                              v22))
                                                                                        (coe v20))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                  (coe v8)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                     MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v17
                                       -> coe
                                            d_'8865''45'mult_756 (coe v0) (coe v1) (coe v2) (coe v3)
                                            (coe v5)
                                            (coe
                                               C__'8848'__208 (coe v6) (coe C_'8512'_218 v10 v11)
                                               (coe v8))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Base._⊡_
d__'8865'__790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_RawCoeff_14 ->
  Integer -> T_Poly_176 -> Integer -> T_Poly_176
d__'8865'__790 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      0 -> coe
             C__'8848'__208 (coe (0 :: Integer))
             (coe
                C_Κ_210
                (coe
                   MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                      (coe v2))))
             (coe
                MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v3))
      _ -> let v6 = subInt (coe v5) (coe (1 :: Integer)) in
           coe
             (coe
                d__'8865'_'43'1_766 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v6))
