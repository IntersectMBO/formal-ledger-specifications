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
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

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
d_fromℕ_48 :: Integer -> T_Fin_10
d_fromℕ_48 v0
  = case coe v0 of
      0 -> coe C_zero_12
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe C_suc_16 (d_fromℕ_48 (coe v1)))
-- Data.Fin.Base.fromℕ<
d_fromℕ'60'_52 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> T_Fin_10
d_fromℕ'60'_52 v0 ~v1 ~v2 = du_fromℕ'60'_52 v0
du_fromℕ'60'_52 :: Integer -> T_Fin_10
du_fromℕ'60'_52 v0
  = case coe v0 of
      0 -> coe C_zero_12
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe C_suc_16 (coe du_fromℕ'60'_52 (coe v1)))
-- Data.Fin.Base.fromℕ<″
d_fromℕ'60''8243'_62 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  T_Fin_10
d_fromℕ'60''8243'_62 v0 ~v1 ~v2 = du_fromℕ'60''8243'_62 v0
du_fromℕ'60''8243'_62 :: Integer -> T_Fin_10
du_fromℕ'60''8243'_62 v0
  = case coe v0 of
      0 -> coe C_zero_12
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe C_suc_16 (coe du_fromℕ'60''8243'_62 (coe v1)))
-- Data.Fin.Base._↑ˡ_
d__'8593''737'__72 :: Integer -> T_Fin_10 -> Integer -> T_Fin_10
d__'8593''737'__72 ~v0 v1 ~v2 = du__'8593''737'__72 v1
du__'8593''737'__72 :: T_Fin_10 -> T_Fin_10
du__'8593''737'__72 v0 = coe v0
-- Data.Fin.Base._↑ʳ_
d__'8593''691'__84 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d__'8593''691'__84 ~v0 v1 v2 = du__'8593''691'__84 v1 v2
du__'8593''691'__84 :: Integer -> T_Fin_10 -> T_Fin_10
du__'8593''691'__84 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe C_suc_16 (coe du__'8593''691'__84 (coe v2) (coe v1)))
-- Data.Fin.Base.reduce≥
d_reduce'8805'_94 ::
  Integer ->
  Integer ->
  T_Fin_10 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> T_Fin_10
