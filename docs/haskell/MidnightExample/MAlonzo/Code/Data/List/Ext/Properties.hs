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
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Function.NonDependent.Propositional
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Function.Propositional
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

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
                                        MAlonzo.Code.Data.List.Relation.Unary.All.du_lookup_440 v9
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
                                        MAlonzo.Code.Data.List.Relation.Unary.All.du_lookup_440 v9
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
d_deduplicate'8801'_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> [AgdaAny]
d_deduplicate'8801'_164 ~v0 ~v1 v2 = du_deduplicate'8801'_164 v2
du_deduplicate'8801'_164 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> [AgdaAny]
du_deduplicate'8801'_164 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_deduplicate_934
      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
-- Data.List.Ext.Properties._.disj-on-dedup
d_disj'45'on'45'dedup_170 ::
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
d_disj'45'on'45'dedup_170 = erased
-- Data.List.Ext.Properties._.∈-dedup
d_'8712''45'dedup_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'dedup_178 ~v0 ~v1 v2 v3 v4
  = du_'8712''45'dedup_178 v2 v3 v4
du_'8712''45'dedup_178 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'dedup_178 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'deduplicate'8314'_584
         (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) (coe v1)
         (coe v2))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'deduplicate'8315'_558
         (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
         (coe v1))
-- Data.List.Ext.Properties._.dedup-++-↭
d_dedup'45''43''43''45''8621'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_dedup'45''43''43''45''8621'_184 ~v0 ~v1 v2 v3 v4 ~v5
  = du_dedup'45''43''43''45''8621'_184 v2 v3 v4
du_dedup'45''43''43''45''8621'_184 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_dedup'45''43''43''45''8621'_184 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'8764'bag'8658''8621'_1456
      (coe
         MAlonzo.Code.Data.List.Base.du_deduplicate_934
         (MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__62
         (coe
            MAlonzo.Code.Data.List.Base.du_deduplicate_934
            (MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) v1)
         (coe
            MAlonzo.Code.Data.List.Base.du_deduplicate_934
            (MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) v2))
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties.WithK.du_unique'8743'set'8658'bag_64
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                 (\ v4 v5 v6 ->
                    coe
                      MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                      (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                 erased erased erased
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                    (\ v4 v5 v6 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                       (\ v4 v5 v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                          (\ v4 v5 v6 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                          erased erased erased
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
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
                                du_helper_202 (coe du_deduplicate'8801'_164 v0 v1)
                                (coe du_deduplicate'8801'_164 v0 v2))))
                       (coe
                          du__'8846''45'cong__54
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                          (coe du_'8712''45'dedup_178 (coe v0) (coe v1) (coe v3))
                          (coe du_'8712''45'dedup_178 (coe v0) (coe v2) (coe v3))))
                    (coe du_helper_202 (coe v1) (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                    (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                    (coe
                       du_'8712''45'dedup_178 (coe v0)
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v1) (coe v2))
                       (coe v3))))))
-- Data.List.Ext.Properties._._.helper
d_helper_202 ::
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
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_helper_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8
  = du_helper_202 v6 v7
du_helper_202 ::
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_helper_202 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_214
         v0 v1)
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
         (coe
            MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''737'_202
            (coe v0))
         (coe
            MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''691'_208
            v0 v1))
-- Data.List.Ext.Properties._.maxlen
d_maxlen_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [[AgdaAny]] -> Integer
d_maxlen_218 ~v0 ~v1 v2 = du_maxlen_218 v2
du_maxlen_218 :: [[AgdaAny]] -> Integer
du_maxlen_218 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_242
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Nat.Base.d__'8852'__166
              (coe MAlonzo.Code.Data.List.Base.du_length_304 v1)))
      (coe (0 :: Integer)) (coe v0)
-- Data.List.Ext.Properties._.maxlen≤∷
d_maxlen'8804''8759'_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[AgdaAny]] ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_maxlen'8804''8759'_230 ~v0 ~v1 v2 v3
  = du_maxlen'8804''8759'_230 v2 v3
du_maxlen'8804''8759'_230 ::
  [[AgdaAny]] ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_maxlen'8804''8759'_230 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      (:) v2 v3
        -> let v4
                 = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'totalPreorder_2684 in
           coe
             (let v5
                    = MAlonzo.Code.Data.Nat.Properties.d_'8852''45'operator_4252 in
              coe
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
                   (coe
                      MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                      (coe v4))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                      (coe v5))
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v1)
                   (coe du_maxlen_218 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∈-maxlen-≤
d_'8712''45'maxlen'45''8804'_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[AgdaAny]] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8712''45'maxlen'45''8804'_244 ~v0 ~v1 v2 ~v3 v4
  = du_'8712''45'maxlen'45''8804'_244 v2 v4
