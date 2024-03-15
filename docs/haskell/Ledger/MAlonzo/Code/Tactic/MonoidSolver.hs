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

module MAlonzo.Code.Tactic.MonoidSolver where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Reflection.AST.Term
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Tactic.MonoidSolver.Expr
d_Expr_8 a0 a1 = ()
data T_Expr_8
  = C__'8729''8242'__14 T_Expr_8 T_Expr_8 | C_ε'8242'_16 |
    C_'91'_'8593''93'_18 AgdaAny
-- Tactic.MonoidSolver._.[_↓]
d_'91'_'8595''93'_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 -> T_Expr_8 -> AgdaAny
d_'91'_'8595''93'_128 ~v0 ~v1 v2 v3 = du_'91'_'8595''93'_128 v2 v3
du_'91'_'8595''93'_128 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 -> T_Expr_8 -> AgdaAny
du_'91'_'8595''93'_128 v0 v1
  = case coe v1 of
      C__'8729''8242'__14 v2 v3
        -> coe
             MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
             (coe du_'91'_'8595''93'_128 (coe v0) (coe v2))
             (coe du_'91'_'8595''93'_128 (coe v0) (coe v3))
      C_ε'8242'_16 -> coe MAlonzo.Code.Algebra.Bundles.d_ε_762 (coe v0)
      C_'91'_'8593''93'_18 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.MonoidSolver._.[_⇓]′
d_'91'_'8659''93''8242'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  T_Expr_8 -> AgdaAny -> AgdaAny
d_'91'_'8659''93''8242'_136 ~v0 ~v1 v2 v3 v4
  = du_'91'_'8659''93''8242'_136 v2 v3 v4
du_'91'_'8659''93''8242'_136 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  T_Expr_8 -> AgdaAny -> AgdaAny
du_'91'_'8659''93''8242'_136 v0 v1 v2
  = case coe v1 of
      C__'8729''8242'__14 v3 v4
        -> coe
             du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
             (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2))
      C_ε'8242'_16 -> coe v2
      C_'91'_'8593''93'_18 v3
        -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0 v3 v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.MonoidSolver._.[_⇓]
d_'91'_'8659''93'_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 -> T_Expr_8 -> AgdaAny
d_'91'_'8659''93'_150 ~v0 ~v1 v2 v3 = du_'91'_'8659''93'_150 v2 v3
du_'91'_'8659''93'_150 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 -> T_Expr_8 -> AgdaAny
du_'91'_'8659''93'_150 v0 v1
  = coe
      du_'91'_'8659''93''8242'_136 (coe v0) (coe v1)
      (coe MAlonzo.Code.Algebra.Bundles.d_ε_762 (coe v0))
