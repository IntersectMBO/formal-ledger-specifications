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

module MAlonzo.Code.Data.Fin.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Definitions.RawMagma
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

-- Data.Fin.Base.Fin
d_Fin_10 a0 = ()
data T_Fin_10 = C_zero_12 | C_suc_16 T_Fin_10
-- Data.Fin.Base.toℕ
d_toℕ_18 :: Integer -> T_Fin_10 -> Integer
d_toℕ_18 ~v0 v1 = du_toℕ_18 v1
du_toℕ_18 :: T_Fin_10 -> Integer
du_toℕ_18 v0
  = case coe v0 of
      C_zero_12 -> coe (0 :: Integer)
      C_suc_16 v2
        -> coe addInt (coe (1 :: Integer)) (coe du_toℕ_18 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.Fin′
d_Fin'8242'_22 :: Integer -> T_Fin_10 -> ()
d_Fin'8242'_22 = erased
-- Data.Fin.Base.cast
d_cast_26 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_Fin_10 -> T_Fin_10
d_cast_26 v0 ~v1 ~v2 v3 = du_cast_26 v0 v3
du_cast_26 :: Integer -> T_Fin_10 -> T_Fin_10
du_cast_26 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> case coe v1 of
             C_zero_12 -> coe C_zero_12
             C_suc_16 v3
               -> coe
                    C_suc_16
                    (coe
                       du_cast_26
                       (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (1 :: Integer))
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.fromℕ
d_fromℕ_70 :: Integer -> T_Fin_10
d_fromℕ_70 v0
  = case coe v0 of
      0 -> coe C_zero_12
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe C_suc_16 (d_fromℕ_70 (coe v1)))
-- Data.Fin.Base.fromℕ<
d_fromℕ'60'_74 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> T_Fin_10
d_fromℕ'60'_74 v0 ~v1 ~v2 = du_fromℕ'60'_74 v0
du_fromℕ'60'_74 :: Integer -> T_Fin_10
du_fromℕ'60'_74 v0
  = case coe v0 of
      0 -> coe C_zero_12
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe C_suc_16 (coe du_fromℕ'60'_74 (coe v1)))
-- Data.Fin.Base.fromℕ<″
d_fromℕ'60''8243'_84 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  T_Fin_10
d_fromℕ'60''8243'_84 v0 ~v1 ~v2 = du_fromℕ'60''8243'_84 v0
du_fromℕ'60''8243'_84 :: Integer -> T_Fin_10
du_fromℕ'60''8243'_84 v0
  = case coe v0 of
      0 -> coe C_zero_12
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe C_suc_16 (coe du_fromℕ'60''8243'_84 (coe v1)))
-- Data.Fin.Base._↑ˡ_
d__'8593''737'__94 :: Integer -> T_Fin_10 -> Integer -> T_Fin_10
d__'8593''737'__94 ~v0 v1 ~v2 = du__'8593''737'__94 v1
du__'8593''737'__94 :: T_Fin_10 -> T_Fin_10
du__'8593''737'__94 v0 = coe v0
-- Data.Fin.Base._↑ʳ_
d__'8593''691'__106 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d__'8593''691'__106 ~v0 v1 v2 = du__'8593''691'__106 v1 v2
du__'8593''691'__106 :: Integer -> T_Fin_10 -> T_Fin_10
du__'8593''691'__106 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe C_suc_16 (coe du__'8593''691'__106 (coe v2) (coe v1)))
-- Data.Fin.Base.reduce≥
d_reduce'8805'_116 ::
  Integer ->
  Integer ->
  T_Fin_10 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> T_Fin_10
