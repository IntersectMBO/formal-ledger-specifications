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

module MAlonzo.Code.Data.Nat.Primality where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Divisibility
import qualified MAlonzo.Code.Data.Nat.Divisibility.Core
import qualified MAlonzo.Code.Data.Nat.GCD
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Nat.Primality.Composite
d_Composite_8 :: Integer -> ()
d_Composite_8 = erased
-- Data.Nat.Primality.Prime
d_Prime_14 :: Integer -> ()
d_Prime_14 = erased
-- Data.Nat.Primality.composite?
d_composite'63'_20 ::
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_composite'63'_20 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      1 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
             (coe
                MAlonzo.Code.Data.Product.Base.du_map'8322'_150
                (coe
                   (\ v1 v2 ->
                      case coe v2 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                          -> case coe v4 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                                 -> coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                         (coe v6))
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError)))
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_anyUpTo'63'_6174
                (coe
                   (\ v1 ->
                      coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                           (coe (2 :: Integer)) (coe v1))
                        (coe
                           MAlonzo.Code.Data.Nat.Divisibility.d__'8739''63'__112 (coe v1)
                           (coe v0))))
                (coe v0))
-- Data.Nat.Primality.prime?
d_prime'63'_42 ::
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_prime'63'_42 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      1 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
             (coe (\ v1 v2 v3 v4 -> coe v1 v2 v4 v3))
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_allUpTo'63'_6238
                (coe
                   (\ v1 ->
                      coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__88
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                           (coe (2 :: Integer)) (coe v1))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_62
                           (coe
                              MAlonzo.Code.Data.Nat.Divisibility.d__'8739''63'__112 (coe v1)
                              (coe v0)))))
                (coe v0))
-- Data.Nat.Primality.composite⇒¬prime
d_composite'8658''172'prime_56 ::
  Integer ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_composite'8658''172'prime_56 = erased
-- Data.Nat.Primality.¬composite⇒prime
d_'172'composite'8658'prime_70 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'172'composite'8658'prime_70 = erased
-- Data.Nat.Primality.prime⇒¬composite
d_prime'8658''172'composite_82 ::
  Integer ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_prime'8658''172'composite_82 = erased
-- Data.Nat.Primality.¬prime⇒composite
d_'172'prime'8658'composite_96 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'172'prime'8658'composite_96 v0 ~v1 ~v2
  = du_'172'prime'8658'composite_96 v0
du_'172'prime'8658'composite_96 :: Integer -> AgdaAny
du_'172'prime'8658'composite_96 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_decidable'45'stable_164
      (coe d_composite'63'_20 (coe v0))
-- Data.Nat.Primality.euclidsLemma
d_euclidsLemma_110 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_euclidsLemma_110 v0 v1 v2 ~v3 v4
  = du_euclidsLemma_110 v0 v1 v2 v4
du_euclidsLemma_110 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_euclidsLemma_110 v0 v1 v2 v3
  = let v4 = subInt (coe v2) (coe (2 :: Integer)) in
    coe (coe du_result_132 (coe v0) (coe v1) (coe v4) (coe v3))
-- Data.Nat.Primality._.p∣rmn
d_p'8739'rmn_128 ::
  Integer ->
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_p'8739'rmn_128 v0 v1 v2 ~v3 v4 v5
  = du_p'8739'rmn_128 v0 v1 v2 v4 v5
du_p'8739'rmn_128 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_p'8739'rmn_128 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
              (coe
                 MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
            (coe v5))
         (addInt (coe (2 :: Integer)) (coe v2))
         (mulInt (coe mulInt (coe v4) (coe v0)) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                  (coe MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124)))
            (addInt (coe (2 :: Integer)) (coe v2)) (mulInt (coe v0) (coe v1))
            (mulInt (coe mulInt (coe v4) (coe v0)) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                     (coe MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124)))
               (mulInt (coe v0) (coe v1))
               (mulInt (coe v4) (coe mulInt (coe v0) (coe v1)))
               (mulInt (coe mulInt (coe v4) (coe v0)) (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                  (\ v6 v7 v8 v9 v10 -> v10)
                  (mulInt (coe v4) (coe mulInt (coe v0) (coe v1)))
                  (mulInt (coe mulInt (coe v4) (coe v0)) (coe v1))
                  (mulInt (coe mulInt (coe v4) (coe v0)) (coe v1))
                  (let v6
                         = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                             (coe
                                MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                           (coe v6))
                        (coe mulInt (coe mulInt (coe v4) (coe v0)) (coe v1))))
                  erased)
               (coe
                  MAlonzo.Code.Data.Nat.Divisibility.du_n'8739'm'42'n_278 (coe v4)))
            v3))