d_reduce'8805'_94 v0 ~v1 v2 ~v3 = du_reduce'8805'_94 v0 v2
du_reduce'8805'_94 :: Integer -> T_Fin_10 -> T_Fin_10
du_reduce'8805'_94 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                C_suc_16 v4 -> coe du_reduce'8805'_94 (coe v2) (coe v4)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.inject
d_inject_104 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_inject_104 ~v0 v1 v2 = du_inject_104 v1 v2
du_inject_104 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_inject_104 v0 v1
  = case coe v0 of
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_zero_12
             C_suc_16 v5 -> coe C_suc_16 (coe du_inject_104 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.inject!
d_inject'33'_114 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_inject'33'_114 ~v0 v1 v2 = du_inject'33'_114 v1 v2
du_inject'33'_114 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_inject'33'_114 v0 v1
  = case coe v0 of
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_zero_12
             C_suc_16 v5
               -> coe C_suc_16 (coe du_inject'33'_114 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.inject₁
d_inject'8321'_118 :: Integer -> T_Fin_10 -> T_Fin_10
d_inject'8321'_118 ~v0 v1 = du_inject'8321'_118 v1
du_inject'8321'_118 :: T_Fin_10 -> T_Fin_10
du_inject'8321'_118 v0 = coe v0
-- Data.Fin.Base.inject≤
d_inject'8804'_122 ::
  Integer ->
  Integer ->
  T_Fin_10 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> T_Fin_10
d_inject'8804'_122 ~v0 ~v1 v2 ~v3 = du_inject'8804'_122 v2
du_inject'8804'_122 :: T_Fin_10 -> T_Fin_10
du_inject'8804'_122 v0 = coe v0
-- Data.Fin.Base.lower₁
d_lower'8321'_130 ::
  Integer ->
  T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_Fin_10
d_lower'8321'_130 v0 v1 ~v2 = du_lower'8321'_130 v0 v1
du_lower'8321'_130 :: Integer -> T_Fin_10 -> T_Fin_10
du_lower'8321'_130 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                C_zero_12 -> coe C_zero_12
                C_suc_16 v4
                  -> coe C_suc_16 (coe du_lower'8321'_130 (coe v2) (coe v4))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.strengthen
d_strengthen_144 :: Integer -> T_Fin_10 -> T_Fin_10
d_strengthen_144 ~v0 v1 = du_strengthen_144 v1
du_strengthen_144 :: T_Fin_10 -> T_Fin_10
du_strengthen_144 v0 = coe v0
-- Data.Fin.Base.splitAt
d_splitAt_152 ::
  Integer ->
  Integer -> T_Fin_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_splitAt_152 v0 ~v1 v2 = du_splitAt_152 v0 v2
du_splitAt_152 ::
  Integer -> T_Fin_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_splitAt_152 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                C_zero_12
                  -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe C_zero_12)
                C_suc_16 v4
                  -> coe
                       MAlonzo.Code.Data.Sum.Base.du_map_84 (coe C_suc_16) (\ v5 -> v5)
                       (coe du_splitAt_152 (coe v2) (coe v4))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.join
d_join_166 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Fin_10
d_join_166 v0 ~v1 = du_join_166 v0
du_join_166 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Fin_10
du_join_166 v0
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (\ v1 -> v1)
      (coe du__'8593''691'__84 (coe v0))
-- Data.Fin.Base.quotRem
d_quotRem_178 ::
  Integer ->
  Integer -> T_Fin_10 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_quotRem_178 ~v0 v1 v2 = du_quotRem_178 v1 v2
du_quotRem_178 ::
  Integer -> T_Fin_10 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_quotRem_178 v0 v1
  = let v2 = coe du_splitAt_152 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                (coe C_zero_12)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe
                MAlonzo.Code.Data.Product.Base.du_map'8322'_150
                (\ v4 -> coe C_suc_16) (coe du_quotRem_178 (coe v0) (coe v3))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.remQuot
d_remQuot_208 ::
  Integer ->
  Integer -> T_Fin_10 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_remQuot_208 ~v0 v1 v2 = du_remQuot_208 v1 v2
du_remQuot_208 ::
  Integer -> T_Fin_10 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_remQuot_208 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_swap_370
      (coe du_quotRem_178 (coe v0) (coe v1))
-- Data.Fin.Base.quotient
d_quotient_214 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d_quotient_214 ~v0 v1 v2 = du_quotient_214 v1 v2
du_quotient_214 :: Integer -> T_Fin_10 -> T_Fin_10
du_quotient_214 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_remQuot_208 (coe v0) (coe v1))
-- Data.Fin.Base.remainder
d_remainder_220 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d_remainder_220 ~v0 v1 v2 = du_remainder_220 v1 v2
du_remainder_220 :: Integer -> T_Fin_10 -> T_Fin_10
du_remainder_220 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe du_remQuot_208 (coe v0) (coe v1))
-- Data.Fin.Base.combine
d_combine_226 ::
  Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_combine_226 ~v0 v1 v2 v3 = du_combine_226 v1 v2 v3
du_combine_226 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_combine_226 v0 v1 v2
  = case coe v1 of
      C_zero_12 -> coe v2
      C_suc_16 v4
        -> coe
             du__'8593''691'__84 (coe v0)
             (coe du_combine_226 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.finToFun
d_finToFun_242 ::
  Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_finToFun_242 v0 v1 v2 v3
  = let v4 = subInt (coe v1) (coe (1 :: Integer)) in
    coe
      (case coe v3 of
         C_zero_12
           -> coe
                du_quotient_214
                (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0) (coe v4))
                (coe v2)
         C_suc_16 v6
           -> coe
                d_finToFun_242 (coe v0) (coe v4)
                (coe
                   du_remainder_220
                   (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0) (coe v4))
                   (coe v2))
                (coe v6)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.funToFin
d_funToFin_258 ::
  Integer -> Integer -> (T_Fin_10 -> T_Fin_10) -> T_Fin_10