du_'8712''45'maxlen'45''8804'_244 ::
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8712''45'maxlen'45''8804'_244 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v6
               -> let v7
                        = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'totalPreorder_2684 in
                  coe
                    (let v8
                           = MAlonzo.Code.Data.Nat.Properties.d_'8852''45'operator_4252 in
                     coe
                       (coe
                          MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
                          (coe
                             MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                             (coe v7))
                          (coe
                             MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                             (coe v8))
                          (coe MAlonzo.Code.Data.List.Base.du_length_304 v2)
                          (coe du_maxlen_218 (coe v3))))
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2646
                    (coe du_'8712''45'maxlen'45''8804'_244 (coe v3) (coe v6))
                    (coe du_maxlen'8804''8759'_230 (coe v3) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.¬[]∈map
d_'172''91''93''8712'map_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[AgdaAny]] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172''91''93''8712'map_274 = erased
-- Data.List.Ext.Properties._.map∷decomp∈
d_map'8759'decomp'8712'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[AgdaAny]] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'8759'decomp'8712'_288 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6
  = du_map'8759'decomp'8712'_288 v2 v6
du_map'8759'decomp'8712'_288 ::
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'8759'decomp'8712'_288 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                    (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe du_map'8759'decomp'8712'_288 (coe v3) (coe v6)))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe du_map'8759'decomp'8712'_288 (coe v3) (coe v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.map∷decomp
d_map'8759'decomp_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[AgdaAny]] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'8759'decomp_302 ~v0 ~v1 v2 v3 ~v4 v5
  = du_map'8759'decomp_302 v2 v3 v5
du_map'8759'decomp_302 ::
  [[AgdaAny]] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'8759'decomp_302 v0 v1 v2
  = case coe v0 of
      (:) v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)
                       erased)
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v7
               -> case coe v1 of
                    [] -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
                    (:) v8 v9
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                    (coe du_map'8759'decomp'8712'_288 (coe v4) (coe v7))))
                              erased)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∈-map
d_'8712''45'map_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[AgdaAny]] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map_324 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_'8712''45'map_324 v2 v5
du_'8712''45'map_324 ::
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'map_324 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v6
               -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v6
               -> coe du_'8712''45'map_324 (coe v3) (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.⊆y∷∧y∉→⊆ys
d_'8838'y'8759''8743'y'8713''8594''8838'ys_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838'y'8759''8743'y'8713''8594''8838'ys_346 ~v0 ~v1 ~v2 ~v3 ~v4
                                               v5 ~v6 v7 v8
  = du_'8838'y'8759''8743'y'8713''8594''8838'ys_346 v5 v7 v8
du_'8838'y'8759''8743'y'8713''8594''8838'ys_346 ::
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838'y'8759''8743'y'8713''8594''8838'ys_346 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v6
           -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
         MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v6 -> coe v6
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Ext.Properties._.¬∈[]
d_'172''8712''91''93'_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172''8712''91''93'_374 = erased
-- Data.List.Ext.Properties._.¬⊆[]
d_'172''8838''91''93'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172''8838''91''93'_380 = erased
-- Data.List.Ext.Properties._.∈∷∧⊆→∈
d_'8712''8759''8743''8838''8594''8712'_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''8759''8743''8838''8594''8712'_392 ~v0 ~v1 ~v2 ~v3 ~v4 v5
                                           v6 v7
  = du_'8712''8759''8743''8838''8594''8712'_392 v5 v6 v7
du_'8712''8759''8743''8838''8594''8712'_392 ::
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''8759''8743''8838''8594''8712'_392 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v5
        -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v5
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v5
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 (coe v2 v0 v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.concatMap⁺
d_concatMap'8314'_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_concatMap'8314'_414 ~v0 ~v1 v2 v3 v4 v5
  = du_concatMap'8314'_414 v2 v3 v4 v5
du_concatMap'8314'_414 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_concatMap'8314'_414 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_concat'8314'_270
      (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v2) (coe v1))
      (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v2) (coe v0))
      (\ v6 v7 ->
         coe
           MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_map'8314'_218
           (coe v1) (coe v0) (coe v3) v7)
      v5
-- Data.List.Ext.Properties._.concatMap-++
d_concatMap'45''43''43'_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_concatMap'45''43''43'_426 = erased
-- Data.List.Ext.Properties._.concatMap-decomp
d_concatMap'45'decomp_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_concatMap'45'decomp_450 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_concatMap'45'decomp_450 v0 v2 v4 v5 v6
du_concatMap'45'decomp_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_concatMap'45'decomp_450 v0 v1 v2 v3 v4
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
             (coe (\ v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
      (:) v5 v6
        -> coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
             (coe
                du_i_470 (coe v0) (coe v1) (coe v5) (coe v6) (coe v3) (coe v4))
             (coe
                du_ii_502 (coe v0) (coe v1) (coe v5) (coe v6) (coe v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._._.i
d_i_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_i_470 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
  = du_i_470 v0 v2 v4 v5 v6 v7 v8
du_i_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_i_470 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_214
              (coe v5 v2)
              (coe
                 MAlonzo.Code.Data.List.Base.du_foldr_242
                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                 (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v5) (coe v3)))
              v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)
                   (coe v8))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
           -> let v9
                    = coe
                        MAlonzo.Code.Function.Bundles.d_to_1724
                        (coe
                           du_concatMap'45'decomp_450 (coe v0) (coe v1) (coe v3) (coe v4)
                           (coe v5))
                        v8 in
              coe
                (case coe v9 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                     -> case coe v11 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                            -> coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12)
                                    (coe v13))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Ext.Properties._._.ii