-- Tactic.MonoidSolver._.homo′
d_homo'8242'_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  T_Expr_8 -> AgdaAny -> AgdaAny
d_homo'8242'_158 ~v0 ~v1 v2 v3 v4 = du_homo'8242'_158 v2 v3 v4
du_homo'8242'_158 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  T_Expr_8 -> AgdaAny -> AgdaAny
du_homo'8242'_158 v0 v1 v2
  = case coe v1 of
      C__'8729''8242'__14 v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v5 v6 v7 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                (coe du_'91'_'8659''93'_150 (coe v0) (coe v1)) v2)
             (coe
                du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
                (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2)))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                         (let v5 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                          coe
                            (let v6
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                             coe
                               (coe
                                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
                (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                      (let v5 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                       coe
                         (let v6
                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Structures.du_setoid_168
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6)))))))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                   (coe
                      du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)))
                   v2)
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)))
                   v2)
                (coe
                   du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
                   (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v5 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                             coe
                               (let v6
                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                          (coe v5) in
                                coe
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                        (coe v6))))))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                         (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                         (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)))
                      v2)
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                         (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)) v2))
                   (coe
                      du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
                      (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                               (let v5 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                                coe
                                  (let v6
                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                             (coe v5) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                           (coe v6))))))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                         (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                            (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)) v2))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                         (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                         (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2)))
                      (coe
                         du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
                         (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                  (let v5 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                                   coe
                                     (let v6
                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                (coe v5) in
                                      coe
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                              (coe v6))))))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                            (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                            (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2)))
                         (coe
                            du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
                            (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2)))
                         (coe
                            du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
                            (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2)))
                         (let v5
                                = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v5
                                              = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764
                                                  (coe v0) in
                                        coe
                                          (let v6
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                     (coe v5) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                   (coe v6)))))) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                  (coe v5))
                               (coe
                                  du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
                                  (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2)))))
                         (coe
                            du_homo'8242'_158 (coe v0) (coe v3)
                            (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2))))
                      (let v5 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                       coe
                         (let v6
                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))
                               (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                                  (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)) v2)
                               (coe du_'91'_'8659''93''8242'_136 (coe v0) (coe v4) (coe v2))
                               (coe du_homo'8242'_158 (coe v0) (coe v4) (coe v2))))))
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_assoc_450
                      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                         (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0)))
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)) v2))
                (let v5 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                 coe
                   (let v6
                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                    coe
                      (coe
                         MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))
                         (coe v2)
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                            (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                            (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)))
                         (coe
                            du_'91'_'8659''93''8242'_136 (coe v0) (coe v3)
                            (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)))
                         (coe
                            du_homo'8242'_158 (coe v0) (coe v3)
                            (coe du_'91'_'8659''93'_150 (coe v0) (coe v4)))))))
      C_ε'8242'_16
        -> coe
             MAlonzo.Code.Algebra.Structures.du_identity'737'_644
             (MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0)) v2
      C_'91'_'8593''93'_18 v3
        -> let v4 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
           coe
             (let v5
                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
              coe
                (coe
                   MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0 v3
                      (MAlonzo.Code.Algebra.Bundles.d_ε_762 (coe v0)))
                   (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                      (MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0)) v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.MonoidSolver._.homo
d_homo_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 -> T_Expr_8 -> AgdaAny
d_homo_174 ~v0 ~v1 v2 v3 = du_homo_174 v2 v3
du_homo_174 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 -> T_Expr_8 -> AgdaAny
du_homo_174 v0 v1
  = case coe v1 of
      C__'8729''8242'__14 v2 v3
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v4 v5 v6 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
             (coe du_'91'_'8659''93'_150 (coe v0) (coe v1))
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                (coe du_'91'_'8595''93'_128 (coe v0) (coe v2))
                (coe du_'91'_'8595''93'_128 (coe v0) (coe v3)))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                         (let v4 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                          coe
                            (let v5
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                             coe
                               (coe
                                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))))))))
                (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                      (let v4 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                       coe
                         (let v5
                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Structures.du_setoid_168
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
                (coe
                   du_'91'_'8659''93''8242'_136 (coe v0) (coe v2)
                   (coe du_'91'_'8659''93'_150 (coe v0) (coe v3)))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                   (coe du_'91'_'8659''93'_150 (coe v0) (coe v2))
                   (coe du_'91'_'8659''93'_150 (coe v0) (coe v3)))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                   (coe du_'91'_'8595''93'_128 (coe v0) (coe v2))
                   (coe du_'91'_'8595''93'_128 (coe v0) (coe v3)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v4 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                             coe
                               (let v5
                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                          (coe v4) in
                                coe
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                        (coe v5))))))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v2))
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v3)))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                      (coe du_'91'_'8595''93'_128 (coe v0) (coe v2))
                      (coe du_'91'_'8595''93'_128 (coe v0) (coe v3)))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                      (coe du_'91'_'8595''93'_128 (coe v0) (coe v2))
                      (coe du_'91'_'8595''93'_128 (coe v0) (coe v3)))
                   (let v4
                          = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v4 = MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0) in
                                  coe
                                    (let v5
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                               (coe v4) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_168
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                             (coe v5)))))) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe v4))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__760 v0
                            (coe du_'91'_'8595''93'_128 (coe v0) (coe v2))
                            (coe du_'91'_'8595''93'_128 (coe v0) (coe v3)))))
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                      (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                            (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0))))
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v2))
                      (coe du_'91'_'8595''93'_128 (coe v0) (coe v2))
                      (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))
                      (coe du_'91'_'8595''93'_128 (coe v0) (coe v3))
                      (coe du_homo_174 (coe v0) (coe v2))
                      (coe du_homo_174 (coe v0) (coe v3))))
                (coe
                   du_homo'8242'_158 (coe v0) (coe v2)
                   (coe du_'91'_'8659''93'_150 (coe v0) (coe v3))))
      C_ε'8242'_16
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0)))))
             (coe du_'91'_'8659''93'_150 (coe v0) (coe v1))
      C_'91'_'8593''93'_18 v2
        -> coe
             MAlonzo.Code.Algebra.Structures.du_identity'691'_646
             (MAlonzo.Code.Algebra.Bundles.d_isMonoid_764 (coe v0)) v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.MonoidSolver.getArgs
d_getArgs_182 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getArgs_182 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe du_go_190 (coe v3)
         _ -> coe v1)
