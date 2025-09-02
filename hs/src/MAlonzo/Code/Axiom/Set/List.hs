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

module MAlonzo.Code.Axiom.Set.List where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Algebra
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties.Ext
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Properties.Bijection
import qualified MAlonzo.Code.Function.Properties.Inverse
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Axiom.Set.List.List-Model
d_List'45'Model_6 :: MAlonzo.Code.Axiom.Set.T_Theory_96
d_List'45'Model_6 = coe d_'46'extendedlambda0_12
-- Axiom.Set.List._..extendedlambda0
d_'46'extendedlambda0_12 :: MAlonzo.Code.Axiom.Set.T_Theory_96
d_'46'extendedlambda0_12
  = coe
      MAlonzo.Code.Axiom.Set.C_constructor_754
      MAlonzo.Code.Axiom.Set.d_Dec'45'SpecProperty_86
      (\ v0 v1 v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe MAlonzo.Code.Data.List.Base.du_filter_648 (coe v3) (coe v2))
           (coe
              (\ v4 ->
                 coe
                   MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                   (coe
                      (\ v5 ->
                         case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                             -> coe
                                  MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_510
                                  v3 v2 v7 v6
                           _ -> MAlonzo.RTE.mazUnreachableError))
                   (coe
                      (\ v5 ->
                         coe
                           MAlonzo.Code.Data.Product.Base.du_swap_370
                           (coe
                              MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_512
                              v3 v4 v2 v5))))))
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe MAlonzo.Code.Data.List.Base.du_concat_244 v1)
           (coe
              (\ v2 ->
                 coe
                   MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                   (coe
                      (\ v3 ->
                         case coe v3 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                             -> case coe v5 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                    -> coe
                                         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'concat'8314''8242'_258
                                         (coe v2) (coe v4) (coe v1) (coe v7) (coe v6)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError))
                   (coe
                      (\ v3 ->
                         let v4
                               = coe
                                   MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'concat'8315''8242'_268
                                   (coe v1) (coe v3) in
                         coe
                           (case coe v4 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                                -> case coe v6 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                               (coe v7))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError))))))
      (\ v0 v1 v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v2) (coe v3))
           (coe
              (\ v4 ->
                 coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                   (\ v5 v6 v7 ->
                      coe
                        MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                        (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                   erased erased erased
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''10518'_406
                      (\ v5 v6 v7 ->
                         coe
                           MAlonzo.Code.Function.Base.du__'8728''8242'__216
                           (coe
                              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                           (coe
                              MAlonzo.Code.Function.Base.du__'8728''8242'__216
                              (coe
                                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                              (coe
                                 MAlonzo.Code.Function.Properties.Bijection.du_'10518''8658''8596'_130)))
                      erased erased erased
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                         erased)
                      (coe
                         MAlonzo.Code.Function.Properties.Inverse.du_'8596''8658''10518'_628
                         (coe
                            MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_map'45''8712''8596'_172
                            (coe v3))))
                   (coe
                      MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                      (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                      (\ v5 ->
                         coe
                           MAlonzo.Code.Function.Properties.Inverse.du_'8596''8658''8660'_630
                           (coe MAlonzo.Code.Data.Product.Algebra.du_'215''45'comm_232))))))
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
           (coe
              (\ v2 ->
                 coe
                   MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 (coe (\ v3 -> v3))
                   (coe (\ v3 -> v3)))))
-- Axiom.Set.List.List-Modelᶠ
d_List'45'Model'7584'_58 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7584'_756
d_List'45'Model'7584'_58
  = coe
      MAlonzo.Code.Axiom.Set.C_constructor_1050 (coe d_List'45'Model_6)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
              (coe
                 (\ v2 ->
                    coe
                      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 (coe (\ v3 -> v3))
                      (coe (\ v3 -> v3))))))
-- Axiom.Set.List.Decˡ._.Set
d_Set_100 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> () -> ()
d_Set_100 = erased
-- Axiom.Set.List.Decˡ._∈?_
d__'8712''63'__202 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__202 ~v0 v1 v2 = du__'8712''63'__202 v1 v2
du__'8712''63'__202 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8712''63'__202 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v1)
-- Axiom.Set.List.Decˡ.DecEq-Set
d_DecEq'45'Set_208 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Set_208 ~v0 v1 = du_DecEq'45'Set_208 v1
du_DecEq'45'Set_208 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Set_208 v0
  = coe
      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'List_58 (coe v0)
-- Axiom.Set.List.List-Modelᵈ
d_List'45'Model'7496'_210 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1328
d_List'45'Model'7496'_210
  = coe
      MAlonzo.Code.Axiom.Set.C_constructor_1782 (coe d_List'45'Model_6)
      (coe (\ v0 v1 v2 v3 -> coe du__'8712''63'__202 v1 v3 v2))
      (\ v0 v1 v2 -> coe du__'8712''63'__202 v1 v2)
      (coe
         (\ v0 v1 v2 v3 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
              (coe
                 MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                 (\ v4 v5 ->
                    coe
                      MAlonzo.Code.Data.List.Relation.Unary.All.du_lookup_436 (coe v3)
                      v4)
                 (coe
                    MAlonzo.Code.Data.List.Relation.Unary.All.du_tabulate_266
                    (coe v3)))
              (coe
                 MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_510 (coe v2)
                 (coe v3))))
      (coe
         (\ v0 v1 v2 v3 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
              (coe
                 MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                 (coe
                    MAlonzo.Code.Data.List.Membership.Setoid.du_find_86
                    (coe
                       MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                    (coe v3))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Data.Product.Base.du_uncurry_244
                         (coe
                            MAlonzo.Code.Data.List.Membership.Propositional.du_lose_50
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v3))
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
              (coe
                 MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138 (coe v2)
                 (coe v3))))