d_reduce'8805'_116 v0 ~v1 v2 ~v3 = du_reduce'8805'_116 v0 v2
du_reduce'8805'_116 :: Integer -> T_Fin_10 -> T_Fin_10
du_reduce'8805'_116 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                C_suc_16 v4 -> coe du_reduce'8805'_116 (coe v2) (coe v4)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.inject
d_inject_126 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_inject_126 ~v0 v1 v2 = du_inject_126 v1 v2
du_inject_126 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_inject_126 v0 v1
  = case coe v0 of
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_zero_12
             C_suc_16 v5 -> coe C_suc_16 (coe du_inject_126 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.inject!
d_inject'33'_136 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_inject'33'_136 ~v0 v1 v2 = du_inject'33'_136 v1 v2
du_inject'33'_136 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_inject'33'_136 v0 v1
  = case coe v0 of
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_zero_12
             C_suc_16 v5
               -> coe C_suc_16 (coe du_inject'33'_136 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.inject₁
d_inject'8321'_140 :: Integer -> T_Fin_10 -> T_Fin_10
d_inject'8321'_140 ~v0 v1 = du_inject'8321'_140 v1
du_inject'8321'_140 :: T_Fin_10 -> T_Fin_10
du_inject'8321'_140 v0 = coe v0
-- Data.Fin.Base.inject≤
d_inject'8804'_144 ::
  Integer ->
  Integer ->
  T_Fin_10 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> T_Fin_10
d_inject'8804'_144 ~v0 ~v1 v2 ~v3 = du_inject'8804'_144 v2
du_inject'8804'_144 :: T_Fin_10 -> T_Fin_10
du_inject'8804'_144 v0 = coe v0
-- Data.Fin.Base.lower₁
d_lower'8321'_152 ::
  Integer ->
  T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_Fin_10
d_lower'8321'_152 v0 v1 ~v2 = du_lower'8321'_152 v0 v1
du_lower'8321'_152 :: Integer -> T_Fin_10 -> T_Fin_10
du_lower'8321'_152 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
                erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                C_zero_12 -> coe C_zero_12
                C_suc_16 v4
                  -> coe C_suc_16 (coe du_lower'8321'_152 (coe v2) (coe v4))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.lower
d_lower_166 ::
  Integer ->
  Integer ->
  T_Fin_10 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> T_Fin_10
d_lower_166 ~v0 ~v1 v2 ~v3 = du_lower_166 v2
du_lower_166 :: T_Fin_10 -> T_Fin_10
du_lower_166 v0 = coe v0
-- Data.Fin.Base.strengthen
d_strengthen_180 :: Integer -> T_Fin_10 -> T_Fin_10
d_strengthen_180 ~v0 v1 = du_strengthen_180 v1
du_strengthen_180 :: T_Fin_10 -> T_Fin_10
du_strengthen_180 v0 = coe v0
-- Data.Fin.Base.splitAt
d_splitAt_188 ::
  Integer ->
  Integer -> T_Fin_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_splitAt_188 v0 ~v1 v2 = du_splitAt_188 v0 v2
du_splitAt_188 ::
  Integer -> T_Fin_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_splitAt_188 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                C_zero_12
                  -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe C_zero_12)
                C_suc_16 v4
                  -> coe
                       MAlonzo.Code.Data.Sum.Base.du_map'8321'_90 (coe C_suc_16)
                       (coe du_splitAt_188 (coe v2) (coe v4))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.join
d_join_202 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Fin_10
d_join_202 v0 ~v1 = du_join_202 v0
du_join_202 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Fin_10
du_join_202 v0
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (\ v1 -> v1)
      (coe du__'8593''691'__106 (coe v0))
-- Data.Fin.Base.quotRem
d_quotRem_214 ::
  Integer ->
  Integer -> T_Fin_10 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_quotRem_214 ~v0 v1 v2 = du_quotRem_214 v1 v2
du_quotRem_214 ::
  Integer -> T_Fin_10 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_quotRem_214 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
           (coe C_zero_12))
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Product.Base.du_map'8322'_150
           (\ v3 -> coe C_suc_16) (coe du_quotRem_214 (coe v0) (coe v2)))
      (coe du_splitAt_188 (coe v0) (coe v1))
-- Data.Fin.Base.remQuot
d_remQuot_226 ::
  Integer ->
  Integer -> T_Fin_10 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_remQuot_226 ~v0 v1 v2 = du_remQuot_226 v1 v2
du_remQuot_226 ::
  Integer -> T_Fin_10 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_remQuot_226 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_swap_370
      (coe du_quotRem_214 (coe v0) (coe v1))
-- Data.Fin.Base.quotient
d_quotient_232 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d_quotient_232 ~v0 v1 v2 = du_quotient_232 v1 v2
du_quotient_232 :: Integer -> T_Fin_10 -> T_Fin_10
du_quotient_232 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_remQuot_226 (coe v0) (coe v1))
-- Data.Fin.Base.remainder
d_remainder_238 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d_remainder_238 ~v0 v1 v2 = du_remainder_238 v1 v2
du_remainder_238 :: Integer -> T_Fin_10 -> T_Fin_10
du_remainder_238 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe du_remQuot_226 (coe v0) (coe v1))
-- Data.Fin.Base.combine
d_combine_244 ::
  Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_combine_244 ~v0 v1 v2 v3 = du_combine_244 v1 v2 v3