-- Tactic.MonoidSolver._.go
d_go_190 ::
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_go_190 ~v0 ~v1 v2 = du_go_190 v2
du_go_190 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_go_190 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         (:) v2 v3
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v6 v7
                         -> let v8 = coe du_go_190 (coe v3) in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                   -> case coe v7 of
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v9 v10
                                          -> case coe v9 of
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                 -> case coe v10 of
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                        -> case coe v3 of
                                                             (:) v11 v12
                                                               -> case coe v11 of
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v13 v14
                                                                      -> case coe v13 of
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v15 v16
                                                                             -> case coe v15 of
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                    -> case coe
                                                                                              v16 of
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v17 v18
                                                                                           -> case coe
                                                                                                     v17 of
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                  -> case coe
                                                                                                            v18 of
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                         -> case coe
                                                                                                                   v12 of
                                                                                                              []
                                                                                                                -> coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (coe
                                                                                                                           v5)
                                                                                                                        (coe
                                                                                                                           v14))
                                                                                                              _ -> coe
                                                                                                                     v8
                                                                                                       _ -> coe
                                                                                                              v8
                                                                                                _ -> coe
                                                                                                       v8
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                  _ -> coe v8
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> coe v8
                                                      _ -> coe v8
                                               _ -> coe v8
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> coe v8)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Tactic.MonoidSolver.MonoidNames
d_MonoidNames_200 = ()
data T_MonoidNames_200
  = C_MonoidNames'46'constructor_8039 (AgdaAny -> Bool)
                                      (AgdaAny -> Bool)
-- Tactic.MonoidSolver.MonoidNames.is-∙
d_is'45''8729'_206 :: T_MonoidNames_200 -> AgdaAny -> Bool
d_is'45''8729'_206 v0
  = case coe v0 of
      C_MonoidNames'46'constructor_8039 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.MonoidSolver.MonoidNames.is-ε
d_is'45'ε_208 :: T_MonoidNames_200 -> AgdaAny -> Bool
d_is'45'ε_208 v0
  = case coe v0 of
      C_MonoidNames'46'constructor_8039 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.MonoidSolver.buildMatcher