d_ii_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ii_502 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
  = du_ii_502 v0 v2 v4 v5 v6 v7 v8
du_ii_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_ii_502 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
        -> case coe v8 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v13
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'xs'43''43'ys_242
                           (coe v5 v7)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_242
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v5) (coe v3)))
                           v4 v10
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v13
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'ys'43''43'xs_248
                           (coe
                              MAlonzo.Code.Data.List.Base.du_concatMap_272 (coe v5) (coe v3))
                           (coe v5 v2) v4
                           (coe
                              MAlonzo.Code.Function.Bundles.d_from_1726
                              (coe
                                 du_concatMap'45'decomp_450 (coe v0) (coe v1) (coe v3) (coe v4)
                                 (coe v5))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                    (coe v10))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∷∈insert
d_'8759''8712'insert_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8759''8712'insert_526 ~v0 ~v1 v2 ~v3
  = du_'8759''8712'insert_526 v2
du_'8759''8712'insert_526 ::
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8759''8712'insert_526 v0
  = coe
      seq (coe v0)
      (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)
-- Data.List.Ext.Properties._.∈-insert
d_'8712''45'insert_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'insert_534 ~v0 ~v1 v2 v3 v4 v5
  = du_'8712''45'insert_534 v2 v3 v4 v5
du_'8712''45'insert_534 ::
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'insert_534 v0 v1 v2 v3
  = case coe v0 of
      []
        -> coe
             seq (coe v3)
             (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)
      (:) v4 v5
        -> case coe v3 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v8
               -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v8
               -> let v9
                        = coe
                            du_map'8759'decomp_302
                            (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1) (coe v5))
                            (coe v2) (coe v8) in
                  coe
                    (case coe v9 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                         -> case coe v11 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                -> coe
                                     MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                     (coe
                                        du_'8712''45'insert_534 (coe v5) (coe v1) (coe v10)
                                        (coe v12))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∈→∈-insert
d_'8712''8594''8712''45'insert_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''8594''8712''45'insert_564 ~v0 ~v1 v2 v3 ~v4 v5 v6 v7
  = du_'8712''8594''8712''45'insert_564 v2 v3 v5 v6 v7
du_'8712''8594''8712''45'insert_564 ::
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''8594''8712''45'insert_564 v0 v1 v2 v3 v4
  = case coe v0 of
      (:) v5 v6
        -> case coe v4 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v9
               -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v3
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v12
                      -> coe
                           du_'8712''45'map_324
                           (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1) (coe v6))
                           (coe v9)
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12
                      -> let v13
                               = coe
                                   du_map'8759'decomp_302
                                   (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1) (coe v6))
                                   (coe v2) (coe v9) in
                         coe
                           (case coe v13 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                -> case coe v15 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                       -> coe
                                            MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                            (coe
                                               du_'8712''8594''8712''45'insert_564 (coe v6) (coe v1)
                                               (coe v14) (coe v12) (coe v16))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.insert⊆∷
d_insert'8838''8759'_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_insert'8838''8759'_610 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_insert'8838''8759'_610 v0 v2 v3 v4 v5 v6 v7
du_insert'8838''8759'_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_insert'8838''8759'_610 v0 v1 v2 v3 v4 v5 v6
  = case coe v1 of
      [] -> coe seq (coe v3) (coe seq (coe v4) (coe v6))
      (:) v7 v8
        -> coe
             seq (coe v3)
             (case coe v4 of
                MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v11 -> coe v6
                MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v11
                  -> let v12
                           = coe
                               du_map'8759'decomp_302
                               (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v2) (coe v8))
                               (coe v3) (coe v11) in
                     coe
                       (case coe v12 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                            -> case coe v14 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                   -> coe
                                        du_'46'extendedlambda0_640 (coe v0) (coe v8) (coe v2)
                                        (coe v13) (coe v15) (coe v5) (coe v6)
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._..extendedlambda0
d_'46'extendedlambda0_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'46'extendedlambda0_640 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 ~v7 v8 v9 ~v10
                          v11 ~v12 v13
  = du_'46'extendedlambda0_640 v0 v3 v4 v8 v9 v11 v13
du_'46'extendedlambda0_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'46'extendedlambda0_640 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v9
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
             (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v9
        -> let v10
                 = coe
                     du_insert'8838''8759'_610 (coe v0) (coe v1) (coe v2) (coe v3)
                     (coe v4) (coe v5) (coe v9) in
           coe
             (case coe v10 of
                MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v13
                  -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased
                MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v13
                  -> coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                       (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v13)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.insert-decomp
d_insert'45'decomp_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[AgdaAny]] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert'45'decomp_656 v0 ~v1 v2 v3 v4 v5
  = du_insert'45'decomp_656 v0 v2 v3 v4 v5
du_insert'45'decomp_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [[AgdaAny]] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert'45'decomp_656 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 du_concatMap'45'decomp_450 (coe v0) (coe v0) (coe v1) (coe v3)
                 (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v2)))
              v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v7 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                          (coe
                             du_insert'8838''8759'_610 (coe v0) (coe v6) (coe v2) (coe v3)
                             (coe v9)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Ext.Properties._.insert-decomp≡
d_insert'45'decomp'8801'_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert'45'decomp'8801'_680 ~v0 ~v1 v2 v3 v4 v5
  = du_insert'45'decomp'8801'_680 v2 v3 v4 v5
du_insert'45'decomp'8801'_680 ::
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert'45'decomp'8801'_680 v0 v1 v2 v3
  = case coe v0 of
      []
        -> coe
             seq (coe v3)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)))
      (:) v4 v5
        -> case coe v3 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v8
               -> case coe v2 of
                    [] -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
                    (:) v9 v10
                      -> let v11
                               = coe
                                   du_insert'45'decomp'8801'_680 (coe v5) (coe v1) (coe v10)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         du_map'8759'decomp'8712'_288
                                         (coe
                                            MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1)
                                            (coe v5))
                                         (coe v8))) in
                         coe
                           (case coe v11 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                -> case coe v13 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                       -> coe
                                            seq (coe v15)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe v4) (coe v12))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v14)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     erased erased)))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.[]∈subpermutations