-- Data.Nat.Primality._.result
d_result_132 ::
  Integer ->
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_result_132 v0 v1 v2 ~v3 v4 = du_result_132 v0 v1 v2 v4
du_result_132 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_result_132 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Data.Nat.GCD.d_lemma_1080
              (coe v0) (coe addInt (coe (2 :: Integer)) (coe v2)) in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Nat.GCD.C_result_1032 v5 v6 v7
           -> case coe v5 of
                0 -> coe
                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
                1 -> case coe v7 of
                       MAlonzo.Code.Data.Nat.GCD.C_'43''45'_858 v8 v9
                         -> coe
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                              (coe
                                 MAlonzo.Code.Data.Nat.Divisibility.du_'8739'm'43'n'8739'm'8658''8739'n_252
                                 (let v11
                                        = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                            (coe
                                               MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                                          (coe v11))
                                       (addInt (coe (2 :: Integer)) (coe v2))
                                       (addInt
                                          (coe
                                             mulInt
                                             (coe
                                                mulInt (coe v9)
                                                (coe addInt (coe (2 :: Integer)) (coe v2)))
                                             (coe v1))
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124)))
                                          (addInt (coe (2 :: Integer)) (coe v2))
                                          (mulInt (coe mulInt (coe v8) (coe v0)) (coe v1))
                                          (addInt
                                             (coe
                                                mulInt
                                                (coe
                                                   mulInt (coe v9)
                                                   (coe addInt (coe (2 :: Integer)) (coe v2)))
                                                (coe v1))
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                             (\ v12 v13 v14 v15 v16 -> v16)
                                             (mulInt (coe mulInt (coe v8) (coe v0)) (coe v1))
                                             (addInt
                                                (coe
                                                   mulInt
                                                   (coe
                                                      mulInt (coe v9)
                                                      (coe addInt (coe (2 :: Integer)) (coe v2)))
                                                   (coe v1))
                                                (coe v1))
                                             (addInt
                                                (coe
                                                   mulInt
                                                   (coe
                                                      mulInt (coe v9)
                                                      (coe addInt (coe (2 :: Integer)) (coe v2)))
                                                   (coe v1))
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                (\ v12 v13 v14 v15 v16 -> v16)
                                                (addInt
                                                   (coe
                                                      mulInt
                                                      (coe
                                                         mulInt (coe v9)
                                                         (coe addInt (coe (2 :: Integer)) (coe v2)))
                                                      (coe v1))
                                                   (coe v1))
                                                (addInt
                                                   (coe
                                                      mulInt
                                                      (coe
                                                         mulInt (coe v9)
                                                         (coe addInt (coe (2 :: Integer)) (coe v2)))
                                                      (coe v1))
                                                   (coe v1))
                                                (addInt
                                                   (coe
                                                      mulInt
                                                      (coe
                                                         mulInt (coe v9)
                                                         (coe addInt (coe (2 :: Integer)) (coe v2)))
                                                      (coe v1))
                                                   (coe v1))
                                                (let v12
                                                       = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                                           (coe
                                                              MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                      (coe
                                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                                         (coe v12))
                                                      (coe
                                                         addInt
                                                         (coe
                                                            mulInt
                                                            (coe
                                                               mulInt (coe v9)
                                                               (coe
                                                                  addInt (coe (2 :: Integer))
                                                                  (coe v2)))
                                                            (coe v1))
                                                         (coe v1))))
                                                erased)
                                             erased)
                                          (coe
                                             du_p'8739'rmn_128 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v8)))))
                                 (coe
                                    MAlonzo.Code.Data.Nat.Divisibility.du_n'8739'm'42'n'42'o_296
                                    (coe v9) (coe v1)))
                       MAlonzo.Code.Data.Nat.GCD.C_'45''43'_866 v8 v9
                         -> coe
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                              (coe
                                 MAlonzo.Code.Data.Nat.Divisibility.du_'8739'm'43'n'8739'm'8658''8739'n_252
                                 (let v11
                                        = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                            (coe
                                               MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                                          (coe v11))
                                       (addInt (coe (2 :: Integer)) (coe v2))
                                       (addInt
                                          (coe mulInt (coe mulInt (coe v8) (coe v0)) (coe v1))
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124)))
                                          (addInt (coe (2 :: Integer)) (coe v2))
                                          (mulInt
                                             (coe
                                                mulInt (coe v9)
                                                (coe addInt (coe (2 :: Integer)) (coe v2)))
                                             (coe v1))
                                          (addInt
                                             (coe mulInt (coe mulInt (coe v8) (coe v0)) (coe v1))
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                             (\ v12 v13 v14 v15 v16 -> v16)
                                             (mulInt
                                                (coe
                                                   mulInt (coe v9)
                                                   (coe addInt (coe (2 :: Integer)) (coe v2)))
                                                (coe v1))
                                             (addInt
                                                (coe mulInt (coe mulInt (coe v8) (coe v0)) (coe v1))
                                                (coe v1))
                                             (addInt
                                                (coe mulInt (coe mulInt (coe v8) (coe v0)) (coe v1))
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                (\ v12 v13 v14 v15 v16 -> v16)
                                                (addInt
                                                   (coe
                                                      mulInt (coe mulInt (coe v8) (coe v0))
                                                      (coe v1))
                                                   (coe v1))
                                                (addInt
                                                   (coe
                                                      mulInt (coe mulInt (coe v8) (coe v0))
                                                      (coe v1))
                                                   (coe v1))
                                                (addInt
                                                   (coe
                                                      mulInt (coe mulInt (coe v8) (coe v0))
                                                      (coe v1))
                                                   (coe v1))
                                                (let v12
                                                       = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                                           (coe
                                                              MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'preorder_124) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                      (coe
                                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                                         (coe v12))
                                                      (coe
                                                         addInt
                                                         (coe
                                                            mulInt (coe mulInt (coe v8) (coe v0))
                                                            (coe v1))
                                                         (coe v1))))
                                                erased)
                                             erased)
                                          (coe
                                             MAlonzo.Code.Data.Nat.Divisibility.du_n'8739'm'42'n'42'o_296
                                             (coe v9) (coe v1)))))
                                 (coe
                                    du_p'8739'rmn_128 (coe v0) (coe v1) (coe v2) (coe v3) (coe v8)))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> let v8
                           = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                               (coe v5) (coe addInt (coe (2 :: Integer)) (coe v2)) in
                     coe
                       (case coe v8 of
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                            -> if coe v9
                                 then coe
                                        seq (coe v10)
                                        (coe
                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                           (coe
                                              MAlonzo.Code.Data.Nat.GCD.du_gcd'8739'm_642 (coe v6)))
                                 else coe
                                        seq (coe v10)
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)
                          _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Primality._._.2≤d
d_2'8804'd_178 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.Nat.GCD.T_GCD_622 ->
  MAlonzo.Code.Data.Nat.GCD.T_Identity_844 ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_2'8804'd_178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
  = du_2'8804'd_178
du_2'8804'd_178 :: MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_2'8804'd_178
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
      (coe
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22))
-- Data.Nat.Primality._._.d<p
d_d'60'p_180 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.Nat.GCD.T_GCD_622 ->
  MAlonzo.Code.Data.Nat.GCD.T_Identity_844 ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_d'60'p_180 v0 v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8
  = du_d'60'p_180 v0 v1 v4
du_d'60'p_180 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.GCD.T_GCD_622 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_d'60'p_180 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2780
      (coe addInt (coe (2 :: Integer)) (coe v0))
      (coe
         MAlonzo.Code.Data.Nat.Divisibility.du_'8739''8658''8804'_54
         (coe addInt (coe (2 :: Integer)) (coe v1))
         (coe addInt (coe (2 :: Integer)) (coe v0))
         (coe MAlonzo.Code.Data.Nat.GCD.du_gcd'8739'n_644 (coe v2)))
