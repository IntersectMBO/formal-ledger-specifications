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

module MAlonzo.Code.Axiom.Set.Factor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecPropositional.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax

-- Axiom.Set.Factor._._∪_
d__'8746'__18 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0) v2 v3
-- Axiom.Set.Factor._._≡ᵉ_
d__'8801''7497'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__20 = erased
-- Axiom.Set.Factor._.FinSet
d_FinSet_32 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> ()
d_FinSet_32 = erased
-- Axiom.Set.Factor._.disjoint
d_disjoint_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Factor._.finite
d_finite_50 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> ()
d_finite_50 = erased
-- Axiom.Set.Factor._ᶠ
d__'7584'_312 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_312 ~v0 ~v1 v2 v3 = du__'7584'_312 v2 v3
du__'7584'_312 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584'_312 v0 v1
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1)
-- Axiom.Set.Factor.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_322 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_322 v0 ~v1 v2 v3 v4 v5
  = du_'8746''45'preserves'45'finite''_322 v0 v2 v3 v4 v5
du_'8746''45'preserves'45'finite''_322 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'preserves'45'finite''_322 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_708
      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
-- Axiom.Set.Factor.Factor.factor
d_factor_344 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_344 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_factor_344 v4 v6
du_factor_344 ::
  ([AgdaAny] -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor_344 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5 -> coe v0 v4
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Factor.Factor.factor-cong
d_factor'45'cong_348 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor'45'cong_348 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_factor'45'cong_348 v5 v6 v7 v8
du_factor'45'cong_348 ::
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor'45'cong_348 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                      -> case coe v9 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                             -> coe
                                  v0 v6 v10
                                  (\ v12 ->
                                     coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                       (\ v13 v14 v15 ->
                                          coe
                                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                            (coe
                                               MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                       erased erased erased
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                          (\ v13 v14 v15 ->
                                             coe
                                               MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                               (coe
                                                  MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                          erased erased erased
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                             (\ v13 v14 v15 ->
                                                coe
                                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                  (coe
                                                     MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                             erased erased erased
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                (\ v13 ->
                                                   coe
                                                     MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                     (coe
                                                        MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                erased)
                                             (coe v11 v12))
                                          (coe
                                             MAlonzo.Code.Function.Bundles.d_to_1724
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244)
                                             v3 v12))
                                       (coe
                                          MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                                          (coe
                                             MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                                          (coe v7 v12)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Factor.Factor.factor-∪
d_factor'45''8746'_384 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
d_factor'45''8746'_384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10 v11
  = du_factor'45''8746'_384 v7 v8 v9 v10 v11
du_factor'45''8746'_384 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
du_factor'45''8746'_384 v0 v1 v2 v3 v4
  = coe
      v4
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe du__'7584'_312 (coe v0) (coe v2))))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe du__'7584'_312 (coe v1) (coe v3))))
-- Axiom.Set.Factor.FactorUnique.f-cong'
d_f'45'cong''_412 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  AgdaAny
d_f'45'cong''_412 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_f'45'cong''_412 v6 v7 v8 v9
du_f'45'cong''_412 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  AgdaAny
du_f'45'cong''_412 v0 v1 v2 v3
  = coe
      v0 v1 v2
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'8764'bag'8658''8621'_1456
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.Unique.Propositional.Properties.WithK.du_unique'8743'set'8658'bag_64
            (coe v3)))
-- Axiom.Set.Factor.FactorUnique.deduplicate-Σ
d_deduplicate'45'Σ_420 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deduplicate'45'Σ_420 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 v7
  = du_deduplicate'45'Σ_420 v3 v7
du_deduplicate'45'Σ_420 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deduplicate'45'Σ_420 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Data.List.Base.du_deduplicate_1000
         (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
         (coe v1))
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Unique.DecPropositional.Properties.du_deduplicate'45''33'_42
         (MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) v1)
-- Axiom.Set.Factor.FactorUnique.ext
d_ext_424 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] -> AgdaAny
d_ext_424 ~v0 ~v1 ~v2 v3 ~v4 v5 ~v6 v7 = du_ext_424 v3 v5 v7
du_ext_424 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  [AgdaAny] -> AgdaAny
du_ext_424 v0 v1 v2
  = coe v1 (coe du_deduplicate'45'Σ_420 (coe v0) (coe v2))
-- Axiom.Set.Factor.FactorUnique.ext-cong
d_ext'45'cong_430 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  AgdaAny
d_ext'45'cong_430 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9
  = du_ext'45'cong_430 v3 v6 v7 v8 v9
du_ext'45'cong_430 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  AgdaAny
du_ext'45'cong_430 v0 v1 v2 v3 v4
  = coe
      du_f'45'cong''_412 (coe v1)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Data.List.Base.du_deduplicate_1000
            (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.Unique.DecPropositional.Properties.du_deduplicate'45''33'_42
            (MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) v2))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Data.List.Base.du_deduplicate_1000
            (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
            (coe v3))
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.Unique.DecPropositional.Properties.du_deduplicate'45''33'_42
            (MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) v3))
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
              (\ v6 v7 v8 ->
                 coe
                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                   (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
              erased erased erased
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                 (\ v6 v7 v8 ->
                    coe
                      MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                      (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                 erased erased erased
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                    (\ v6 v7 v8 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_'8712''45'dedup_178
                       (coe v0) (coe v3) (coe v5)))
                 (coe v4 v5))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_'8712''45'dedup_178
                    (coe v0) (coe v2) (coe v5)))))
-- Axiom.Set.Factor.FactorUnique._.factor
d_factor_446 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_446 ~v0 ~v1 ~v2 v3 ~v4 v5 ~v6 = du_factor_446 v3 v5
du_factor_446 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor_446 v0 v1
  = coe du_factor_344 (coe du_ext_424 (coe v0) (coe v1))
-- Axiom.Set.Factor.FactorUnique._.factor-cong
d_factor'45'cong_448 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor'45'cong_448 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
  = du_factor'45'cong_448 v3 v6
du_factor'45'cong_448 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor'45'cong_448 v0 v1
  = coe
      du_factor'45'cong_348 (coe du_ext'45'cong_430 (coe v0) (coe v1))
-- Axiom.Set.Factor.FactorUnique._.factor-∪
d_factor'45''8746'_450 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
d_factor'45''8746'_450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_factor'45''8746'_450
du_factor'45''8746'_450 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
du_factor'45''8746'_450 v0 v1 v2 v3 v4 v5
  = coe du_factor'45''8746'_384 v1 v2 v3 v4 v5
-- Axiom.Set.Factor.FactorUnique.factor-∪'
d_factor'45''8746'''_466 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
d_factor'45''8746'''_466 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         v10 v11 ~v12 v13
  = du_factor'45''8746'''_466 v10 v11 v13
du_factor'45''8746'''_466 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
du_factor'45''8746'''_466 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe v2 v3 v5 erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