d_'91''93''8712'subpermutations_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'91''93''8712'subpermutations_720 ~v0 ~v1 v2
  = du_'91''93''8712'subpermutations_720 v2
du_'91''93''8712'subpermutations_720 ::
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'91''93''8712'subpermutations_720 v0
  = case coe v0 of
      []
        -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'ys'43''43'xs_248
             (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
             (coe
                MAlonzo.Code.Data.List.Base.du_concatMap_272
                (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2)))
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
             (coe du_'91''93''8712'subpermutations_720 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.Unique→dropSubheadUnique
d_Unique'8594'dropSubheadUnique_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_Unique'8594'dropSubheadUnique_732 ~v0 ~v1 v2 ~v3 v4 v5
  = du_Unique'8594'dropSubheadUnique_732 v2 v4 v5
du_Unique'8594'dropSubheadUnique_732 ::
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_Unique'8594'dropSubheadUnique_732 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v5 v6
        -> case coe v5 of
             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v9 v10
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                    v10
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties.du_drop'8314'_138
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v0))
                       (1 :: Integer) v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.Unique→head∉tail
d_Unique'8594'head'8713'tail_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_Unique'8594'head'8713'tail_742 = erased
-- Data.List.Ext.Properties._.∈-insert-cancelˡ
d_'8712''45'insert'45'cancel'737'_756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[AgdaAny]] ->
  [AgdaAny] ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'insert'45'cancel'737'_756 v0 ~v1 v2 v3 v4 ~v5 v6
  = du_'8712''45'insert'45'cancel'737'_756 v0 v2 v3 v4 v6
du_'8712''45'insert'45'cancel'737'_756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [[AgdaAny]] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'insert'45'cancel'737'_756 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_214
              (coe
                 MAlonzo.Code.Data.List.Base.du_foldr_242
                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_map_22
                    (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v3)) (coe v1)))
              v1 v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Function.Bundles.d_to_1724
                        (coe
                           du_concatMap'45'decomp_450 (coe v0) (coe v0) (coe v1) (coe v2)
                           (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v3)))
                        v6 in
              coe
                (case coe v7 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                     -> coe
                          seq (coe v9) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                   _ -> MAlonzo.RTE.mazUnreachableError)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6 -> coe v6
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Ext.Properties._.∈insert→∷∈insert'
d_'8712'insert'8594''8759''8712'insert''_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712'insert'8594''8759''8712'insert''_800 v0 ~v1 v2 v3 v4 v5 v6
                                             ~v7 v8
  = du_'8712'insert'8594''8759''8712'insert''_800
      v0 v2 v3 v4 v5 v6 v8
