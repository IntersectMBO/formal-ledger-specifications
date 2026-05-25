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

module MAlonzo.Code.Data.List.Ext.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
import qualified MAlonzo.Code.Data.Product.Function.NonDependent.Propositional
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Function.Propositional
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax

-- Data.List.Ext.Properties._×-cong_
d__'215''45'cong__26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'215''45'cong__26 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du__'215''45'cong__26 v8 v9 v10
du__'215''45'cong__26 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'215''45'cong__26 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Function.NonDependent.Propositional.du__'215''45'cong__96
      v0 v1 v2
-- Data.List.Ext.Properties._⊎-cong_
d__'8846''45'cong__54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8846''45'cong__54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du__'8846''45'cong__54 v8 v9 v10
du__'8846''45'cong__54 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8846''45'cong__54 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Sum.Function.Propositional.du__'8846''45'cong__94
      v0 v1 v2
-- Data.List.Ext.Properties.AllPairs⇒≡∨R∨Rᵒᵖ
d_AllPairs'8658''8801''8744'R'8744'R'7506''7510'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_AllPairs'8658''8801''8744'R'8744'R'7506''7510'_78 ~v0 ~v1 ~v2 ~v3
                                                    ~v4 ~v5 v6 v7 v8 v9
  = du_AllPairs'8658''8801''8744'R'8744'R'7506''7510'_78 v6 v7 v8 v9
du_AllPairs'8658''8801''8744'R'8744'R'7506''7510'_78 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_AllPairs'8658''8801''8744'R'8744'R'7506''7510'_78 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v6 v7
        -> case coe v0 of
             (:) v8 v9
               -> case coe v2 of
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v12
                      -> case coe v3 of
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v15
                             -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v15
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.All.du_lookup_436 v9
                                        v6 v15))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12
                      -> case coe v3 of
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v15
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.All.du_lookup_436 v9
                                        v6 v12))
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v15
                             -> coe
                                  du_AllPairs'8658''8801''8744'R'8744'R'7506''7510'_78 (coe v9)
                                  (coe v7) (coe v12) (coe v15)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.deduplicate≡
d_deduplicate'8801'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> [AgdaAny]
d_deduplicate'8801'_168 ~v0 ~v1 v2 = du_deduplicate'8801'_168 v2
du_deduplicate'8801'_168 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> [AgdaAny]
du_deduplicate'8801'_168 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_deduplicate_882
      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
-- Data.List.Ext.Properties._.disj-on-dedup
d_disj'45'on'45'dedup_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'on'45'dedup_174 = erased
-- Data.List.Ext.Properties._.∈-dedup
d_'8712''45'dedup_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'dedup_182 ~v0 ~v1 v2 v3 v4
  = du_'8712''45'dedup_182 v2 v3 v4
du_'8712''45'dedup_182 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'dedup_182 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'deduplicate'8314'_614
         (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) (coe v1)
         (coe v2))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'deduplicate'8315'_576
         (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
         (coe v1))
-- Data.List.Ext.Properties._.dedup-++-↭
d_dedup'45''43''43''45''8621'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34
d_dedup'45''43''43''45''8621'_188 ~v0 ~v1 v2 v3 v4 ~v5
  = du_dedup'45''43''43''45''8621'_188 v2 v3 v4
du_dedup'45''43''43''45''8621'_188 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34
du_dedup'45''43''43''45''8621'_188 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'8764'bag'8658''8621'_1352
      (coe
         MAlonzo.Code.Data.List.Base.du_deduplicate_882
         (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32
         (coe
            MAlonzo.Code.Data.List.Base.du_deduplicate_882
            (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
            (coe v1))
         (coe
            MAlonzo.Code.Data.List.Base.du_deduplicate_882
            (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
            (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties.WithK.du_unique'8743'set'8658'bag_64
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                 (\ v4 v5 v6 ->
                    coe
                      MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                      (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                 erased erased erased
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                    (\ v4 v5 v6 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                       (\ v4 v5 v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                          (\ v4 v5 v6 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                          erased erased erased
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                  (coe
                                     MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                             erased)
                          (coe
                             MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                             (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                             (coe
                                du_helper_206 (coe du_deduplicate'8801'_168 v0 v1)
                                (coe du_deduplicate'8801'_168 v0 v2))))
                       (coe
                          du__'8846''45'cong__54
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                          (coe du_'8712''45'dedup_182 (coe v0) (coe v1) (coe v3))
                          (coe du_'8712''45'dedup_182 (coe v0) (coe v2) (coe v3))))
                    (coe du_helper_206 (coe v1) (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                    (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                    (coe
                       du_'8712''45'dedup_182 (coe v0)
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))
                       (coe v3))))))
-- Data.List.Ext.Properties._._.helper
d_helper_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_helper_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8
  = du_helper_206 v6 v7
du_helper_206 ::
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_helper_206 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_206
         v0 v1)
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
         (coe
            MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''737'_194
            (coe v0))
         (coe
            MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''691'_200
            v0 v1))