du_combine_244 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_combine_244 v0 v1 v2
  = case coe v1 of
      C_zero_12 -> coe v2
      C_suc_16 v4
        -> coe
             du__'8593''691'__106 (coe v0)
             (coe du_combine_244 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.finToFun
d_finToFun_260 ::
  Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_finToFun_260 v0 v1 v2 v3
  = let v4 = subInt (coe v1) (coe (1 :: Integer)) in
    coe
      (case coe v3 of
         C_zero_12
           -> coe
                du_quotient_232
                (coe MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v0) (coe v4))
                (coe v2)
         C_suc_16 v6
           -> coe
                d_finToFun_260 (coe v0) (coe v4)
                (coe
                   du_remainder_238
                   (coe MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v0) (coe v4))
                   (coe v2))
                (coe v6)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.funToFin
d_funToFin_276 ::
  Integer -> Integer -> (T_Fin_10 -> T_Fin_10) -> T_Fin_10
d_funToFin_276 v0 v1 v2
  = case coe v0 of
      0 -> coe C_zero_12
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_combine_244
                (coe MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v1) (coe v3))
                (coe v2 (coe C_zero_12))
                (coe
                   d_funToFin_276 (coe v3) (coe v1)
                   (coe (\ v4 -> coe v2 (coe C_suc_16 v4)))))