du_'8712'insert'8594''8759''8712'insert''_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712'insert'8594''8759''8712'insert''_800 v0 v1 v2 v3 v4 v5 v6
  = case coe v1 of
      (:) v7 v8
        -> case coe v5 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v11
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                      -> case coe v13 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                             -> let v16
                                      = coe
                                          MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_214
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_concatMap_272
                                             (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v7))
                                             (coe
                                                MAlonzo.Code.Data.List.Ext.du_subpermutations_40
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Data.List.Ext.du_subpermutations_40
                                             (coe v8))
                                          v14 in
                                coe
                                  (case coe v16 of
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                       -> let v18
                                                = coe
                                                    MAlonzo.Code.Function.Bundles.d_to_1724
                                                    (coe
                                                       du_concatMap'45'decomp_450 (coe v0) (coe v0)
                                                       (coe
                                                          MAlonzo.Code.Data.List.Ext.du_subpermutations_40
                                                          (coe v8))
                                                       (coe v12)
                                                       (coe
                                                          MAlonzo.Code.Data.List.Ext.du_insert_28
                                                          (coe v7)))
                                                    v17 in
                                          coe
                                            (case coe v18 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                 -> coe
                                                      seq (coe v20)
                                                      (coe
                                                         MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                       -> let v18
                                                = coe
                                                    du_insert'45'decomp'8801'_680 (coe v12) (coe v3)
                                                    (coe v2) (coe v15) in
                                          coe
                                            (case coe v18 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                 -> case coe v20 of
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                        -> coe
                                                             seq (coe v22)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe v7) (coe v12))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe
                                                                      MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''737'_202
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.Base.du_concatMap_272
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.Ext.du_insert_28
                                                                            (coe v7))
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.Ext.du_subpermutations_40
                                                                            (coe v8)))
                                                                      (coe
                                                                         MAlonzo.Code.Function.Bundles.d_from_1726
                                                                         (coe
                                                                            du_concatMap'45'decomp_450
                                                                            (coe v0) (coe v0)
                                                                            (coe
                                                                               MAlonzo.Code.Data.List.Ext.du_subpermutations_40
                                                                               (coe v8))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe v7) (coe v12))
                                                                            (coe
                                                                               MAlonzo.Code.Data.List.Ext.du_insert_28
                                                                               (coe v7)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v12)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe v17)
                                                                               (coe
                                                                                  du_'8759''8712'insert_526
                                                                                  (coe v12))))))
                                                                   (coe
                                                                      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'map'8314'_160
                                                                         v2
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.Ext.du_insert_28
                                                                            (coe v3) (coe v12))
                                                                         v15))))
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v11
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                      -> case coe v13 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                             -> coe
                                  du_'46'extendedlambda3_864 (coe v0) (coe v7) (coe v8) (coe v2)
                                  (coe v3) (coe v4) (coe v11) (coe v12) (coe v15)
                                  (coe
                                     MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_214
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du_concatMap_272
                                        (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v7))
                                        (coe
                                           MAlonzo.Code.Data.List.Ext.du_subpermutations_40
                                           (coe v8)))
                                     (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v8))
                                     v14)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._..extendedlambda3
d_'46'extendedlambda3_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'extendedlambda3_864 v0 ~v1 v2 v3 v4 v5 v6 v7 ~v8 v9 ~v10 v11
                          v12
  = du_'46'extendedlambda3_864 v0 v2 v3 v4 v5 v6 v7 v9 v11 v12
du_'46'extendedlambda3_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda3_864 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
        -> coe
             du_'46'extendedlambda4_868 (coe v0) (coe v1) (coe v2) (coe v3)
             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
             (coe
                MAlonzo.Code.Function.Bundles.d_to_1724
                (coe
                   du_concatMap'45'decomp_450 (coe v0) (coe v0)
                   (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
                   (coe v7) (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1)))
                v10)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
        -> let v11
                 = coe
                     du_'8712'insert'8594''8759''8712'insert''_800 (coe v0) (coe v2)
                     (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10) (coe v8))) in
           coe
             (case coe v11 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                  -> case coe v13 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''691'_208
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_242
                                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_map_22
                                          (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                                          (coe
                                             MAlonzo.Code.Data.List.Ext.du_subpermutations_40
                                             (coe v2))))
                                    (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
                                    v14)
                                 (coe v15))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._..extendedlambda4
d_'46'extendedlambda4_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'extendedlambda4_868 v0 ~v1 v2 v3 v4 v5 v6 v7 ~v8 v9 ~v10 v11
                          ~v12 v13
  = du_'46'extendedlambda4_868 v0 v2 v3 v4 v5 v6 v7 v9 v11 v13