d_funToFin_258 v0 v1 v2
  = case coe v0 of
      0 -> coe C_zero_12
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_combine_226
                (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v1) (coe v3))
                (coe v2 (coe C_zero_12))
                (coe
                   d_funToFin_258 (coe v3) (coe v1)
                   (coe (\ v4 -> coe v2 (coe C_suc_16 v4)))))
-- Data.Fin.Base.fold
d_fold_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T_Fin_10 -> AgdaAny
d_fold_276 ~v0 ~v1 v2 v3 v4 v5 = du_fold_276 v2 v3 v4 v5
du_fold_276 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T_Fin_10 -> AgdaAny
du_fold_276 v0 v1 v2 v3
  = case coe v3 of
      C_zero_12
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in coe (coe v2 v5)
      C_suc_16 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe v1 v6 (coe du_fold_276 (coe v6) (coe v1) (coe v2) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.fold′
d_fold'8242'_302 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (T_Fin_10 -> ()) ->
  (T_Fin_10 -> AgdaAny -> AgdaAny) -> AgdaAny -> T_Fin_10 -> AgdaAny
d_fold'8242'_302 ~v0 ~v1 ~v2 v3 v4 v5 = du_fold'8242'_302 v3 v4 v5
du_fold'8242'_302 ::
  (T_Fin_10 -> AgdaAny -> AgdaAny) -> AgdaAny -> T_Fin_10 -> AgdaAny
du_fold'8242'_302 v0 v1 v2
  = case coe v2 of
      C_zero_12 -> coe v1
      C_suc_16 v4
        -> coe
             v0 v4
             (coe du_fold'8242'_302 (coe (\ v5 -> coe v0 v5)) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.lift
d_lift_322 ::
  Integer ->
  Integer ->
  Integer -> (T_Fin_10 -> T_Fin_10) -> T_Fin_10 -> T_Fin_10
d_lift_322 ~v0 ~v1 v2 v3 v4 = du_lift_322 v2 v3 v4
du_lift_322 ::
  Integer -> (T_Fin_10 -> T_Fin_10) -> T_Fin_10 -> T_Fin_10
du_lift_322 v0 v1 v2
  = case coe v0 of
      0 -> coe v1 v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                C_zero_12 -> coe C_zero_12
                C_suc_16 v5
                  -> coe C_suc_16 (coe du_lift_322 (coe v3) (coe v1) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base._+_
d__'43'__342 ::
  Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d__'43'__342 ~v0 ~v1 v2 v3 = du__'43'__342 v2 v3
du__'43'__342 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du__'43'__342 v0 v1
  = case coe v0 of
      C_zero_12 -> coe v1
      C_suc_16 v3 -> coe C_suc_16 (coe du__'43'__342 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._-_
d__'45'__354 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d__'45'__354 ~v0 v1 v2 = du__'45'__354 v1 v2
du__'45'__354 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du__'45'__354 v0 v1
  = case coe v1 of
      C_zero_12 -> coe v0
      C_suc_16 v3
        -> case coe v0 of
             C_suc_16 v5 -> coe du__'45'__354 (coe v5) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._ℕ-_
d__ℕ'45'__366 :: Integer -> T_Fin_10 -> T_Fin_10
d__ℕ'45'__366 v0 v1
  = case coe v1 of
      C_zero_12 -> coe d_fromℕ_48 (coe v0)
      C_suc_16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__ℕ'45'__366 (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._ℕ-ℕ_
d__ℕ'45'ℕ__376 :: Integer -> T_Fin_10 -> Integer
d__ℕ'45'ℕ__376 v0 v1
  = case coe v1 of
      C_zero_12 -> coe v0
      C_suc_16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__ℕ'45'ℕ__376 (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.pred
d_pred_384 :: Integer -> T_Fin_10 -> T_Fin_10
d_pred_384 ~v0 v1 = du_pred_384 v1
du_pred_384 :: T_Fin_10 -> T_Fin_10
du_pred_384 v0
  = case coe v0 of
      C_zero_12 -> coe C_zero_12
      C_suc_16 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.opposite
d_opposite_388 :: Integer -> T_Fin_10 -> T_Fin_10
d_opposite_388 v0 v1
  = let v2 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (case coe v1 of
         C_zero_12 -> coe d_fromℕ_48 (coe v2)
         C_suc_16 v4 -> coe d_opposite_388 (coe v2) (coe v4)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Base.punchOut
d_punchOut_400 ::
  Integer ->
  T_Fin_10 ->
  T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_Fin_10
d_punchOut_400 ~v0 v1 v2 ~v3 = du_punchOut_400 v1 v2
du_punchOut_400 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_punchOut_400 v0 v1
  = case coe v0 of
      C_zero_12
        -> case coe v1 of
             C_zero_12
               -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
             C_suc_16 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_zero_12
             C_suc_16 v5 -> coe C_suc_16 (coe du_punchOut_400 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.punchIn
d_punchIn_414 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_punchIn_414 ~v0 v1 v2 = du_punchIn_414 v1 v2
du_punchIn_414 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_punchIn_414 v0 v1
  = case coe v0 of
      C_zero_12 -> coe C_suc_16 v1
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_zero_12
             C_suc_16 v5 -> coe C_suc_16 (coe du_punchIn_414 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.pinch
d_pinch_424 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Fin_10
d_pinch_424 ~v0 v1 v2 = du_pinch_424 v1 v2
du_pinch_424 :: T_Fin_10 -> T_Fin_10 -> T_Fin_10
du_pinch_424 v0 v1
  = case coe v1 of
      C_zero_12 -> coe C_zero_12
      C_suc_16 v3
        -> case coe v0 of
             C_zero_12 -> coe v3
             C_suc_16 v5 -> coe C_suc_16 (coe du_pinch_424 (coe v5) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._≤_
d__'8804'__438 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'8804'__438 = erased
-- Data.Fin.Base._≥_
d__'8805'__444 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'8805'__444 = erased
-- Data.Fin.Base._<_
d__'60'__450 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'60'__450 = erased
-- Data.Fin.Base._>_
d__'62'__456 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10 -> ()
d__'62'__456 = erased
-- Data.Fin.Base.Ordering
d_Ordering_464 a0 a1 a2 = ()
data T_Ordering_464
  = C_less_472 T_Fin_10 | C_equal_476 | C_greater_482 T_Fin_10
-- Data.Fin.Base.compare
d_compare_488 :: Integer -> T_Fin_10 -> T_Fin_10 -> T_Ordering_464
d_compare_488 ~v0 v1 v2 = du_compare_488 v1 v2
du_compare_488 :: T_Fin_10 -> T_Fin_10 -> T_Ordering_464
du_compare_488 v0 v1
  = case coe v0 of
      C_zero_12
        -> case coe v1 of
             C_zero_12 -> coe C_equal_476
             C_suc_16 v4 -> coe C_less_472 (coe C_zero_12)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_suc_16 v3
        -> case coe v1 of
             C_zero_12 -> coe C_greater_482 (coe C_zero_12)
             C_suc_16 v5
               -> let v6 = coe du_compare_488 (coe v3) (coe v5) in
                  coe
                    (case coe v6 of
                       C_less_472 v8 -> coe C_less_472 (coe C_suc_16 v8)
                       C_equal_476 -> coe C_equal_476
                       C_greater_482 v8 -> coe C_greater_482 (coe C_suc_16 v8)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.raise
d_raise_524 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d_raise_524 v0 v1 v2 = coe du__'8593''691'__84 v1 v2
-- Data.Fin.Base.inject+
d_inject'43'_530 :: Integer -> Integer -> T_Fin_10 -> T_Fin_10
d_inject'43'_530 ~v0 ~v1 v2 = du_inject'43'_530 v2
du_inject'43'_530 :: T_Fin_10 -> T_Fin_10
du_inject'43'_530 v0 = coe v0
-- Data.Fin.Base._≺_
d__'8826'__536 a0 a1 = ()
newtype T__'8826'__536 = C__'8827'toℕ__542 T_Fin_10