-- Data.Fin.Base.fold
d_fold_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T_Fin_10 -> AgdaAny
d_fold_294 ~v0 ~v1 v2 v3 v4 v5 = du_fold_294 v2 v3 v4 v5
du_fold_294 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T_Fin_10 -> AgdaAny
du_fold_294 v0 v1 v2 v3
  = case coe v3 of
      C_zero_12
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in coe (coe v2 v5)
      C_suc_16 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe v1 v6 (coe du_fold_294 (coe v6) (coe v1) (coe v2) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.fold′
d_fold'8242'_320 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (T_Fin_10 -> ()) ->
  (T_Fin_10 -> AgdaAny -> AgdaAny) -> AgdaAny -> T_Fin_10 -> AgdaAny
d_fold'8242'_320 ~v0 ~v1 ~v2 v3 v4 v5 = du_fold'8242'_320 v3 v4 v5
du_fold'8242'_320 ::
  (T_Fin_10 -> AgdaAny -> AgdaAny) -> AgdaAny -> T_Fin_10 -> AgdaAny
du_fold'8242'_320 v0 v1 v2
  = case coe v2 of
      C_zero_12 -> coe v1
      C_suc_16 v4
        -> coe
             v0 v4
             (coe du_fold'8242'_320 (coe (\ v5 -> coe v0 v5)) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.lift
d_lift_340 ::
  Integer ->
  Integer ->
  Integer -> (T_Fin_10 -> T_Fin_10) -> T_Fin_10 -> T_Fin_10
d_lift_340 ~v0 ~v1 v2 v3 v4 = du_lift_340 v2 v3 v4
du_lift_340 ::
  Integer -> (T_Fin_10 -> T_Fin_10) -> T_Fin_10 -> T_Fin_10
du_lift_340 v0 v1 v2
  = case coe v0 of
      0 -> coe v1 v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                C_zero_12 -> coe C_zero_12
                C_suc_16 v5
                  -> coe C_suc_16 (coe du_lift_340 (coe v3) (coe v1) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base._+_
d__'43'__360 ::
  Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d__'43'__360 ~v0 ~v1 v2 v3 = du__'43'__360 v2 v3
du__'43'__360 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du__'43'__360 v0 v1
  = case coe v0 of
      C_zero_12 -> coe v1
      C_suc_16 v3 -> coe C_suc_16 (coe du__'43'__360 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._-_
d__'45'__372 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d__'45'__372 ~v0 v1 v2 = du__'45'__372 v1 v2
du__'45'__372 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du__'45'__372 v0 v1
  = case coe v1 of
      C_zero_12 -> coe v0
      C_suc_16 v3
        -> case coe v0 of
             C_suc_16 v5 -> coe du__'45'__372 (coe v5) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._ℕ-_
d__ℕ'45'__384 :: Integer -> T_Fin_10 -> T_Fin_10
d__ℕ'45'__384 v0 v1
  = case coe v1 of
      C_zero_12 -> coe d_fromℕ_70 (coe v0)
      C_suc_16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__ℕ'45'__384 (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._ℕ-ℕ_
d__ℕ'45'ℕ__394 :: Integer -> T_Fin_10 -> Integer
d__ℕ'45'ℕ__394 v0 v1
  = case coe v1 of
      C_zero_12 -> coe v0
      C_suc_16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__ℕ'45'ℕ__394 (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.pred
d_pred_402 :: Integer -> T_Fin_10 -> T_Fin_10
d_pred_402 ~v0 v1 = du_pred_402 v1
du_pred_402 :: T_Fin_10 -> T_Fin_10
du_pred_402 v0
  = case coe v0 of
      C_zero_12 -> coe C_zero_12
      C_suc_16 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.opposite
d_opposite_406 :: Integer -> T_Fin_10 -> T_Fin_10
d_opposite_406 v0 v1
  = let v2 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (case coe v1 of
         C_zero_12 -> coe d_fromℕ_70 (coe v2)
         C_suc_16 v4 -> coe d_opposite_406 (coe v2) (coe v4)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.punchOut
d_punchOut_418 ::
  Integer ->
  T_Fin_10 ->
  T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_Fin_10
d_punchOut_418 ~v0 v1 v2 ~v3 = du_punchOut_418 v1 v2
du_punchOut_418 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_punchOut_418 v0 v1
  = case coe v0 of
      C_zero_12
        -> case coe v1 of
             C_zero_12
               -> coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
                    erased
             C_suc_16 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_zero_12
             C_suc_16 v5 -> coe C_suc_16 (coe du_punchOut_418 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.punchIn
d_punchIn_432 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_punchIn_432 ~v0 v1 v2 = du_punchIn_432 v1 v2
du_punchIn_432 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_punchIn_432 v0 v1
  = case coe v0 of
      C_zero_12 -> coe C_suc_16 v1
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_zero_12
             C_suc_16 v5 -> coe C_suc_16 (coe du_punchIn_432 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.pinch
d_pinch_442 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_pinch_442 ~v0 v1 v2 = du_pinch_442 v1 v2
du_pinch_442 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_pinch_442 v0 v1
  = case coe v1 of
      C_zero_12 -> coe C_zero_12
      C_suc_16 v3
        -> case coe v0 of
             C_zero_12 -> coe v3
             C_suc_16 v5 -> coe C_suc_16 (coe du_pinch_442 (coe v5) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._≤_
d__'8804'__456 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'8804'__456 = erased
-- Data.Fin.Base._≥_
d__'8805'__462 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'8805'__462 = erased
-- Data.Fin.Base._<_
d__'60'__468 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'60'__468 = erased
-- Data.Fin.Base._>_
d__'62'__474 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'62'__474 = erased
-- Data.Fin.Base._≰_
d__'8816'__482 :: Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'8816'__482 = erased
-- Data.Fin.Base._≮_
d__'8814'__490 :: Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'8814'__490 = erased
-- Data.Fin.Base.Ordering
d_Ordering_498 a0 a1 a2 = ()
data T_Ordering_498
  = C_less_506 T_Fin_10 | C_equal_510 | C_greater_516 T_Fin_10
-- Data.Fin.Base.compare
d_compare_522 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Ordering_498
d_compare_522 ~v0 v1 v2 = du_compare_522 v1 v2
du_compare_522 :: T_Fin_10 -> T_Fin_10 -> T_Ordering_498
du_compare_522 v0 v1
  = case coe v0 of
      C_zero_12
        -> case coe v1 of
             C_zero_12 -> coe C_equal_510
             C_suc_16 v4 -> coe C_less_506 (coe C_zero_12)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_greater_516 (coe C_zero_12)
             C_suc_16 v5
               -> let v6 = coe du_compare_522 (coe v3) (coe v5) in
                  coe
                    (case coe v6 of
                       C_less_506 v8 -> coe C_less_506 (coe C_suc_16 v8)
                       C_equal_510 -> coe C_equal_510
                       C_greater_516 v8 -> coe C_greater_516 (coe C_suc_16 v8)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.raise
d_raise_558 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d_raise_558 v0 v1 v2 = coe du__'8593''691'__106 v1 v2
-- Data.Fin.Base.inject+
d_inject'43'_564 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d_inject'43'_564 ~v0 ~v1 v2 = du_inject'43'_564 v2
du_inject'43'_564 :: T_Fin_10 -> T_Fin_10
du_inject'43'_564 v0 = coe v0
-- Data.Fin.Base._≺_
d__'8826'__570 a0 a1 = ()
newtype T__'8826'__570 = C__'8827'toℕ__576 T_Fin_10