du_'46'extendedlambda4_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda4_868 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
        -> coe
             seq (coe v11)
             (coe
                MAlonzo.Code.Function.Bundles.d_to_1724
                (coe
                   du_concatMap'45'decomp_450 (coe v0) (coe v0)
                   (coe
                      MAlonzo.Code.Data.List.Ext.du_subpermutations_40
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5) (coe v3))
                   (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v4)))
                (coe
                   MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''737'_202
                   (coe
                      MAlonzo.Code.Data.List.Base.du_concatMap_272
                      (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v4))
                      (coe
                         MAlonzo.Code.Data.List.Base.du_concatMap_272
                         (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                         (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))))
                   (coe
                      MAlonzo.Code.Function.Bundles.d_from_1726
                      (coe
                         du_concatMap'45'decomp_450 (coe v0) (coe v0)
                         (coe
                            MAlonzo.Code.Data.List.Base.du_concatMap_272
                            (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                            (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5) (coe v3))
                         (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v4)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5) (coe v7))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Function.Bundles.d_from_1726
                               (coe
                                  du_concatMap'45'decomp_450 (coe v0) (coe v0)
                                  (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5) (coe v7))
                                  (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1)))
                               (coe
                                  du_'8712'insert'8594''8759''8712'insert''_800 (coe v0) (coe v2)
                                  (coe v7) (coe v1) (coe v5) (coe v6) (coe v9)))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                               (coe
                                  MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'map'8314'_160
                                  v3 (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v4) (coe v7))
                                  v8)))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∈insert→∷∈insert
d_'8712'insert'8594''8759''8712'insert_906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712'insert'8594''8759''8712'insert_906 v0 ~v1 v2 v3 v4 v5 v6
                                           ~v7 v8
  = du_'8712'insert'8594''8759''8712'insert_906 v0 v2 v3 v4 v5 v6 v8
du_'8712'insert'8594''8759''8712'insert_906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712'insert'8594''8759''8712'insert_906 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         du_concatMap'45'decomp_450 (coe v0) (coe v0)
         (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4) (coe v2))
         (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v3)))
      (coe
         du_'8712'insert'8594''8759''8712'insert''_800 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4) (coe v5)
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1724
            (coe
               du_concatMap'45'decomp_450 (coe v0) (coe v0)
               (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v1))
               (coe v2) (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v3)))
            v6))
-- Data.List.Ext.Properties._.∈-subperm-addhead
d_'8712''45'subperm'45'addhead_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'subperm'45'addhead_920 v0 ~v1 v2 v3 v4 v5 ~v6 v7
  = du_'8712''45'subperm'45'addhead_920 v0 v2 v3 v4 v5 v7
du_'8712''45'subperm'45'addhead_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'subperm'45'addhead_920 v0 v1 v2 v3 v4 v5
  = case coe v1 of
      (:) v6 v7
        -> case coe v4 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v10
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'xs'43''43'ys_242
                    (coe
                       MAlonzo.Code.Data.List.Base.du_concatMap_272
                       (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v6))
                       (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v7)))
                    (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v7))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6) (coe v2))
                    (coe
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          du_concatMap'45'decomp_450 (coe v0) (coe v0)
                          (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v7))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6) (coe v2))
                          (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v6)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                du_'8712''45'insert'45'cancel'737'_756 (coe v0)
                                (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v7))
                                (coe v2) (coe v6) (coe v5))
                             (coe du_'8759''8712'insert_526 (coe v2)))))
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v10
               -> coe
                    du_'46'extendedlambda7_934 (coe v0) (coe v6) (coe v7) (coe v2)
                    (coe v3) (coe v10)
                    (coe
                       MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_214
                       (coe
                          MAlonzo.Code.Data.List.Base.du_foldr_242
                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                          (coe
                             MAlonzo.Code.Data.List.Base.du_map_22
                             (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v6))
                             (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v7))))
                       (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v7)) v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._..extendedlambda7
d_'46'extendedlambda7_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'46'extendedlambda7_934 v0 ~v1 v2 v3 v4 v5 v6 ~v7 ~v8 v9
  = du_'46'extendedlambda7_934 v0 v2 v3 v4 v5 v6 v9