d_buildMatcher_210 :: AgdaAny -> Maybe AgdaAny -> AgdaAny -> Bool
d_buildMatcher_210 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> coe
             MAlonzo.Code.Data.Bool.Base.d__'8744'__30
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v0 v2)
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v3 v2)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v0 v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.MonoidSolver.findMonoidNames
d_findMonoidNames_222 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_findMonoidNames_222 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_334 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_348
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (760 :: Integer) (5645577459263225835 :: Integer)
                  "Algebra.Bundles.Monoid._\8729_"
                  (MAlonzo.RTE.Fixity
                     MAlonzo.RTE.LeftAssoc (MAlonzo.RTE.Related (7.0 :: Double)))))
            (let v1 = 2 :: Integer in
             coe
               (let v2
                      = coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                             (coe v0))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) in
                coe
                  (case coe v1 of
                     0 -> coe v2
                     _ -> let v3 = 1 :: Integer in
                          coe
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                               (coe
                                  MAlonzo.Code.Reflection.AST.Term.d__'8943''10181''8759''10182'__78
                                  (coe v3) (coe v2))))))))
      (\ v1 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_334 () () erased
           erased
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_348
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                 (coe
                    (MAlonzo.RTE.QName
                       (762 :: Integer) (5645577459263225835 :: Integer)
                       "Algebra.Bundles.Monoid.\949"
                       (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                 (let v2 = 2 :: Integer in
                  coe
                    (let v3
                           = coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                  (coe v0))
                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) in
                     coe
                       (case coe v2 of
                          0 -> coe v3
                          _ -> let v4 = 1 :: Integer in
                               coe
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                    (coe
                                       MAlonzo.Code.Reflection.AST.Term.d__'8943''10181''8759''10182'__78
                                       (coe v4) (coe v3))))))))
           (\ v2 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_324 () erased
                (coe
                   C_MonoidNames'46'constructor_8039
                   (coe
                      d_buildMatcher_210
                      (coe
                         (MAlonzo.RTE.QName
                            (760 :: Integer) (5645577459263225835 :: Integer)
                            "Algebra.Bundles.Monoid._\8729_"
                            (MAlonzo.RTE.Fixity
                               MAlonzo.RTE.LeftAssoc (MAlonzo.RTE.Related (7.0 :: Double)))))
                      (coe MAlonzo.Code.Reflection.AST.Term.d_getName_60 (coe v1)))
                   (coe
                      d_buildMatcher_210
                      (coe
                         (MAlonzo.RTE.QName
                            (762 :: Integer) (5645577459263225835 :: Integer)
                            "Algebra.Bundles.Monoid.\949"
                            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                      (coe MAlonzo.Code.Reflection.AST.Term.d_getName_60 (coe v2))))))
-- Tactic.MonoidSolver.″ε″
d_'8243'ε'8243'_230 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'8243'ε'8243'_230
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
      (coe
         (MAlonzo.RTE.QName
            (16 :: Integer) (5132624164938065427 :: Integer)
            "Tactic.MonoidSolver.Expr.\949\8242"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_178)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Tactic.MonoidSolver.[_↑]′
d_'91'_'8593''93''8242'_232 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'91'_'8593''93''8242'_232 v0
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
      (coe
         (MAlonzo.RTE.QName
            (18 :: Integer) (5132624164938065427 :: Integer)
            "Tactic.MonoidSolver.Expr.[_\8593]"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_178)
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
            (coe v0))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Tactic.MonoidSolver._._.is-ε
d_is'45'ε_244 :: T_MonoidNames_200 -> AgdaAny -> Bool
d_is'45'ε_244 v0 = coe d_is'45'ε_208 (coe v0)
-- Tactic.MonoidSolver._._.is-∙
d_is'45''8729'_246 :: T_MonoidNames_200 -> AgdaAny -> Bool
d_is'45''8729'_246 v0 = coe d_is'45''8729'_206 (coe v0)
-- Tactic.MonoidSolver._.″∙″
d_'8243''8729''8243'_248 ::
  T_MonoidNames_200 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'8243''8729''8243'_248 v0 v1
  = let v2
          = coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216 in
    coe
      (case coe v1 of
         (:) v3 v4
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
                  -> case coe v5 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v7 v8
                         -> let v9 = d_'8243''8729''8243'_248 (coe v0) (coe v4) in
                            coe
                              (case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                   -> case coe v8 of
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v10 v11
                                          -> case coe v10 of
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                 -> case coe v11 of
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                        -> case coe v4 of
                                                             (:) v12 v13
                                                               -> case coe v12 of
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v14 v15
                                                                      -> case coe v14 of
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v16 v17
                                                                             -> case coe v16 of
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                    -> case coe
                                                                                              v17 of
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v18 v19
                                                                                           -> case coe
                                                                                                     v18 of
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                  -> case coe
                                                                                                            v19 of
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                         -> case coe
                                                                                                                   v13 of
                                                                                                              []
                                                                                                                -> coe
                                                                                                                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                                                     (coe
                                                                                                                        (MAlonzo.RTE.QName
                                                                                                                           (14 ::
                                                                                                                              Integer)
                                                                                                                           (5132624164938065427 ::
                                                                                                                              Integer)
                                                                                                                           "Tactic.MonoidSolver.Expr._\8729\8242_"
                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                              MAlonzo.RTE.LeftAssoc
                                                                                                                              (MAlonzo.RTE.Related
                                                                                                                                 (7.0 ::
                                                                                                                                    Double)))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_con_178)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                           (coe
                                                                                                                              v14)
                                                                                                                           (coe
                                                                                                                              d_buildExpr_250
                                                                                                                              (coe
                                                                                                                                 v0)
                                                                                                                              (coe
                                                                                                                                 v6)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                              (coe
                                                                                                                                 v14)
                                                                                                                              (coe
                                                                                                                                 d_buildExpr_250
                                                                                                                                 (coe
                                                                                                                                    v0)
                                                                                                                                 (coe
                                                                                                                                    v15)))
                                                                                                                           (coe
                                                                                                                              v13)))
                                                                                                              _ -> coe
                                                                                                                     v9
                                                                                                       _ -> coe
                                                                                                              v9
                                                                                                _ -> coe
                                                                                                       v9
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                  _ -> coe v9
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> coe v9
                                                      _ -> coe v9
                                               _ -> coe v9
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> coe v9)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v2)
-- Tactic.MonoidSolver._.buildExpr
d_buildExpr_250 ::
  T_MonoidNames_200 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_buildExpr_250 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
              (coe
                 (MAlonzo.RTE.QName
                    (18 :: Integer) (5132624164938065427 :: Integer)
                    "Tactic.MonoidSolver.Expr.[_\8593]"
                    (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_178)
              (coe
                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                    (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
           -> coe
                MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                (coe d_is'45''8729'_206 v0 v3)
                (coe d_'8243''8729''8243'_248 (coe v0) (coe v4))
                (coe
                   MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                   (coe d_is'45'ε_208 v0 v3) (coe d_'8243'ε'8243'_230)
                   (coe d_'91'_'8593''93''8242'_232 (coe v1)))
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
           -> coe
                MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                (coe d_is'45''8729'_206 v0 v3)
                (coe d_'8243''8729''8243'_248 (coe v0) (coe v4))
                (coe
                   MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                   (coe d_is'45'ε_208 v0 v3) (coe d_'8243'ε'8243'_230)
                   (coe d_'91'_'8593''93''8242'_232 (coe v1)))
         _ -> coe v2)
-- Tactic.MonoidSolver.constructSoln
d_constructSoln_274 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  T_MonoidNames_200 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_constructSoln_274 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
      (coe
         (MAlonzo.RTE.QName
            (794 :: Integer) (5645577459263225835 :: Integer)
            "Algebra.Bundles.Monoid._.trans"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_def_184)
      (let v4 = 2 :: Integer in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                       (coe v0))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                             (coe
                                (MAlonzo.RTE.QName
                                   (792 :: Integer) (5645577459263225835 :: Integer)
                                   "Algebra.Bundles.Monoid._.sym"
                                   (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_def_184)
                             (let v5 = 2 :: Integer in
                              coe
                                (let v6
                                       = coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                    (coe
                                                       (MAlonzo.RTE.QName
                                                          (174 :: Integer)
                                                          (5132624164938065427 :: Integer)
                                                          "Tactic.MonoidSolver._.homo"
                                                          (MAlonzo.RTE.Fixity
                                                             MAlonzo.RTE.NonAssoc
                                                             MAlonzo.RTE.Unrelated)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184)
                                                    (let v6 = 2 :: Integer in
                                                     coe
                                                       (let v7
                                                              = coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                     (coe v0))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                        (coe
                                                                           d_buildExpr_250 (coe v1)
                                                                           (coe v2)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
                                                        coe
                                                          (case coe v6 of
                                                             0 -> coe v7
                                                             _ -> let v8 = 1 :: Integer in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                       (coe
                                                                          MAlonzo.Code.Reflection.AST.Term.d__'8943''10181''8759''10182'__78
                                                                          (coe v8) (coe v7))))))))
                                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
                                 coe
                                   (case coe v5 of
                                      0 -> coe v6
                                      _ -> let v7 = 1 :: Integer in
                                           coe
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                (coe
                                                   MAlonzo.Code.Reflection.AST.Term.d__'8943''10181''8759''10182'__78
                                                   (coe v7) (coe v6))))))))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                (coe
                                   (MAlonzo.RTE.QName
                                      (174 :: Integer) (5132624164938065427 :: Integer)
                                      "Tactic.MonoidSolver._.homo"
                                      (MAlonzo.RTE.Fixity
                                         MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_def_184)
                                (let v5 = 2 :: Integer in
                                 coe
                                   (let v6
                                          = coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                 (coe v0))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                    (coe d_buildExpr_250 (coe v1) (coe v3)))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
                                    coe
                                      (case coe v5 of
                                         0 -> coe v6
                                         _ -> let v7 = 1 :: Integer in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                   (coe
                                                      MAlonzo.Code.Reflection.AST.Term.d__'8943''10181''8759''10182'__78
                                                      (coe v7) (coe v6))))))))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
          coe
            (case coe v4 of
               0 -> coe v5
               _ -> let v6 = 1 :: Integer in
                    coe
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                         (coe
                            MAlonzo.Code.Reflection.AST.Term.d__'8943''10181''8759''10182'__78
                            (coe v6) (coe v5))))))
-- Tactic.MonoidSolver.solve-macro
d_solve'45'macro_284 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_solve'45'macro_284 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_334 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_334 () () erased
         erased
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_inferType_344 v1)
         MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_348)
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_334 () () erased
           erased (d_findMonoidNames_222 (coe v0))
           (\ v3 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_334 () () erased
                erased
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_324 () erased
                   (d_getArgs_182 (coe v2)))
                (\ v4 ->
                   case coe v4 of
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                       -> case coe v5 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                              -> coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.d_unify_336 v1
                                   (d_constructSoln_274 (coe v0) (coe v3) (coe v6) (coe v7))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342 () erased
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_310 (coe v2))
                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     _ -> MAlonzo.RTE.mazUnreachableError)))
-- Tactic.MonoidSolver.solve
d_solve_302 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_solve_302 = coe d_solve'45'macro_284