du_'46'extendedlambda7_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'46'extendedlambda7_934 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'xs'43''43'ys_242
             (coe
                MAlonzo.Code.Data.List.Base.du_concatMap_272
                (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2)))
             (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4) (coe v3))
             (coe
                du_'8712'insert'8594''8759''8712'insert_906 (coe v0) (coe v2)
                (coe v3) (coe v1) (coe v4) (coe v5) (coe v7))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'ys'43''43'xs_248
             (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_242
                (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                (coe
                   MAlonzo.Code.Data.List.Base.du_map_22
                   (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                   (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4) (coe v3))
             (coe
                du_'8712''45'subperm'45'addhead_920 (coe v0) (coe v2) (coe v3)
                (coe v4) (coe v5) (coe v7))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.sublists⊧P
d_sublists'8871'P_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  ([AgdaAny] ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [[AgdaAny]]
d_sublists'8871'P_952 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_sublists'8871'P_952 v4 v5
du_sublists'8871'P_952 ::
  ([AgdaAny] ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [[AgdaAny]]
du_sublists'8871'P_952 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_filter_892 v0
      (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v1))
-- Data.List.Ext.Properties._.maxsublists⊧P
d_maxsublists'8871'P_958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  ([AgdaAny] ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [[AgdaAny]]
d_maxsublists'8871'P_958 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_maxsublists'8871'P_958 v4 v5
du_maxsublists'8871'P_958 ::
  ([AgdaAny] ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [[AgdaAny]]
du_maxsublists'8871'P_958 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_filter_892
      (\ v2 ->
         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
           (coe MAlonzo.Code.Data.List.Base.du_length_304 v2)
           (coe du_maxlen_218 (coe du_sublists'8871'P_952 (coe v0) (coe v1))))
      (coe du_sublists'8871'P_952 (coe v0) (coe v1))
-- Data.List.Ext.Properties._.uniqueSubset→subperm
d_uniqueSubset'8594'subperm_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_uniqueSubset'8594'subperm_978 v0 ~v1 v2 v3 v4 v5
  = du_uniqueSubset'8594'subperm_978 v0 v2 v3 v4 v5
du_uniqueSubset'8594'subperm_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_uniqueSubset'8594'subperm_978 v0 v1 v2 v3 v4
  = case coe v1 of
      []
        -> case coe v2 of
             []
               -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased
             (:) v5 v6 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v5 v6
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'ys'43''43'xs_248
                    (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v6))
                    (coe
                       MAlonzo.Code.Data.List.Base.du_foldr_242
                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62) (coe v2)
                       (coe
                          MAlonzo.Code.Data.List.Base.du_map_22
                          (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v5))
                          (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v6))))
                    v2 (coe du_'91''93''8712'subpermutations_720 (coe v6))
             (:) v7 v8
               -> coe
                    du_'46'extendedlambda0_990 (coe v0) (coe v5) (coe v6) (coe v7)
                    (coe v8) (coe v3) (coe v4)
                    (coe
                       v4 v7
                       (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._..extendedlambda0
d_'46'extendedlambda0_990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'46'extendedlambda0_990 v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_'46'extendedlambda0_990 v0 v2 v3 v4 v5 v6 v7 v8
du_'46'extendedlambda0_990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'46'extendedlambda0_990 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v10
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'xs'43''43'ys_242
             (coe
                MAlonzo.Code.Data.List.Base.du_concatMap_272
                (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2)))
             (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v4))
             (coe
                MAlonzo.Code.Function.Bundles.d_from_1726
                (coe
                   du_concatMap'45'decomp_450 (coe v0) (coe v0)
                   (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v4))
                   (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1)))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         du_uniqueSubset'8594'subperm_978 (coe v0) (coe v2) (coe v4)
                         (coe
                            MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties.du_drop'8314'_138
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v4))
                            (1 :: Integer) v5)
                         (coe
                            du_'8838'y'8759''8743'y'8713''8594''8838'ys_346
                            (coe
                               (\ v11 v12 ->
                                  coe
                                    v6 v11
                                    (coe
                                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12)))))
                      (coe du_'8759''8712'insert_526 (coe v4)))))
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v10
        -> let v11
                 = coe
                     MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_214
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_242
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                           (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))))
                     (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
                     (coe
                        du_uniqueSubset'8594'subperm_978 (coe v0)
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2))
                        (coe v4)
                        (coe
                           MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties.du_drop'8314'_138
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3) (coe v4))
                           (1 :: Integer) v5)
                        (coe
                           (\ v11 v12 ->
                              coe
                                v6 v11
                                (coe
                                   MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12)))) in
           coe
             (case coe v11 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                  -> coe
                       MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'xs'43''43'ys_242
                       (coe
                          MAlonzo.Code.Data.List.Base.du_concatMap_272
                          (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                          (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2)))
                       (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3) (coe v4))
                       (coe
                          du_'8712'insert'8594''8759''8712'insert_906 (coe v0) (coe v2)
                          (coe v4) (coe v1) (coe v3) (coe v10) (coe v12))
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                  -> coe
                       MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_xs'8838'ys'43''43'xs_248
                       (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
                       (coe
                          MAlonzo.Code.Data.List.Base.du_foldr_242
                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                          (coe
                             MAlonzo.Code.Data.List.Base.du_map_22
                             (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v1))
                             (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3) (coe v4))
                       (coe
                          du_'8712''45'subperm'45'addhead_920 (coe v0) (coe v2) (coe v4)
                          (coe v3) (coe v10) (coe v12))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.subperm→subset
d_subperm'8594'subset_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_subperm'8594'subset_1006 v0 ~v1 v2 v3 v4 v5 v6
  = du_subperm'8594'subset_1006 v0 v2 v3 v4 v5 v6
du_subperm'8594'subset_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_subperm'8594'subset_1006 v0 v1 v2 v3 v4 v5
  = case coe v1 of
      (:) v6 v7
        -> coe
             du_'46'extendedlambda2_1018 (coe v0) (coe v6) (coe v7) (coe v2)
             (coe v4) (coe v5)
             (coe
                MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_214
                (coe
                   MAlonzo.Code.Data.List.Base.du_concatMap_272
                   (coe MAlonzo.Code.Data.List.Ext.du_insert_28 (coe v6))
                   (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v7)))
                (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v7)) v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._..extendedlambda2
d_'46'extendedlambda2_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'46'extendedlambda2_1018 v0 ~v1 v2 v3 v4 ~v5 v6 v7 v8
  = du_'46'extendedlambda2_1018 v0 v2 v3 v4 v6 v7 v8
du_'46'extendedlambda2_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'46'extendedlambda2_1018 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
        -> coe
             du_'46'extendedlambda3_1024 (coe v0) (coe v2) (coe v4) (coe v5)
             (coe
                du_insert'45'decomp_656 (coe v0)
                (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v2))
                (coe v1) (coe v3) (coe v7))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
             (coe
                du_subperm'8594'subset_1006 (coe v0) (coe v2) (coe v3) (coe v7)
                (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._..extendedlambda3
d_'46'extendedlambda3_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'46'extendedlambda3_1024 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 ~v8 v9
  = du_'46'extendedlambda3_1024 v0 v3 v6 v7 v9
du_'46'extendedlambda3_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'46'extendedlambda3_1024 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    du_'8712''8759''8743''8838''8594''8712'_392 (coe v2) (coe v8 v2 v3)
                    (coe
                       du_subperm'8594'subset_1006 (coe v0) (coe v1) (coe v5) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∃uniqueSubset→∃subperm
d_'8707'uniqueSubset'8594''8707'subperm_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'uniqueSubset'8594''8707'subperm_1050 v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8707'uniqueSubset'8594''8707'subperm_1050 v0 v3 v5
du_'8707'uniqueSubset'8594''8707'subperm_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'uniqueSubset'8594''8707'subperm_1050 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 du_uniqueSubset'8594'subperm_978 (coe v0) (coe v1) (coe v3)
                                 (coe v7) (coe v5))
                              (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∃subperm→∃subset
d_'8707'subperm'8594''8707'subset_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'subperm'8594''8707'subset_1064 v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8707'subperm'8594''8707'subset_1064 v0 v3 v5
du_'8707'subperm'8594''8707'subset_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'subperm'8594''8707'subset_1064 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          du_subperm'8594'subset_1006 (coe v0) (coe v1) (coe v3) (coe v5))
                       (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∃uniqueSubset→∃uniqueSubperm
d_'8707'uniqueSubset'8594''8707'uniqueSubperm_1076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'uniqueSubset'8594''8707'uniqueSubperm_1076 v0 ~v1 ~v2 v3
                                                   ~v4 v5
  = du_'8707'uniqueSubset'8594''8707'uniqueSubperm_1076 v0 v3 v5
du_'8707'uniqueSubset'8594''8707'uniqueSubperm_1076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'uniqueSubset'8594''8707'uniqueSubperm_1076 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 du_uniqueSubset'8594'subperm_978 (coe v0) (coe v1) (coe v3)
                                 (coe v7) (coe v5))
                              (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∃uniqueSubperm→∃uniqueSubset
d_'8707'uniqueSubperm'8594''8707'uniqueSubset_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'uniqueSubperm'8594''8707'uniqueSubset_1090 v0 ~v1 ~v2 v3
                                                   ~v4 v5
  = du_'8707'uniqueSubperm'8594''8707'uniqueSubset_1090 v0 v3 v5
du_'8707'uniqueSubperm'8594''8707'uniqueSubset_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'uniqueSubperm'8594''8707'uniqueSubset_1090 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe
                    seq (coe v6)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             du_subperm'8594'subset_1006 (coe v0) (coe v1) (coe v3) (coe v5))
                          (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.Properties._.∃uniqueSubset⇔∃uniqueSubperm
d_'8707'uniqueSubset'8660''8707'uniqueSubperm_1104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707'uniqueSubset'8660''8707'uniqueSubperm_1104 v0 ~v1 ~v2 v3
                                                   ~v4
  = du_'8707'uniqueSubset'8660''8707'uniqueSubperm_1104 v0 v3
du_'8707'uniqueSubset'8660''8707'uniqueSubperm_1104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8707'uniqueSubset'8660''8707'uniqueSubperm_1104 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (coe
         du_'8707'uniqueSubset'8594''8707'uniqueSubperm_1076 (coe v0)
         (coe v1))
      (coe
         du_'8707'uniqueSubperm'8594''8707'uniqueSubset_1090 (coe v0)
         (coe v1))
