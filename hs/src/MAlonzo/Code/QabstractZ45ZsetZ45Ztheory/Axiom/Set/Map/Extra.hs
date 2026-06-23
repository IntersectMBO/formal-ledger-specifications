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

module MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.Axiom.Set.Map.Extra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Interface.TypeClasses.HasSubset
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles.Raw
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid._≈_
d__'8776'__14 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8776'__14 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid._≉_
d__'8777'__16 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8777'__16 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid.Carrier
d_Carrier_18 :: () -> ()
d_Carrier_18 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid.isEquivalence
d_isEquivalence_20 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_20 ~v0 = du_isEquivalence_20
du_isEquivalence_20 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_20
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_284
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid.isPartialEquivalence
d_isPartialEquivalence_22 ::
  () ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_22 ~v0 = du_isPartialEquivalence_22
du_isPartialEquivalence_22 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_22
  = let v0
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_298 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid.partialSetoid
d_partialSetoid_24 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_24 ~v0 = du_partialSetoid_24
du_partialSetoid_24 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_24
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_72
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_298)
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid.rawSetoid
d_rawSetoid_26 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_26 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid.refl
d_refl_28 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refl_28 ~v0 ~v1 = du_refl_28
du_refl_28 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refl_28
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 -> v1))
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid.reflexive
d_reflexive_30 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reflexive_30 ~v0 = du_reflexive_30
du_reflexive_30 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reflexive_30
  = let v0
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_298 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
           v1)
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid.sym
d_sym_32 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sym_32 ~v0 = du_sym_32
du_sym_32 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sym_32
  = let v0
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_298 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- abstract-set-theory.Axiom.Set.Map.Extra.SetSetoid.trans
d_trans_34 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_34 ~v0 = du_trans_34
du_trans_34 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_34
  = let v0
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_298 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- abstract-set-theory.Axiom.Set.Map.Extra.HasSubset-ℙ
d_HasSubset'45'ℙ_44 ::
  () -> MAlonzo.Code.Interface.TypeClasses.HasSubset.T_HasSubset_10
d_HasSubset'45'ℙ_44 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra.HasSubset-⇀
d_HasSubset'45''8640'_50 ::
  () ->
  () -> MAlonzo.Code.Interface.TypeClasses.HasSubset.T_HasSubset_10
d_HasSubset'45''8640'_50 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._≢ᵐ_
d__'8802''7504'__68 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8802''7504'__68 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_120 a0 a1 a2 = ()
-- abstract-set-theory.Axiom.Set.Map.Extra._._.IsCommutativeSemigroup.comm
d_comm_724 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_724 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_734 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_734 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_576 (coe v0)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.◇comm
d_'9671'comm_2726 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9671'comm_2726 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.dom∪-∃∪⁺
d_dom'8746''45''8707''8746''8314'_2734 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''45''8707''8746''8314'_2734 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7
                                       v8 v9
  = du_dom'8746''45''8707''8746''8314'_2734 v2 v4 v6 v7 v8 v9
du_dom'8746''45''8707''8746''8314'_2734 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746''45''8707''8746''8314'_2734 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               v1 v0 v3 v4))
         (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_624
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v1) (coe v0) (coe v3) (coe v4) (coe v2) (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-dom∪
d_'8746''8314''45'dom'8746'_2746 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'dom'8746'_2746 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
                                 v10
  = du_'8746''8314''45'dom'8746'_2746 v2 v4 v6 v7 v8 v9 v10
du_'8746''8314''45'dom'8746'_2746 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746''8314''45'dom'8746'_2746 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_608
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe v1) (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0 v2 v3))
            (coe v4))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∥_∪⁺_∥
d_'8741'_'8746''8314'_'8741'_2756 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8741'_'8746''8314'_'8741'_2756 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
  = du_'8741'_'8746''8314'_'8741'_2756 v2 v4 v6 v7 v8 v9
du_'8741'_'8746''8314'_'8741'_2756 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8741'_'8746''8314'_'8741'_2756 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v6 -> v6))
      (coe (\ v6 -> v6))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v0) (coe v3) (coe v4) (coe v2) (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.F[_,_]
d_F'91'_'44'_'93'_2772 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_F'91'_'44'_'93'_2772 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_F'91'_'44'_'93'_2772 v2 v4 v6 v7 v8
du_F'91'_'44'_'93'_2772 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_F'91'_'44'_'93'_2772 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
             (coe
                du_'8741'_'8746''8314'_'8741'_2756 (coe v0) (coe v1) (coe v5)
                (coe v2) (coe v3) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- abstract-set-theory.Axiom.Set.Map.Extra._._.lookupᵐ∈
d_lookup'7504''8712'_2784 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504''8712'_2784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_lookup'7504''8712'_2784 v6 v7 v8
du_lookup'7504''8712'_2784 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504''8712'_2784 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.d_toSet_526
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) v1)
            (coe v0))
         v2)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∈-lookupᵐ∈
d_'8712''45'lookup'7504''8712'_2790 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'lookup'7504''8712'_2790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                    v8
  = du_'8712''45'lookup'7504''8712'_2790 v6 v7 v8
du_'8712''45'lookup'7504''8712'_2790 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'lookup'7504''8712'_2790 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.d_toSet_526
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) v1)
            (coe v0))
         v2)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.lookupᵐ∈-irrelevance
d_lookup'7504''8712''45'irrelevance_2802 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'7504''8712''45'irrelevance_2802 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∈-lookupᵐ≡
d_'8712''45'lookup'7504''8801'_2814 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'lookup'7504''8801'_2814 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.lookupᵐ∈≡
d_lookup'7504''8712''8801'_2826 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'7504''8712''8801'_2826 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∈-incl-set
d_'8712''45'incl'45'set_2840 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'incl'45'set_2840 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 ~v8
  = du_'8712''45'incl'45'set_2840 v2 v6 v7
du_'8712''45'incl'45'set_2840 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'incl'45'set_2840 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_map'8322'_150
      (\ v3 v4 ->
         coe
           MAlonzo.Code.Function.Bundles.d_to_1868
           (coe
              MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_614
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v1)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
              (coe
                 MAlonzo.Code.Axiom.Set.du_incl'45'set''_1732
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                 (coe v0) (coe v1)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))
      (coe du_lem_2854 (coe v0) (coe v1) (coe v2))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lem
d_lem_2854 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem_2854 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 ~v8 = du_lem_2854 v2 v6 v7
du_lem_2854 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem_2854 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v2 v1 in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then case coe v5 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                         -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) erased
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v5) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.k×∥∪⁺∥∈∪⁺'
d_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 ~v0 ~v1
                                                          v2 ~v3 v4 ~v5 v6 v7 v8 ~v9
  = du_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874
      v2 v4 v6 v7 v8
du_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 v0 v1 v2
                                                           v3 v4
  = coe du_goal_2892 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.kk∈
d_kk'8712'_2890 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kk'8712'_2890 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8 ~v9
  = du_kk'8712'_2890 v2 v6 v7 v8
du_kk'8712'_2890 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kk'8712'_2890 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         du_'8712''45'incl'45'set_2840 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_unions_224
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_456
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_586
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_586
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))))))
         (coe v1))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.goal
d_goal_2892 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_goal_2892 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 ~v9
  = du_goal_2892 v2 v4 v6 v7 v8
du_goal_2892 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_goal_2892 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe v0)
            (let v5
                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
             coe
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe MAlonzo.Code.Axiom.Set.d_th_1516 (coe v5))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_586
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_586
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v4)))))
         (coe du_F'91'_'44'_'93'_2772 (coe v0) (coe v1) (coe v3) (coe v4))
         (coe
            du_F'91'_'44'_'93'_2772 (coe v0) (coe v1) (coe v3) (coe v4)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du_'8712''45'incl'45'set_2840 (coe v0)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Axiom.Set.d_unions_224
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           erased
                           (coe
                              MAlonzo.Code.Axiom.Set.du_fromList_456
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3))
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                       (coe v4)))))))
                     (coe v2))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'8712''45'incl'45'set_2840 (coe v0)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Axiom.Set.d_unions_224
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        erased
                        (coe
                           MAlonzo.Code.Axiom.Set.du_fromList_456
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe v4)))))))
                  (coe v2))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
            (coe du_kk'8712'_2890 (coe v0) (coe v2) (coe v3) (coe v4))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.fold-irrelevance
d_fold'45'irrelevance_2902 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fold'45'irrelevance_2902 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-unique-val
d_'8746''8314''45'unique'45'val_3002 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'unique'45'val_3002 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∥∪⁺∥≡lu◇lu
d_'8741''8746''8314''8741''8801'lu'9671'lu_3026 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8741''8746''8314''8741''8801'lu'9671'lu_3026 ~v0 ~v1 v2 ~v3 ~v4
                                                ~v5 v6 v7 v8 v9 ~v10 ~v11
  = du_'8741''8746''8314''8741''8801'lu'9671'lu_3026 v2 v6 v7 v8 v9
du_'8741''8746''8314''8741''8801'lu'9671'lu_3026 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8741''8746''8314''8741''8801'lu'9671'lu_3026 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v1
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_586
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2)) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased v0 v1
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_586
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)) in
       coe
         (let v7
                = case coe v6 of
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                      -> coe
                           seq (coe v7)
                           (coe
                              seq (coe v8) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
                    _ -> MAlonzo.RTE.mazUnreachableError in
          coe
            (case coe v5 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                 -> let v10
                          = case coe v6 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                -> case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                       -> case coe v11 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                              -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
                                            _ -> coe v7
                                     _ -> coe v7
                              _ -> MAlonzo.RTE.mazUnreachableError in
                    coe
                      (if coe v8
                         then case coe v6 of
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                  -> if coe v11
                                       then case coe v9 of
                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                -> case coe v12 of
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v4) erased
                                                     _ -> coe v10
                                              _ -> coe v10
                                       else (case coe v12 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
                                               _ -> coe v10)
                                _ -> MAlonzo.RTE.mazUnreachableError
                         else (case coe v9 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                   -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
                                 _ -> coe v10))
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.goal
d_goal_3092 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_goal_3092 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∥∪⁺∥≡lu◇lu'
d_'8741''8746''8314''8741''8801'lu'9671'lu''_3108 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8741''8746''8314''8741''8801'lu'9671'lu''_3108 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.resᶜ-dom∉⁻
d_res'7580''45'dom'8713''8315'_3130 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7580''45'dom'8713''8315'_3130 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8
                                    v9 v10
  = du_res'7580''45'dom'8713''8315'_3130 v2 v6 v7 v8 v9 v10
du_res'7580''45'dom'8713''8315'_3130 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7580''45'dom'8713''8315'_3130 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_864
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased v0)
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1)) v2
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
         v5)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_884
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased v0)
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1)) (coe v2)
            (coe v3)
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_516
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_772
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased v0)
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1)) (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
               (coe v5))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.resᶜ-dom∉⁺
d_res'7580''45'dom'8713''8314'_3144 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'7580''45'dom'8713''8314'_3144 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8
                                    v9 v10
  = du_res'7580''45'dom'8713''8314'_3144 v2 v6 v7 v8 v9 v10
du_res'7580''45'dom'8713''8314'_3144 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'7580''45'dom'8713''8314'_3144 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_526
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) v1)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
            erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
               (MAlonzo.Code.Axiom.Set.d_sp_188
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
               erased erased
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased v0 v2))
            (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe MAlonzo.Code.Data.Product.Base.du_swap_370 (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.deconstruct-∪⁺
d_deconstruct'45''8746''8314'_3160 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deconstruct'45''8746''8314'_3160 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.fold-◇-union-comm
d_fold'45''9671''45'union'45'comm_3338 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fold'45''9671''45'union'45'comm_3338 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-comm-⊆
d_'8746''8314''45'comm'45''8838'_3436 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'comm'45''8838'_3436 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7
                                      v8 v9 v10
  = du_'8746''8314''45'comm'45''8838'_3436 v2 v4 v6 v7 v8 v9 v10
du_'8746''8314''45'comm'45''8838'_3436 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746''8314''45'comm'45''8838'_3436 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v4
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_586
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2)) in
    coe
      (let v8
             = coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased v0 v4
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_586
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)) in
       coe
         (case coe v7 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
              -> if coe v9
                   then coe
                          seq (coe v10)
                          (coe
                             MAlonzo.Code.Function.Bundles.d_to_1868
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_unions_224
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         erased
                                         (let v11
                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_fromList_456
                                               (coe MAlonzo.Code.Axiom.Set.d_th_1516 (coe v11))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_586
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_586
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                (coe
                                   (\ v11 ->
                                      coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                                        (coe
                                           MAlonzo.Code.Data.These.Base.du_fold_92
                                           (coe (\ v12 -> v12)) (coe (\ v12 -> v12))
                                           (coe
                                              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                              (coe
                                                 MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                 (coe v1)))
                                           (let v12
                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                            coe
                                              (let v13
                                                     = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v11) in
                                               coe
                                                 (let v14
                                                        = coe
                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v0
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v11))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  erased erased
                                                                  (\ v14 ->
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v14))
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v3)))) in
                                                  coe
                                                    (let v15
                                                           = coe
                                                               MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v0
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11))
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     erased erased
                                                                     (\ v15 ->
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v15))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v2)))) in
                                                     coe
                                                       (let v16
                                                              = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v11) in
                                                        coe
                                                          (case coe v14 of
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                               -> if coe v17
                                                                    then case coe v18 of
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                             -> case coe v15 of
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                                    -> if coe v20
                                                                                         then case coe
                                                                                                     v21 of
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                                                                  -> coe
                                                                                                       MAlonzo.Code.Data.These.Base.C_these_52
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                             (coe
                                                                                                                v12))
                                                                                                          (coe
                                                                                                             v3)
                                                                                                          (coe
                                                                                                             v13)
                                                                                                          (coe
                                                                                                             v19))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                             (coe
                                                                                                                v12))
                                                                                                          (coe
                                                                                                             v2)
                                                                                                          (coe
                                                                                                             v13)
                                                                                                          (coe
                                                                                                             v22))
                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                         else coe
                                                                                                seq
                                                                                                (coe
                                                                                                   v21)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.These.Base.C_this_48
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                         (coe
                                                                                                            v12))
                                                                                                      (coe
                                                                                                         v3)
                                                                                                      (coe
                                                                                                         v13)
                                                                                                      (coe
                                                                                                         v19)))
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    else coe
                                                                           seq (coe v18)
                                                                           (case coe v15 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                                -> if coe v19
                                                                                     then case coe
                                                                                                 v20 of
                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                                              -> coe
                                                                                                   MAlonzo.Code.Data.These.Base.C_that_50
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                         (coe
                                                                                                            v12))
                                                                                                      (coe
                                                                                                         v2)
                                                                                                      (coe
                                                                                                         v13)
                                                                                                      (coe
                                                                                                         v21))
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v20)
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                                                               (coe
                                                                                                  (\ v21 ->
                                                                                                     coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                       erased))
                                                                                               (coe
                                                                                                  (\ v21 ->
                                                                                                     coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                       erased))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                        (coe
                                                                                                           v12))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                              (coe
                                                                                                                 v12))
                                                                                                           erased
                                                                                                           erased
                                                                                                           (\ v21 ->
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   v21))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v3))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                              (coe
                                                                                                                 v12))
                                                                                                           erased
                                                                                                           erased
                                                                                                           (\ v21 ->
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   v21))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v2))))
                                                                                                     (coe
                                                                                                        v13))
                                                                                                  v16))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                             _ -> MAlonzo.RTE.mazUnreachableError)))))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v5)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         du_'8712''45'incl'45'set_2840 (coe v0)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_224
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               erased
                                               (let v11
                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_fromList_456
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516 (coe v11))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_586
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_586
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                         (coe v4))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         du_'8712''45'incl'45'set_2840 (coe v0)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_224
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               erased
                                               (let v11
                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_fromList_456
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516 (coe v11))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_586
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_586
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                         (coe v4))))))
                   else coe
                          seq (coe v10)
                          (case coe v8 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                               -> if coe v11
                                    then coe
                                           seq (coe v12)
                                           (coe
                                              MAlonzo.Code.Function.Bundles.d_to_1868
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                    (coe v0)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_unions_224
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (let v13
                                                                 = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe v13))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe
                                                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                      (coe
                                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                 (coe
                                                    (\ v13 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Data.These.Base.du_fold_92
                                                            (coe (\ v14 -> v14))
                                                            (coe (\ v14 -> v14))
                                                            (coe
                                                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                               (coe
                                                                  MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                  (coe v1)))
                                                            (let v14
                                                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                             coe
                                                               (let v15
                                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v13) in
                                                                coe
                                                                  (let v16
                                                                         = coe
                                                                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                             erased v0
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe v13))
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   erased erased
                                                                                   (\ v16 ->
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v16))
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe v3)))) in
                                                                   coe
                                                                     (let v17
                                                                            = coe
                                                                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                erased v0
                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v13))
                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                      erased erased
                                                                                      (\ v17 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v17))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v2)))) in
                                                                      coe
                                                                        (let v18
                                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                   (coe v13) in
                                                                         coe
                                                                           (case coe v16 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                                -> if coe v19
                                                                                     then case coe
                                                                                                 v20 of
                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                                              -> case coe
                                                                                                        v17 of
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                                                                     -> if coe
                                                                                                             v22
                                                                                                          then case coe
                                                                                                                      v23 of
                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v24
                                                                                                                   -> coe
                                                                                                                        MAlonzo.Code.Data.These.Base.C_these_52
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                              (coe
                                                                                                                                 v14))
                                                                                                                           (coe
                                                                                                                              v3)
                                                                                                                           (coe
                                                                                                                              v15)
                                                                                                                           (coe
                                                                                                                              v21))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                              (coe
                                                                                                                                 v14))
                                                                                                                           (coe
                                                                                                                              v2)
                                                                                                                           (coe
                                                                                                                              v15)
                                                                                                                           (coe
                                                                                                                              v24))
                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                          else coe
                                                                                                                 seq
                                                                                                                 (coe
                                                                                                                    v23)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Data.These.Base.C_this_48
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                          (coe
                                                                                                                             v14))
                                                                                                                       (coe
                                                                                                                          v3)
                                                                                                                       (coe
                                                                                                                          v15)
                                                                                                                       (coe
                                                                                                                          v21)))
                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v20)
                                                                                            (case coe
                                                                                                    v17 of
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                                                 -> if coe
                                                                                                         v21
                                                                                                      then case coe
                                                                                                                  v22 of
                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                                                                               -> coe
                                                                                                                    MAlonzo.Code.Data.These.Base.C_that_50
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                          (coe
                                                                                                                             v14))
                                                                                                                       (coe
                                                                                                                          v2)
                                                                                                                       (coe
                                                                                                                          v15)
                                                                                                                       (coe
                                                                                                                          v23))
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                      else coe
                                                                                                             seq
                                                                                                             (coe
                                                                                                                v22)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                                                                                (coe
                                                                                                                   (\ v23 ->
                                                                                                                      coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                        erased))
                                                                                                                (coe
                                                                                                                   (\ v23 ->
                                                                                                                      coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                        erased))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                         (coe
                                                                                                                            v14))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                               (coe
                                                                                                                                  v14))
                                                                                                                            erased
                                                                                                                            erased
                                                                                                                            (\ v23 ->
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                 (coe
                                                                                                                                    v23))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v3))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                               (coe
                                                                                                                                  v14))
                                                                                                                            erased
                                                                                                                            erased
                                                                                                                            (\ v23 ->
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                 (coe
                                                                                                                                    v23))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v2))))
                                                                                                                      (coe
                                                                                                                         v15))
                                                                                                                   v18))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))))))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v4) (coe v5)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v4)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          du_'8712''45'incl'45'set_2840 (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_unions_224
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (let v13
                                                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe v13))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                            (coe v3))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_dom_586
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                          (coe v4))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          du_'8712''45'incl'45'set_2840 (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_unions_224
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (let v13
                                                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe v13))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                            (coe v3))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_dom_586
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                          (coe v4))))))
                                    else coe
                                           seq (coe v12)
                                           (let v13
                                                  = let v13
                                                          = coe
                                                              MAlonzo.Code.Function.Bundles.d_from_1870
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_unions_224
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.Class.IsSet.du_dom_586
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                             (coe v2))
                                                                          (coe
                                                                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                (coe v3))))))
                                                                 v4)
                                                              (coe
                                                                 du_'8746''8314''45'dom'8746'_2746
                                                                 (coe v0) (coe v1) (coe v2) (coe v3)
                                                                 (coe v4) (coe v5) (coe v6)) in
                                                    coe
                                                      (let v14
                                                             = coe
                                                                 MAlonzo.Code.Function.Bundles.d_from_1870
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_listing_244
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.Class.IsSet.du_dom_586
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                             (coe v2))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                (coe v3))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Function.Bundles.d_from_1870
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_unions_224
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                         (coe v2))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                            (coe
                                                                                               v3))))))
                                                                             v4)
                                                                          (coe
                                                                             du_'8746''8314''45'dom'8746'_2746
                                                                             (coe v0) (coe v1)
                                                                             (coe v2) (coe v3)
                                                                             (coe v4) (coe v5)
                                                                             (coe v6)))))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe
                                                                          MAlonzo.Code.Function.Bundles.d_from_1870
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_unions_224
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                         (coe v2))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                            (coe
                                                                                               v3))))))
                                                                             v4)
                                                                          (coe
                                                                             du_'8746''8314''45'dom'8746'_2746
                                                                             (coe v0) (coe v1)
                                                                             (coe v2) (coe v3)
                                                                             (coe v4) (coe v5)
                                                                             (coe v6))))) in
                                                       coe
                                                         (case coe v14 of
                                                            MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v17
                                                              -> case coe v13 of
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                     -> coe
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v19))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v17
                                                              -> coe
                                                                   seq (coe v17)
                                                                   (case coe v13 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                        -> coe
                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                (coe v19))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            _ -> MAlonzo.RTE.mazUnreachableError)) in
                                            coe
                                              (coe
                                                 seq (coe v13)
                                                 (coe
                                                    MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)))
                             _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.a∈₂
d_a'8712''8322'_3468 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''8322'_3468 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11
                     ~v12
  = du_a'8712''8322'_3468 v3 v4 v5 v6
du_a'8712''8322'_3468 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''8322'_3468 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'unions_468
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_586
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_586
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Function.Bundles.d_to_1868
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_460
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_586
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_586
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_586
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0)))
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                  (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)))
            (coe v3)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.a∈˘
d_a'8712''728'_3470 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''728'_3470 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11
                    ~v12
  = du_a'8712''728'_3470 v3 v4 v5 v6
du_a'8712''728'_3470 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''728'_3470 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_replacement_236
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased erased
               (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
         (coe v2))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.b≡
d_b'8801'_3472 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_b'8801'_3472 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.a∈₂
d_a'8712''8322'_3492 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''8322'_3492 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11
                     ~v12
  = du_a'8712''8322'_3492 v3 v4 v5 v7
du_a'8712''8322'_3492 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''8322'_3492 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'unions_468
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_586
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_586
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Function.Bundles.d_to_1868
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_460
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_586
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_586
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_586
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v1)))
               (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
            (coe v3)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.a∈˘
d_a'8712''728'_3494 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''728'_3494 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11
                    ~v12
  = du_a'8712''728'_3494 v3 v4 v5 v7
du_a'8712''728'_3494 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''728'_3494 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_replacement_236
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased erased
               (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
         (coe v2))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.b≡
d_b'8801'_3496 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_b'8801'_3496 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-comm
d_'8746''8314''45'comm_3552 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'comm_3552 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7
  = du_'8746''8314''45'comm_3552 v2 v4 v6 v7
du_'8746''8314''45'comm_3552 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'comm_3552 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 ->
            coe
              du_'8746''8314''45'comm'45''8838'_3436 (coe v0) (coe v1) (coe v2)
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe
         (\ v4 ->
            coe
              du_'8746''8314''45'comm'45''8838'_3436 (coe v0) (coe v1) (coe v3)
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-comm-val
d_'8746''8314''45'comm'45'val_3562 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'comm'45'val_3562 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.kv∈₁₂
d_kv'8712''8321''8322'_3578 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8712''8321''8322'_3578 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 ~v9 ~v10
  = du_kv'8712''8321''8322'_3578 v2 v4 v6 v7 v8
du_kv'8712''8321''8322'_3578 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8712''8321''8322'_3578 v0 v1 v2 v3 v4
  = coe
      du_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 (coe v0)
      (coe v1) (coe v2) (coe v3) (coe v4)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.kv∈₂₁
d_kv'8712''8322''8321'_3582 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8712''8322''8321'_3582 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 ~v9 ~v10
  = du_kv'8712''8322''8321'_3582 v2 v4 v6 v7 v8
du_kv'8712''8322''8321'_3582 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8712''8322''8321'_3582 v0 v1 v2 v3 v4
  = coe
      du_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 (coe v0)
      (coe v1) (coe v2) (coe v4) (coe v3)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-cong-⊆ˡ
d_'8746''8314''45'cong'45''8838''737'_3592 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'cong'45''8838''737'_3592 ~v0 ~v1 v2 ~v3 v4 ~v5 v6
                                           v7 v8 v9 v10 v11 v12
  = du_'8746''8314''45'cong'45''8838''737'_3592
      v2 v4 v6 v7 v8 v9 v10 v11 v12
du_'8746''8314''45'cong'45''8838''737'_3592 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746''8314''45'cong'45''8838''737'_3592 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8
  = coe
      seq (coe v5)
      (let v9
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.d_replacement_236
                       (MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased erased
                       (\ v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                            (coe
                               MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v10 -> v10))
                               (coe (\ v10 -> v10))
                               (coe
                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                     (coe v1)))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                  (coe v0) (coe v2) (coe v3)
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9)))))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe v0)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v7)))
                 v8 in
       coe
         (case coe v9 of
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
              -> case coe v10 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                     -> coe
                          seq (coe v11)
                          (coe
                             MAlonzo.Code.Function.Bundles.d_to_1868
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_unions_224
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         erased
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_fromList_456
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_dom_586
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_586
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                     (coe v4))))))))
                                (coe du_F'91'_'44'_'93'_2772 (coe v0) (coe v1) (coe v2) (coe v4))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                   (coe
                                      MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v14 -> v14))
                                      (coe (\ v14 -> v14))
                                      (coe
                                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                            (coe v1)))
                                      (let v14
                                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                       coe
                                         (let v15
                                                = coe
                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                    erased v0 v12
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased erased
                                                          (\ v15 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v15))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v2)))) in
                                          coe
                                            (let v16
                                                   = coe
                                                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                       erased v0 v12
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_replacement_236
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (\ v16 ->
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v16))
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v3)))) in
                                             coe
                                               (case coe v15 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                    -> if coe v17
                                                         then case coe v18 of
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                  -> case coe v16 of
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                         -> if coe v20
                                                                              then case coe v21 of
                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                                                       -> coe
                                                                                            MAlonzo.Code.Data.These.Base.C_these_52
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                  (coe
                                                                                                     v14))
                                                                                               (coe
                                                                                                  v2)
                                                                                               (coe
                                                                                                  v12)
                                                                                               (coe
                                                                                                  v19))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                  (coe
                                                                                                     v14))
                                                                                               (coe
                                                                                                  v3)
                                                                                               (coe
                                                                                                  v12)
                                                                                               (coe
                                                                                                  v22))
                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                              else coe
                                                                                     seq (coe v21)
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.These.Base.C_this_48
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                              (coe
                                                                                                 v14))
                                                                                           (coe v2)
                                                                                           (coe v12)
                                                                                           (coe
                                                                                              v19)))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         else coe
                                                                seq (coe v18)
                                                                (case coe v16 of
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                     -> if coe v19
                                                                          then case coe v20 of
                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                                   -> coe
                                                                                        MAlonzo.Code.Data.These.Base.C_that_50
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                              (coe
                                                                                                 v14))
                                                                                           (coe v3)
                                                                                           (coe v12)
                                                                                           (coe
                                                                                              v21))
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          else coe
                                                                                 seq (coe v20)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                                                    (coe
                                                                                       (\ v21 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                            erased))
                                                                                    (coe
                                                                                       (\ v21 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                            erased))
                                                                                    (coe
                                                                                       MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                v14))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                   (coe
                                                                                                      v14))
                                                                                                erased
                                                                                                erased
                                                                                                (\ v21 ->
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v21))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v2))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                   (coe
                                                                                                      v14))
                                                                                                erased
                                                                                                erased
                                                                                                (\ v21 ->
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v21))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v3))))
                                                                                          (coe v12))
                                                                                       v13))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                  _ -> MAlonzo.RTE.mazUnreachableError)))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         du_'8712''45'incl'45'set_2840 (coe v0)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_224
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_fromList_456
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_586
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_586
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                           (coe v4)))))))
                                         (coe v12))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         du_'8712''45'incl'45'set_2840 (coe v0)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_224
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_fromList_456
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_586
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_586
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                           (coe v4)))))))
                                         (coe v12))))))
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> MAlonzo.RTE.mazUnreachableError))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.a∈-∪dom₁
d_a'8712''45''8746'dom'8321'_3642 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''45''8746'dom'8321'_3642 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9
                                  ~v10 ~v11 ~v12 ~v13 ~v14
  = du_a'8712''45''8746'dom'8321'_3642 v2 v4 v5 v6 v7 v8 v9
du_a'8712''45''8746'dom'8321'_3642 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''45''8746'dom'8321'_3642 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_608
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe v1) (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0 v2 v3))
            (coe v4))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v7 -> v7))
               (coe (\ v7 -> v7))
               (coe
                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                  (coe
                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v1)))
               (let v7
                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                coe
                  (let v8
                         = coe
                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0 v4
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_replacement_236
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased erased
                                   (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))) in
                   coe
                     (let v9
                            = coe
                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0 v4
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_replacement_236
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      erased erased
                                      (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))) in
                      coe
                        (case coe v8 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                             -> if coe v10
                                  then case coe v11 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                           -> case coe v9 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                  -> if coe v13
                                                       then case coe v14 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                                -> coe
                                                                     MAlonzo.Code.Data.These.Base.C_these_52
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe v7))
                                                                        (coe v2) (coe v4) (coe v12))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe v7))
                                                                        (coe v3) (coe v4) (coe v15))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Data.These.Base.C_this_48
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe v7))
                                                                    (coe v2) (coe v4) (coe v12)))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v11)
                                         (case coe v9 of
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                              -> if coe v12
                                                   then case coe v13 of
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                            -> coe
                                                                 MAlonzo.Code.Data.These.Base.C_that_50
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe v7))
                                                                    (coe v3) (coe v4) (coe v14))
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   else coe
                                                          seq (coe v13)
                                                          (coe
                                                             MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                             (coe
                                                                (\ v14 ->
                                                                   coe
                                                                     MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                     erased))
                                                             (coe
                                                                (\ v14 ->
                                                                   coe
                                                                     MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                     erased))
                                                             (coe
                                                                MAlonzo.Code.Function.Bundles.d_from_1870
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe v7))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe v7))
                                                                         erased erased
                                                                         (\ v14 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v14))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v2))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe v7))
                                                                         erased erased
                                                                         (\ v14 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v14))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v3))))
                                                                   (coe v4))
                                                                v5))
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                           _ -> MAlonzo.RTE.mazUnreachableError)))))
            (coe v6)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.dom₁⊆dom₂
d_dom'8321''8838'dom'8322'_3644 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'8321''8838'dom'8322'_3644 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
                                ~v9 ~v10 ~v11 v12 v13 ~v14 v15
  = du_dom'8321''8838'dom'8322'_3644 v6 v12 v13 v15
du_dom'8321''8838'dom'8322'_3644 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'8321''8838'dom'8322'_3644 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8838'_552
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v2)
      (coe v3)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.k∈'
d_k'8712'''_3646 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'''_3646 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 ~v10 ~v11 v12 v13
                 ~v14
  = du_k'8712'''_3646 v2 v4 v5 v6 v7 v8 v9 v12 v13
du_k'8712'''_3646 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'''_3646 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_974
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v7))
      (\ v9 v10 -> v10)
      (coe du_dom'8321''8838'dom'8322'_3644 (coe v3) (coe v7) (coe v8))
      v4
      (coe
         du_a'8712''45''8746'dom'8321'_3642 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4) (coe v5) (coe v6))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-cong-l
d_'8746''8314''45'cong'45'l_3658 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'cong'45'l_3658 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
  = du_'8746''8314''45'cong'45'l_3658 v2 v4 v6 v7 v8 v9
du_'8746''8314''45'cong'45'l_3658 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'cong'45'l_3658 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 ->
                   coe
                     du_'8746''8314''45'cong'45''8838''737'_3592 (coe v0) (coe v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                     (coe v5) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))
             (coe
                (\ v8 ->
                   coe
                     du_'8746''8314''45'cong'45''8838''737'_3592 (coe v0) (coe v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-cong-r
d_'8746''8314''45'cong'45'r_3670 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'cong'45'r_3670 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
  = du_'8746''8314''45'cong'45'r_3670 v2 v4 v6 v7 v8 v9
du_'8746''8314''45'cong'45'r_3670 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'cong'45'r_3670 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v6 v7 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 du_'8746''8314''45'comm_3552 (coe v0) (coe v1) (coe v2)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
              v6
              (coe
                 du_'8746''8314''45'cong'45''8838''737'_3592 (coe v0) (coe v1)
                 (coe v2)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                 (coe v5) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       du_'8746''8314''45'comm_3552 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                       (coe v2))
                    v6 v7))))
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        du_'8746''8314''45'comm_3552 (coe v0) (coe v1) (coe v2)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
                     v8
                     (coe
                        du_'8746''8314''45'cong'45''8838''737'_3592 (coe v0) (coe v1)
                        (coe v2)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              du_'8746''8314''45'comm_3552 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                              (coe v2))
                           v8 v9)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-dom-id
d_'8746''8314''45'dom'45'id_3686 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'dom'45'id_3686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8746''8314''45'dom'45'id_3686 v6
du_'8746''8314''45'dom'45'id_3686 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'dom'45'id_3686 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v3)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v1 v2 v3 v4 v5 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v6 v7 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5 v6
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v4 v6 v7)))
                    (coe
                       (\ v6 v7 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v4 v6
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v5 v6 v7))))))
         (\ v1 v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
            (coe
               MAlonzo.Code.Axiom.Set.du_'8709'_470
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v1 v2 v3 v4 v5 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          (\ v6 v7 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5 v6
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v4 v6 v7)))
                       (coe
                          (\ v6 v7 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v4 v6
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v5 v6 v7))))))
            (\ v1 v2 v3 ->
               case coe v3 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                   -> coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v4)
                 _ -> MAlonzo.RTE.mazUnreachableError)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_586
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_586
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_586
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_586
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_586
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     (\ v1 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v2 v3 -> v3))
                          (coe (\ v2 v3 -> v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_586
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_586
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_980
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_586
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_586
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (let v1
                         = MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                   coe (coe MAlonzo.Code.Axiom.Set.du_'8709'_470 (coe v1))))
               (let v1
                      = MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                coe (coe MAlonzo.Code.Axiom.Set.du_'8709'_470 (coe v1)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v1 v2 -> v2))
                  (coe (\ v1 v2 -> v2)))
               (coe MAlonzo.Code.Axiom.Set.Rel.du_dom'8709'_530)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_1044
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-id-dom∈
d_'8746''8314''45'id'45'dom'8712'_3748 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8746''8314''45'id'45'dom'8712'_3748 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
                                       v7
  = du_'8746''8314''45'id'45'dom'8712'_3748 v6 v7
du_'8746''8314''45'id'45'dom'8712'_3748 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8746''8314''45'id'45'dom'8712'_3748 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe du_'8746''8314''45'dom'45'id_3686 (coe v1)) v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe du_'8746''8314''45'dom'45'id_3686 (coe v1)) v0)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-id-lemma
d_'8746''8314''45'id'45'lemma_3758 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'id'45'lemma_3758 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-id-r
d_'8746''8314''45'id'45'r_3834 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'id'45'r_3834 ~v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_'8746''8314''45'id'45'r_3834 v2 v4 v6
du_'8746''8314''45'id'45'r_3834 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'id'45'r_3834 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     (\ v6 ->
                        let v7
                              = coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_replacement_236
                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased erased
                                        (\ v7 ->
                                           coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                             (coe
                                                MAlonzo.Code.Data.These.Base.du_fold_92
                                                (coe (\ v8 -> v8)) (coe (\ v8 -> v8))
                                                (coe
                                                   MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                   (coe
                                                      MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe v0) (coe v2)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v7))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                      (coe v7)))))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                           (coe v0)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))))
                                     v3)
                                  v6 in
                        coe
                          (case coe v7 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                               -> case coe v8 of
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                      -> coe
                                           seq (coe v9)
                                           (coe
                                              du_'8712''45'lookup'7504''8712'_2790 (coe v4) (coe v2)
                                              (coe
                                                 MAlonzo.Code.Function.Bundles.d_from_1870
                                                 (coe
                                                    du_'8746''8314''45'id'45'dom'8712'_3748 (coe v4)
                                                    (coe v2))
                                                 v11))
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             _ -> MAlonzo.RTE.mazUnreachableError))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     (\ v6 ->
                        coe
                          du_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 (coe v0)
                          (coe v1) (coe v4) (coe v2)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_listing_244
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe
                                (\ v7 v8 v9 v10 v11 ->
                                   coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.k∈
d_k'8712'_3888 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'_3888 ~v0 ~v1 v2 v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_k'8712'_3888 v2 v3 v6
du_k'8712'_3888 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'_3888 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe du_'8746''8314''45'id'45'dom'8712'_3748 (coe v1) (coe v0)) v2
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lu≡
d_lu'8801'_3890 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lu'8801'_3890 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.v≡
d_v'8801'_3892 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_v'8801'_3892 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.restrict-cong
d_restrict'45'cong_3902 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_restrict'45'cong_3902 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_restrict'45'cong_3902 v2 v6 v7 v8 v9
du_restrict'45'cong_3902 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_restrict'45'cong_3902 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> coe
                (\ v7 v8 ->
                   let v9
                         = coe
                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_864
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1)) v3 v7 v8 in
                   coe
                     (let v10
                            = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_884
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased v0)
                                   (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1)) (coe v3)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_516
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_772
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased v0)
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))
                                         (coe v3))
                                      (coe v7) (coe v8))) in
                      coe
                        (coe
                           du_res'7580''45'dom'8713''8314'_3144 (coe v0) (coe v2) (coe v3)
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5 v7 v9)
                              (coe v10)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> coe
                (\ v7 v8 ->
                   let v9
                         = coe
                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_864
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2)) v3 v7 v8 in
                   coe
                     (let v10
                            = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_884
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased v0)
                                   (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2)) (coe v3)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_516
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_772
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased v0)
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                                         (coe v3))
                                      (coe v7) (coe v8))) in
                      coe
                        (coe
                           du_res'7580''45'dom'8713''8314'_3144 (coe v0) (coe v1) (coe v3)
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6 v7 v9)
                              (coe v10)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.P′
d_P'8242'_3960 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_P'8242'_3960 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.P→P′
d_P'8594'P'8242'_3966 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_P'8594'P'8242'_3966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10
  = du_P'8594'P'8242'_3966 v9
du_P'8594'P'8242'_3966 :: AgdaAny -> AgdaAny
du_P'8594'P'8242'_3966 v0 = coe v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-dom-filter-P
d_'8712''45'dom'45'filter'45'P_3974 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8712''45'dom'45'filter'45'P_3974 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8 v9 v10
  = du_'8712''45'dom'45'filter'45'P_3974 v7 v8 v9 v10
du_'8712''45'dom'45'filter'45'P_3974 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8712''45'dom'45'filter'45'P_3974 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
               (coe
                  (\ v4 ->
                     coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Function.Bundles.d_from_1870
                     (coe
                        MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.IsSet.d_toSet_526
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                              (\ v4 ->
                                 coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                              v2))
                        (coe v1))
                     v3))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Function.Bundles.d_from_1870
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Class.IsSet.d_toSet_526
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                        (\ v4 ->
                           coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                        v2))
                  (coe v1))
               v3)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-dom-filter-dom
d_'8712''45'dom'45'filter'45'dom_3980 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom'45'filter'45'dom_3980 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7 v8 v9 v10
  = du_'8712''45'dom'45'filter'45'dom_3980 v7 v8 v9 v10
du_'8712''45'dom'45'filter'45'dom_3980 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'dom'45'filter'45'dom_3980 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_236
                    (MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    erased erased
                    (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe
                       MAlonzo.Code.Class.IsSet.d_toSet_526
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                          (\ v4 ->
                             coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                          v2)))
                 v1)
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased)
                 v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                  -> case coe v6 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1868
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)) (coe v1))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                    (coe
                                       MAlonzo.Code.Function.Bundles.d_from_1870
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                             (coe
                                                (\ v11 ->
                                                   coe
                                                     v0
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v11)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                             (coe v8)))
                                       v10)))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.dom-filter-⊆
d_dom'45'filter'45''8838'_4000 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'filter'45''8838'_4000 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                               v10
  = du_dom'45'filter'45''8838'_4000 v7 v8 v9 v10
du_dom'45'filter'45''8838'_4000 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'45'filter'45''8838'_4000 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1)) (coe v2))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Function.Bundles.d_from_1870
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                        (\ v4 ->
                           coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                        v1))
                  (coe v2))
               v3))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
               (coe
                  (\ v4 ->
                     coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Function.Bundles.d_from_1870
                     (coe
                        MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                              (\ v4 ->
                                 coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                              v1))
                        (coe v2))
                     v3)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Function.Bundles.d_from_1870
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                           (\ v4 ->
                              coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                           v1))
                     (coe v2))
                  v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-dom-filterˡ
d_'8712''45'dom'45'filter'737'_4008 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'dom'45'filter'737'_4008 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8 v9 v10
  = du_'8712''45'dom'45'filter'737'_4008 v7 v8 v9 v10
du_'8712''45'dom'45'filter'737'_4008 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'dom'45'filter'737'_4008 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8712''45'dom'45'filter'45'P_3974 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         du_'8712''45'dom'45'filter'45'dom_3980 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-dom-filterʳ
d_'8712''45'dom'45'filter'691'_4016 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom'45'filter'691'_4016 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8 v9 v10
  = du_'8712''45'dom'45'filter'691'_4016 v7 v8 v9 v10
du_'8712''45'dom'45'filter'691'_4016 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'dom'45'filter'691'_4016 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Function.Bundles.d_to_1868
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Axiom.Set.du_filter_448
                   (MAlonzo.Code.Axiom.Set.d_th_1516
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                      (coe
                         (\ v6 ->
                            coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                   (coe
                      MAlonzo.Code.Class.IsSet.d_toSet_526
                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) v2))
                (coe v1))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_526
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) v2)
                         (coe v1))
                      v5))
                (coe
                   MAlonzo.Code.Function.Bundles.d_to_1868
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Class.IsSet.d_toSet_526
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) v2)
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                         (coe
                            (\ v6 ->
                               coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Function.Bundles.d_from_1870
                               (coe
                                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Class.IsSet.d_toSet_526
                                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) v2)
                                  (coe v1))
                               v5))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Function.Bundles.d_from_1870
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Class.IsSet.d_toSet_526
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) v2)
                               (coe v1))
                            v5)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-∈
d_filter'7504''45''8712'_4030 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'7504''45''8712'_4030 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                              v10
  = du_filter'7504''45''8712'_4030 v7 v8 v9 v10
du_filter'7504''45''8712'_4030 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'7504''45''8712'_4030 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du_curry_224
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
               (coe
                  (\ v4 ->
                     coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.cong-filterᵐ
d_cong'45'filter'7504'_4038 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'filter'7504'_4038 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                            v10
  = du_cong'45'filter'7504'_4038 v7 v8 v9 v10
du_cong'45'filter'7504'_4038 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'filter'7504'_4038 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            coe
              du_filter'7504''45''8712'_4030 v0 v2
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    du_'8712''45'dom'45'filter'737'_4008 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v1)
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_516
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.IsSet.d_toSet_526
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                             (\ v6 ->
                                coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                             v1))
                       (coe v4) (coe v5))))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v3 v4
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Function.Bundles.d_from_1870
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                             (coe
                                (\ v6 ->
                                   coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                          (coe v4))
                       v5)))))
      (coe
         (\ v4 v5 ->
            coe
              du_filter'7504''45''8712'_4030 v0 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    du_'8712''45'dom'45'filter'737'_4008 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v2)
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_516
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.IsSet.d_toSet_526
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                             (\ v6 ->
                                coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                             v2))
                       (coe v4) (coe v5))))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v3 v4
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Function.Bundles.d_from_1870
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                             (coe
                                (\ v6 ->
                                   coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                          (coe v4))
                       v5)))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∪⁺-filter-P′
d_'8746''8314''45'filter'45'P'8242'_4060 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8746''8314''45'filter'45'P'8242'_4060 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6
                                         v7 v8 v9 v10 v11 v12
  = du_'8746''8314''45'filter'45'P'8242'_4060
      v2 v4 v7 v8 v9 v10 v11 v12
du_'8746''8314''45'filter'45'P'8242'_4060 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8746''8314''45'filter'45'P'8242'_4060 v0 v1 v2 v3 v4 v5 v6 v7
  = let v8
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_unions_224
                    (MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    erased
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_456
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_specification_214
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      erased erased
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                         (coe
                                            (\ v8 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v8)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                      (\ v8 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                      v5))))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_specification_214
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         erased erased
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v6))
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                            (coe
                                               (\ v8 ->
                                                  coe
                                                    v2
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8)))))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                         (\ v8 ->
                                            coe
                                              v2
                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                         v6))))))))
                 v3)
              (coe
                 du_'8746''8314''45'dom'8746'_2746 (coe v0) (coe v1)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Axiom.Set.d_specification_214
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          erased erased
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v5))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                             (coe
                                (\ v8 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                          (\ v8 ->
                             coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                          v5)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Axiom.Set.d_specification_214
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          erased erased
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v6))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                             (coe
                                (\ v8 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                          (\ v8 ->
                             coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                          v6)))
                 (coe v3) (coe v4) (coe v7)) in
    coe
      (let v9
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.d_listing_244
                       (MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_specification_214
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      erased erased
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v5))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_specification_214
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         erased erased
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v6))
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                            (coe
                                               (\ v9 ->
                                                  coe
                                                    v2
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v9)))))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                         (\ v9 ->
                                            coe
                                              v2
                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                         v6))))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1870
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe
                                MAlonzo.Code.Axiom.Set.d_unions_224
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_214
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                     (coe v5))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                     (coe
                                                        (\ v9 ->
                                                           coe
                                                             v2
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v9)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                  (\ v9 ->
                                                     coe
                                                       v2
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9)))
                                                  v5))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_214
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                        (coe
                                                           (\ v9 ->
                                                              coe
                                                                v2
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v9)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                     (\ v9 ->
                                                        coe
                                                          v2
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v9)))
                                                     v6))))))))
                             v3)
                          (coe
                             du_'8746''8314''45'dom'8746'_2746 (coe v0) (coe v1)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_specification_214
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      erased erased
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v5)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_specification_214
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      erased erased
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v6))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v6)))
                             (coe v3) (coe v4) (coe v7)))))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1870
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe
                                MAlonzo.Code.Axiom.Set.d_unions_224
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_214
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                     (coe v5))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                     (coe
                                                        (\ v9 ->
                                                           coe
                                                             v2
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v9)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                  (\ v9 ->
                                                     coe
                                                       v2
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9)))
                                                  v5))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_214
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                        (coe
                                                           (\ v9 ->
                                                              coe
                                                                v2
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v9)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                     (\ v9 ->
                                                        coe
                                                          v2
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v9)))
                                                     v6))))))))
                             v3)
                          (coe
                             du_'8746''8314''45'dom'8746'_2746 (coe v0) (coe v1)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_specification_214
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      erased erased
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v5)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_specification_214
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      erased erased
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v6))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v6)))
                             (coe v3) (coe v4) (coe v7))))) in
       coe
         (case coe v9 of
            MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v12
              -> case coe v8 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                     -> let v15 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14) in
                        coe
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe
                                du_'8712''45'dom'45'filter'737'_4008 (coe v2) (coe v3) (coe v5)
                                (coe v15)))
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12
              -> let v13
                       = seq
                           (coe v12)
                           (case coe v8 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                -> coe
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                              _ -> MAlonzo.RTE.mazUnreachableError) in
                 coe
                   (case coe v13 of
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                        -> coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe
                                du_'8712''45'dom'45'filter'737'_4008 (coe v2) (coe v3) (coe v5)
                                (coe v14))
                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                        -> coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe
                                du_'8712''45'dom'45'filter'737'_4008 (coe v2) (coe v3) (coe v6)
                                (coe v14))
                      _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lookup≡lookup-filter
d_lookup'8801'lookup'45'filter_4106 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8801'lookup'45'filter_4106 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-∪⁺-l'
d_'8712''45''8746''8314''45'l''_4122 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45''8746''8314''45'l''_4122 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-∪⁺-l
d_'8712''45''8746''8314''45'l_4224 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45''8746''8314''45'l_4224 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∪⁺-filter
d_'8746''8314''45'filter_4240 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'filter_4240 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
                              v10 v11 v12 v13 ~v14
  = du_'8746''8314''45'filter_4240 v2 v4 v7 v8 v9 v10 v11 v12 v13
du_'8746''8314''45'filter_4240 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746''8314''45'filter_4240 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                  (\ v9 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                  v3))
            (coe v5))
         (coe
            du_a'8712'f'8321'_4260 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5) (coe v6) (coe v7) (coe v8)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.a∈f₁
d_a'8712'f'8321'_4260 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712'f'8321'_4260 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11
                      v12 v13 ~v14
  = du_a'8712'f'8321'_4260 v2 v4 v7 v8 v9 v10 v11 v12 v13
du_a'8712'f'8321'_4260 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712'f'8321'_4260 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      du_'8712''45'dom'45'filter'691'_4016 (coe v2) (coe v5) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'8746''8314''45'filter'45'P'8242'_4060 (coe v0) (coe v1)
            (coe v2) (coe v5) (coe v6) (coe v3) (coe v4) (coe v7))
         (coe v8))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.a∉f₂
d_a'8713'f'8322'_4262 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_a'8713'f'8322'_4262 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∪⁺-filter-lookup≡
d_'8746''8314''45'filter'45'lookup'8801'_4276 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'filter'45'lookup'8801'_4276 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-∪⁺-filterˡ
d_'8712''45''8746''8314''45'filter'737'_4298 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45''8746''8314''45'filter'737'_4298 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₁′
d_m'8321''8242'_4382 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4382 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16 ~v17
  = du_m'8321''8242'_4382 v4 v12
du_m'8321''8242'_4382 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4382 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₂′
d_m'8322''8242'_4384 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4384 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16 ~v17
  = du_m'8322''8242'_4384 v5 v12
du_m'8322''8242'_4384 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4384 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈m₂′
d_k'8712'm'8322''8242'_4386 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8322''8242'_4386 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9
                            ~v10 ~v11 v12 ~v13 ~v14 ~v15 ~v16 v17
  = du_k'8712'm'8322''8242'_4386 v3 v4 v5 v7 v12 v17
du_k'8712'm'8322''8242'_4386 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8322''8242'_4386 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'dom'45'filter'691'_4016 (coe v4) (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'dom'45'filter'737'_4008 (coe v4) (coe v0) (coe v1)
               (coe v5)))
         (coe v3))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.v≡m₂m₁
d_v'8801'm'8322'm'8321'_4412 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_v'8801'm'8322'm'8321'_4412 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-∪⁺-distr-⊇
d_filter'7504''45''8746''8314''45'distr'45''8839'_4512 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'7504''45''8746''8314''45'distr'45''8839'_4512 ~v0 ~v1 v2
                                                       ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11 ~v12
  = du_filter'7504''45''8746''8314''45'distr'45''8839'_4512
      v2 v4 v7 v8 v9 v10 v11
du_filter'7504''45''8746''8314''45'distr'45''8839'_4512 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'7504''45''8746''8314''45'distr'45''8839'_4512 v0 v1 v2 v3
                                                        v4 v5 v6
  = let v7
          = MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v2 v5) in
    coe
      (case coe v7 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
           -> if coe v8
                then case coe v9 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                         -> coe
                              du_yes'45'case_4552 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                              (coe v5) (coe v6) (coe v10)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v9) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈Pm₁∨k∈Pm₂
d_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4528 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4528 ~v0 ~v1 v2 ~v3 v4 ~v5
                                            ~v6 v7 v8 v9 v10 v11 v12
  = du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4528
      v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4528 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4528 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (let v8
                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_354
               (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v8))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Axiom.Set.d_specification_214
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           erased erased
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                              (coe
                                 (\ v9 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                           (\ v9 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                           v3))))))
         (let v8
                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_354
               (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v8))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Axiom.Set.d_specification_214
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           erased erased
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                              (coe
                                 (\ v9 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                           (\ v9 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                           v4))))))
         (coe v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_608
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v1) (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_214
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased erased
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                     (coe
                        (\ v8 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                  (\ v8 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                  v3)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_214
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased erased
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                     (coe
                        (\ v8 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                  (\ v8 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                  v4)))
         (coe v5)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_440
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Axiom.Set.d_specification_214
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           erased erased
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                              (coe
                                 (\ v8 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                           (\ v8 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                           v3)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Axiom.Set.d_specification_214
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           erased erased
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                              (coe
                                 (\ v8 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                           (\ v8 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                           v4)))))
            (coe (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6))
            (coe v7)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈Pm₁⊕k∈Pm₂
d_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4530 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
d_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4530 ~v0 ~v1 v2 ~v3 v4 ~v5
                                            ~v6 v7 v8 v9 v10 v11 v12
  = du_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4530
      v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4530 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4530 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = let v8
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v5
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_586
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                    (\ v8 ->
                       coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                    v3)) in
    coe
      (let v9
             = coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased v0 v5
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_586
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                       (\ v9 ->
                          coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                       v4)) in
       coe
         (let v10
                = let v10
                        = coe
                            MAlonzo.Code.Function.Bundles.d_from_1870
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_unions_224
                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  erased
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_fromList_456
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                        (let v10
                                               = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                              (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_specification_214
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased erased
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                             (coe v3))
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                             (coe
                                                                (\ v11 ->
                                                                   coe
                                                                     v2
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v11)))))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))
                                                          v3))))))
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                           (let v10
                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_specification_214
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v4))))))))))
                               v5)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_608
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe v1) (coe v0)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased erased
                                        (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                           (coe
                                              (\ v10 ->
                                                 coe
                                                   v2
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v10)))))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                        (\ v10 ->
                                           coe
                                             v2
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                        v3)))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased erased
                                        (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                           (coe
                                              (\ v10 ->
                                                 coe
                                                   v2
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v10)))))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                        (\ v10 ->
                                           coe
                                             v2
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                        v4)))
                               (coe v5)
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_440
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        v1 v0
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_specification_214
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased erased
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                    (coe v3))
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                    (coe
                                                       (\ v10 ->
                                                          coe
                                                            v2
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v10)))))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                 (\ v10 ->
                                                    coe
                                                      v2
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v10)))
                                                 v3)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_specification_214
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased erased
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                    (coe v4))
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                    (coe
                                                       (\ v10 ->
                                                          coe
                                                            v2
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v10)))))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                 (\ v10 ->
                                                    coe
                                                      v2
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v10)))
                                                 v4)))))
                                  (coe
                                     (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6))
                                  (coe v7))) in
                  coe
                    (let v11
                           = coe
                               MAlonzo.Code.Function.Bundles.d_from_1870
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_listing_244
                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     erased
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                        (let v11
                                               = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                              (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v11))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_specification_214
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased erased
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                             (coe v3))
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                             (coe
                                                                (\ v12 ->
                                                                   coe
                                                                     v2
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v12)))))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                          (\ v12 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v12)))
                                                          v3))))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                           (let v11
                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v11))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_specification_214
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                (coe
                                                                   (\ v12 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v12)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                             (\ v12 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v12)))
                                                             v4))))))
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Function.Bundles.d_from_1870
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_unions_224
                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              erased
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_456
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (let v11
                                                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe v11))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_specification_214
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                         (coe
                                                                            (\ v12 ->
                                                                               coe
                                                                                 v2
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v12)))))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                      (\ v12 ->
                                                                         coe
                                                                           v2
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v12)))
                                                                      v3))))))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                       (let v11
                                                              = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe v11))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_specification_214
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         erased erased
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                            (coe v4))
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                            (coe
                                                                               (\ v12 ->
                                                                                  coe
                                                                                    v2
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          v12)))))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                         (\ v12 ->
                                                                            coe
                                                                              v2
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v12)))
                                                                         v4))))))))))
                                           v5)
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_608
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                           (coe v1) (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_specification_214
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased erased
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                       (coe v3))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                    (\ v11 ->
                                                       coe
                                                         v2
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v11)))
                                                    v3)))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_specification_214
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased erased
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                       (coe v4))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                    (\ v11 ->
                                                       coe
                                                         v2
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v11)))
                                                    v4)))
                                           (coe v5)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_440
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                    v1 v0
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_specification_214
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe v3))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v3)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_specification_214
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v4)))))
                                              (coe
                                                 (\ v11 ->
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v11)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v5) (coe v6))
                                              (coe v7))))))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Function.Bundles.d_from_1870
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_unions_224
                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              erased
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_456
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (let v11
                                                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe v11))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_specification_214
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                         (coe
                                                                            (\ v12 ->
                                                                               coe
                                                                                 v2
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v12)))))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                      (\ v12 ->
                                                                         coe
                                                                           v2
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v12)))
                                                                      v3))))))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                       (let v11
                                                              = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe v11))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_specification_214
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         erased erased
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                            (coe v4))
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                            (coe
                                                                               (\ v12 ->
                                                                                  coe
                                                                                    v2
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          v12)))))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                         (\ v12 ->
                                                                            coe
                                                                              v2
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v12)))
                                                                         v4))))))))))
                                           v5)
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_608
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                           (coe v1) (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_specification_214
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased erased
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                       (coe v3))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                    (\ v11 ->
                                                       coe
                                                         v2
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v11)))
                                                    v3)))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_specification_214
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased erased
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                       (coe v4))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                    (\ v11 ->
                                                       coe
                                                         v2
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v11)))
                                                    v4)))
                                           (coe v5)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_440
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                    v1 v0
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_specification_214
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe v3))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v3)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_specification_214
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v4)))))
                                              (coe
                                                 (\ v11 ->
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v11)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v5) (coe v6))
                                              (coe v7)))))) in
                     coe
                       (case coe v11 of
                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v14
                            -> case coe v10 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                   -> coe
                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v16))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v14
                            -> coe
                                 seq (coe v14)
                                 (case coe v10 of
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                      -> coe
                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v16))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)) in
          coe
            (case coe v8 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                 -> if coe v11
                      then case coe v12 of
                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                               -> case coe v9 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                      -> if coe v14
                                           then case coe v15 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                    -> coe
                                                         MAlonzo.Code.Data.These.Base.C_these_52
                                                         (coe v13) (coe v16)
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v15)
                                                  (coe
                                                     MAlonzo.Code.Data.These.Base.C_this_48
                                                     (coe v13))
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             _ -> MAlonzo.RTE.mazUnreachableError
                      else coe
                             seq (coe v12)
                             (case coe v9 of
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                  -> if coe v13
                                       then case coe v14 of
                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                -> coe
                                                     MAlonzo.Code.Data.These.Base.C_that_50
                                                     (coe v15)
                                              _ -> MAlonzo.RTE.mazUnreachableError
                                       else coe
                                              seq (coe v14)
                                              (coe
                                                 seq (coe v10)
                                                 (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
                                _ -> MAlonzo.RTE.mazUnreachableError)
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.yes-case
d_yes'45'case_4552 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_yes'45'case_4552 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11 ~v12
                   v13
  = du_yes'45'case_4552 v2 v4 v7 v8 v9 v10 v11 v13
du_yes'45'case_4552 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_yes'45'case_4552 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               v1 v0 v3 v4))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
            (coe
               (\ v8 ->
                  coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
         (coe
            du_kv'8712'm'8321'm'8322'_4580 (coe v0) (coe v1) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.k∈m₁∨k∈m₂
d_k'8712'm'8321''8744'k'8712'm'8322'_4560 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_k'8712'm'8321''8744'k'8712'm'8322'_4560 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6
                                          v7 v8 v9 v10 v11 v12 ~v13
  = du_k'8712'm'8321''8744'k'8712'm'8322'_4560
      v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'm'8321''8744'k'8712'm'8322'_4560 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_k'8712'm'8321''8744'k'8712'm'8322'_4560 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.Sum.Base.du_map_84
      (coe du_dom'45'filter'45''8838'_4000 (coe v2) (coe v3) (coe v5))
      (coe du_dom'45'filter'45''8838'_4000 (coe v2) (coe v4) (coe v5))
      (coe
         du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4528 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4) (coe v5) (coe v6) (coe v7))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.k∈m₁m₂
d_k'8712'm'8321'm'8322'_4562 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8321'm'8322'_4562 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10
                             v11 v12 ~v13
  = du_k'8712'm'8321'm'8322'_4562 v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'm'8321'm'8322'_4562 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8321'm'8322'_4562 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v4))
         (coe v5))
      (coe
         du_k'8712'm'8321''8744'k'8712'm'8322'_4560 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4) (coe v5) (coe v6) (coe v7))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.[kv′∈m₁m₂]
d_'91'kv'8242''8712'm'8321'm'8322''93'_4568 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'91'kv'8242''8712'm'8321'm'8322''93'_4568 ~v0 ~v1 v2 ~v3 v4 ~v5
                                            ~v6 ~v7 v8 v9 v10 ~v11 ~v12 ~v13
  = du_'91'kv'8242''8712'm'8321'm'8322''93'_4568 v2 v4 v8 v9 v10
du_'91'kv'8242''8712'm'8321'm'8322''93'_4568 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'91'kv'8242''8712'm'8321'm'8322''93'_4568 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8712''45'incl'45'set_2840 (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_unions_224
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased
                  (coe
                     MAlonzo.Code.Axiom.Set.du_fromList_456
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_586
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
                        (coe
                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_586
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))))))
            (coe v4)))
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_440
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe v0)
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe
            (\ v5 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                 (coe
                    MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v6 -> v6))
                    (coe (\ v6 -> v6))
                    (coe
                       MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                       (coe
                          MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v1)))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe v0) (coe v2) (coe v3)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'8712''45'incl'45'set_2840 (coe v0)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Axiom.Set.d_unions_224
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        erased
                        (coe
                           MAlonzo.Code.Axiom.Set.du_fromList_456
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe v3)))))))
                  (coe v4))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               du_'8712''45'incl'45'set_2840 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_unions_224
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_586
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))))))
               (coe v4))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.k∈m₁m₂′
d_k'8712'm'8321'm'8322''8242'_4570 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8321'm'8322''8242'_4570 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8
                                   v9 v10 ~v11 ~v12 ~v13
  = du_k'8712'm'8321'm'8322''8242'_4570 v2 v4 v8 v9 v10
du_k'8712'm'8321'm'8322''8242'_4570 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8321'm'8322''8242'_4570 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'91'kv'8242''8712'm'8321'm'8322''93'_4568 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.k∈m₁∪⁺m₂
d_k'8712'm'8321''8746''8314'm'8322'_4572 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8321''8746''8314'm'8322'_4572 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6
                                         ~v7 v8 v9 v10 ~v11 ~v12 ~v13
  = du_k'8712'm'8321''8746''8314'm'8322'_4572 v2 v4 v8 v9 v10
du_k'8712'm'8321''8746''8314'm'8322'_4572 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8321''8746''8314'm'8322'_4572 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_624
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe v1) (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         du_k'8712'm'8321'm'8322''8242'_4570 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.v′
d_v'8242'_4574 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> AgdaAny
d_v'8242'_4574 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8 v9 v10 ~v11 ~v12
               ~v13
  = du_v'8242'_4574 v2 v4 v8 v9 v10
du_v'8242'_4574 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_v'8242'_4574 v0 v1 v2 v3 v4
  = coe
      du_'8741'_'8746''8314'_'8741'_2756 (coe v0) (coe v1) (coe v4)
      (coe v2) (coe v3)
      (coe
         du_k'8712'm'8321'm'8322''8242'_4570 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.kv′∈m₁m₂
d_kv'8242''8712'm'8321'm'8322'_4576 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8242''8712'm'8321'm'8322'_4576 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7
                                    v8 v9 v10 ~v11 ~v12 ~v13
  = du_kv'8242''8712'm'8321'm'8322'_4576 v2 v4 v8 v9 v10
du_kv'8242''8712'm'8321'm'8322'_4576 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8242''8712'm'8321'm'8322'_4576 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         du_'91'kv'8242''8712'm'8321'm'8322''93'_4568 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.v=v′
d_v'61'v'8242'_4578 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_v'61'v'8242'_4578 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.kv∈m₁m₂
d_kv'8712'm'8321'm'8322'_4580 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8712'm'8321'm'8322'_4580 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8 v9
                              v10 ~v11 ~v12 ~v13
  = du_kv'8712'm'8321'm'8322'_4580 v2 v4 v8 v9 v10
du_kv'8712'm'8321'm'8322'_4580 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8712'm'8321'm'8322'_4580 v0 v1 v2 v3 v4
  = coe
      du_kv'8242''8712'm'8321'm'8322'_4576 (coe v0) (coe v1) (coe v2)
      (coe v3) (coe v4)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-∪⁺-distr-⊆
d_filter'7504''45''8746''8314''45'distr'45''8838'_4594 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'7504''45''8746''8314''45'distr'45''8838'_4594 ~v0 ~v1 v2
                                                       ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11 v12
  = du_filter'7504''45''8746''8314''45'distr'45''8838'_4594
      v2 v4 v7 v8 v9 v10 v11 v12
du_filter'7504''45''8746''8314''45'distr'45''8838'_4594 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'7504''45''8746''8314''45'distr'45''8838'_4594 v0 v1 v2 v3
                                                        v4 v5 v6 v7
  = let v8
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_214
                    (MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    erased erased
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          v1 v0 v3 v4))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                       (coe
                          (\ v8 ->
                             coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6)))
              v7 in
    coe
      (case coe v8 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
           -> let v11
                    = coe
                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased v0 v5
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_586
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)) in
              coe
                (let v12
                       = coe
                           MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v0 v5
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_586
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v4)) in
                 coe
                   (case coe v11 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                        -> if coe v13
                             then coe
                                    seq (coe v14)
                                    (case coe v12 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                         -> if coe v15
                                              then coe
                                                     seq (coe v16)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_'8707'b_4658 (coe v0) (coe v3)
                                                           (coe v4) (coe v5) (coe v1) (coe v2)))
                                              else coe
                                                     seq (coe v16)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_'8707'b_4738 (coe v0) (coe v3)
                                                           (coe v4) (coe v5) (coe v1) (coe v2)))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             else coe
                                    seq (coe v14)
                                    (case coe v12 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                         -> if coe v15
                                              then coe
                                                     seq (coe v16)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_'8707'b_4698 (coe v0) (coe v3)
                                                           (coe v4) (coe v5) (coe v1) (coe v2)))
                                              else coe
                                                     seq (coe v16)
                                                     (let v17
                                                            = let v17
                                                                    = coe
                                                                        MAlonzo.Code.Function.Bundles.d_from_1870
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_unions_224
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              erased
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                       (coe v3))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                          (coe
                                                                                             v4))))))
                                                                           v5)
                                                                        (coe
                                                                           du_'8746''8314''45'dom'8746'_2746
                                                                           (coe v0) (coe v1)
                                                                           (coe v3) (coe v4)
                                                                           (coe v5) (coe v6)
                                                                           (coe v10)) in
                                                              coe
                                                                (let v18
                                                                       = coe
                                                                           MAlonzo.Code.Function.Bundles.d_from_1870
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_listing_244
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                       (coe v3))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                          (coe v4))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_unions_224
                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                   (coe
                                                                                                      v3))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                         (coe
                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                      (coe
                                                                                                         v4))))))
                                                                                       v5)
                                                                                    (coe
                                                                                       du_'8746''8314''45'dom'8746'_2746
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v3)
                                                                                       (coe v4)
                                                                                       (coe v5)
                                                                                       (coe v6)
                                                                                       (coe v10)))))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                 (coe
                                                                                    MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_unions_224
                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                   (coe
                                                                                                      v3))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                         (coe
                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                      (coe
                                                                                                         v4))))))
                                                                                       v5)
                                                                                    (coe
                                                                                       du_'8746''8314''45'dom'8746'_2746
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v3)
                                                                                       (coe v4)
                                                                                       (coe v5)
                                                                                       (coe v6)
                                                                                       (coe
                                                                                          v10))))) in
                                                                 coe
                                                                   (case coe v18 of
                                                                      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v21
                                                                        -> case coe v17 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                               -> coe
                                                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v23))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v21
                                                                        -> coe
                                                                             seq (coe v21)
                                                                             (case coe v17 of
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                  -> coe
                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v23))
                                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)) in
                                                      coe
                                                        (coe
                                                           seq (coe v17)
                                                           (coe
                                                              MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                      _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₁′
d_m'8321''8242'_4650 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4650 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8321''8242'_4650 v3 v12
du_m'8321''8242'_4650 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4650 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₂′
d_m'8322''8242'_4652 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4652 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8322''8242'_4652 v4 v12
du_m'8322''8242'_4652 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4652 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈∪dom′
d_k'8712''8746'dom'8242'_4654 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712''8746'dom'8242'_4654 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9
                              ~v10 ~v11 v12 ~v13 ~v14 v15 ~v16
  = du_k'8712''8746'dom'8242'_4654 v3 v4 v5 v6 v12 v15
du_k'8712''8746'dom'8242'_4654 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712''8746'dom'8242'_4654 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_526
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                  (\ v6 ->
                     coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v0)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe du_m'8322''8242'_4652 (coe v1) (coe v4)))
         (coe v2))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
         (coe
            du_'8712''45'dom'45'filter'691'_4016 (coe v4) (coe v2) (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.∃b
d_'8707'b_4658 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'b_4658 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16
  = du_'8707'b_4658 v2 v3 v4 v5 v9 v12
du_'8707'b_4658 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'b_4658 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8741'_'8746''8314'_'8741'_2756 (coe v0) (coe v4) (coe v3)
         (coe du_m'8321''8242'_4650 (coe v1) (coe v5))
         (coe du_m'8322''8242'_4652 (coe v2) (coe v5))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'incl'45'set_2840 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_unions_224
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_586
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                              (coe du_m'8321''8242'_4650 (coe v1) (coe v5)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                 (coe du_m'8322''8242'_4652 (coe v2) (coe v5))))))))
               (coe v3))))
      (coe
         du_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 (coe v0)
         (coe v4) (coe v3)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_214
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased erased
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_214
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased erased
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.b
d_b_4660 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_b_4660 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12 ~v13 ~v14
         ~v15 ~v16
  = du_b_4660 v2 v3 v4 v5 v9 v12
du_b_4660 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny
du_b_4660 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'8707'b_4658 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈′
d_kb'8712''8242'_4662 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712''8242'_4662 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11
                      v12 ~v13 ~v14 ~v15 ~v16
  = du_kb'8712''8242'_4662 v2 v3 v4 v5 v9 v12
du_kb'8712''8242'_4662 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712''8242'_4662 v0 v1 v2 v3 v4 v5
  = coe
      du_filter'7504''45''8746''8314''45'distr'45''8839'_4512 (coe v0)
      (coe v4) (coe v5) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8707'b_4658 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈
d_kb'8712'_4664 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712'_4664 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
                ~v13 ~v14 ~v15 ~v16
  = du_kb'8712'_4664 v2 v3 v4 v5 v9 v12
du_kb'8712'_4664 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712'_4664 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v4 v0 v1 v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
               (coe
                  (\ v6 ->
                     coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  du_b_4660 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
         (coe
            du_kb'8712''8242'_4662 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₁′
d_m'8321''8242'_4690 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4690 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8321''8242'_4690 v3 v12
du_m'8321''8242'_4690 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4690 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₂′
d_m'8322''8242'_4692 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4692 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8322''8242'_4692 v4 v12
du_m'8322''8242'_4692 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4692 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈∪dom′
d_k'8712''8746'dom'8242'_4694 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712''8746'dom'8242'_4694 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9
                              ~v10 ~v11 v12 ~v13 ~v14 v15 ~v16
  = du_k'8712''8746'dom'8242'_4694 v3 v4 v5 v7 v12 v15
du_k'8712''8746'dom'8242'_4694 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712''8746'dom'8242'_4694 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe du_m'8321''8242'_4690 (coe v0) (coe v4)))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_526
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                  (\ v6 ->
                     coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v1)))
         (coe v2))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
         (coe
            du_'8712''45'dom'45'filter'691'_4016 (coe v4) (coe v2) (coe v1)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.∃b
d_'8707'b_4698 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'b_4698 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16
  = du_'8707'b_4698 v2 v3 v4 v5 v9 v12
du_'8707'b_4698 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'b_4698 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8741'_'8746''8314'_'8741'_2756 (coe v0) (coe v4) (coe v3)
         (coe du_m'8321''8242'_4690 (coe v1) (coe v5))
         (coe du_m'8322''8242'_4692 (coe v2) (coe v5))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'incl'45'set_2840 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_unions_224
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_586
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                              (coe du_m'8321''8242'_4690 (coe v1) (coe v5)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                 (coe du_m'8322''8242'_4692 (coe v2) (coe v5))))))))
               (coe v3))))
      (coe
         du_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 (coe v0)
         (coe v4) (coe v3)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_214
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased erased
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_214
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased erased
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.b
d_b_4700 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_b_4700 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12 ~v13 ~v14
         ~v15 ~v16
  = du_b_4700 v2 v3 v4 v5 v9 v12
du_b_4700 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny
du_b_4700 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'8707'b_4698 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈′
d_kb'8712''8242'_4702 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712''8242'_4702 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11
                      v12 ~v13 ~v14 ~v15 ~v16
  = du_kb'8712''8242'_4702 v2 v3 v4 v5 v9 v12
du_kb'8712''8242'_4702 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712''8242'_4702 v0 v1 v2 v3 v4 v5
  = coe
      du_filter'7504''45''8746''8314''45'distr'45''8839'_4512 (coe v0)
      (coe v4) (coe v5) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8707'b_4698 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈
d_kb'8712'_4704 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712'_4704 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
                ~v13 ~v14 ~v15 ~v16
  = du_kb'8712'_4704 v2 v3 v4 v5 v9 v12
du_kb'8712'_4704 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712'_4704 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v4 v0 v1 v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
               (coe
                  (\ v6 ->
                     coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  du_b_4700 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
         (coe
            du_kb'8712''8242'_4702 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₁′
d_m'8321''8242'_4730 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4730 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8321''8242'_4730 v3 v12
du_m'8321''8242'_4730 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4730 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₂′
d_m'8322''8242'_4732 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4732 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8322''8242'_4732 v4 v12
du_m'8322''8242'_4732 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4732 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈∪dom′
d_k'8712''8746'dom'8242'_4734 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712''8746'dom'8242'_4734 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9
                              ~v10 ~v11 v12 ~v13 ~v14 v15 ~v16
  = du_k'8712''8746'dom'8242'_4734 v3 v4 v5 v6 v12 v15
du_k'8712''8746'dom'8242'_4734 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712''8746'dom'8242'_4734 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_526
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                  (\ v6 ->
                     coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v0)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe du_m'8322''8242'_4732 (coe v1) (coe v4)))
         (coe v2))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
         (coe
            du_'8712''45'dom'45'filter'691'_4016 (coe v4) (coe v2) (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.∃b
d_'8707'b_4738 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'b_4738 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16
  = du_'8707'b_4738 v2 v3 v4 v5 v9 v12
du_'8707'b_4738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'b_4738 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8741'_'8746''8314'_'8741'_2756 (coe v0) (coe v4) (coe v3)
         (coe du_m'8321''8242'_4730 (coe v1) (coe v5))
         (coe du_m'8322''8242'_4732 (coe v2) (coe v5))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'incl'45'set_2840 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_unions_224
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_586
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                              (coe du_m'8321''8242'_4730 (coe v1) (coe v5)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                 (coe du_m'8322''8242'_4732 (coe v2) (coe v5))))))))
               (coe v3))))
      (coe
         du_k'215''8741''8746''8314''8741''8712''8746''8314'''_2874 (coe v0)
         (coe v4) (coe v3)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_214
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased erased
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_214
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased erased
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.b
d_b_4740 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_b_4740 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12 ~v13 ~v14
         ~v15 ~v16
  = du_b_4740 v2 v3 v4 v5 v9 v12
du_b_4740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny
du_b_4740 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'8707'b_4738 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈′
d_kb'8712''8242'_4742 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712''8242'_4742 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11
                      v12 ~v13 ~v14 ~v15 ~v16
  = du_kb'8712''8242'_4742 v2 v3 v4 v5 v9 v12
du_kb'8712''8242'_4742 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712''8242'_4742 v0 v1 v2 v3 v4 v5
  = coe
      du_filter'7504''45''8746''8314''45'distr'45''8839'_4512 (coe v0)
      (coe v4) (coe v5) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8707'b_4738 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈
d_kb'8712'_4744 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712'_4744 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
                ~v13 ~v14 ~v15 ~v16
  = du_kb'8712'_4744 v2 v3 v4 v5 v9 v12
du_kb'8712'_4744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712'_4744 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v4 v0 v1 v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
               (coe
                  (\ v6 ->
                     coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  du_b_4740 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
         (coe
            du_kb'8712''8242'_4742 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-∪⁺-distr
d_filter'7504''45''8746''8314''45'distr_4814 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45''8746''8314''45'distr_4814 ~v0 ~v1 v2 ~v3 v4 ~v5
                                             ~v6 v7 v8 v9
  = du_filter'7504''45''8746''8314''45'distr_4814 v2 v4 v7 v8 v9
du_filter'7504''45''8746''8314''45'distr_4814 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45''8746''8314''45'distr_4814 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v5 ->
            coe
              du_filter'7504''45''8746''8314''45'distr'45''8838'_4594 (coe v0)
              (coe v1) (coe v2) (coe v3) (coe v4)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
      (coe
         (\ v5 v6 ->
            coe
              du_filter'7504''45''8746''8314''45'distr'45''8839'_4512 (coe v0)
              (coe v1) (coe v2) (coe v3) (coe v4)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-singleton-true
d_filter'7504''45'singleton'45'true_4820 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'singleton'45'true_4820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 v7 v8 v9 v10
  = du_filter'7504''45'singleton'45'true_4820 v7 v8 v9 v10
du_filter'7504''45'singleton'45'true_4820 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'singleton'45'true_4820 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                       (coe
                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                          (coe
                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                       (coe
                          (\ v6 ->
                             coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                    (coe v4))
                 v5)))
      (coe
         (\ v4 v5 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1868
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                       (coe
                          MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                    (coe
                       (\ v6 ->
                          coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                 (coe v4))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-restrict
d_filter'7504''45'restrict_4838 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'restrict_4838 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_filter'7504''45'restrict_4838 v2 v7 v8 v9
du_filter'7504''45'restrict_4838 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'restrict_4838 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 ->
            case coe v4 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                -> coe
                     (\ v7 ->
                        let v8
                              = coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                 erased v0)
                                              (coe v2) (coe v3)))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                           (coe
                                              (\ v8 ->
                                                 coe
                                                   v1
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v8))))))
                                     v4)
                                  v7 in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                               -> let v11
                                        = coe
                                            du_res'7580''45'dom'8713''8315'_3130 (coe v0) (coe v2)
                                            (coe v3) (coe v5) (coe v6) (coe v10) in
                                  coe
                                    (case coe v11 of
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                         -> coe
                                              du_res'7580''45'dom'8713''8314'_3144 (coe v0)
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                 (\ v14 ->
                                                    coe
                                                      v1
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v14)))
                                                 v2)
                                              (coe v3) (coe v5) (coe v6)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Function.Bundles.d_to_1868
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                          (coe
                                                             (\ v14 ->
                                                                coe
                                                                  v1
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v14)))))
                                                       (coe v4))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v9) (coe v12)))
                                                 (coe v13))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v4 ->
            case coe v4 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                -> coe
                     (\ v7 ->
                        let v8
                              = coe
                                  du_res'7580''45'dom'8713''8315'_3130 (coe v0)
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                     (\ v8 ->
                                        coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                     v2)
                                  (coe v3) (coe v5) (coe v6) (coe v7) in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                               -> coe
                                    MAlonzo.Code.Function.Bundles.d_to_1868
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.d_toSet_526
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v0)
                                             (coe v2) (coe v3)))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v11 ->
                                                coe
                                                  v1
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v11)))))
                                       (coe v4))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Function.Bundles.d_from_1870
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           v1
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))
                                                (coe v4))
                                             v9))
                                       (coe
                                          du_res'7580''45'dom'8713''8314'_3144 (coe v0) (coe v2)
                                          (coe v3) (coe v5) (coe v6)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                (coe
                                                   MAlonzo.Code.Function.Bundles.d_from_1870
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v2))
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                         (coe
                                                            (\ v11 ->
                                                               coe
                                                                 v1
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v11)))))
                                                      (coe v4))
                                                   v9))
                                             (coe v10))))
                             _ -> MAlonzo.RTE.mazUnreachableError))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-filter-res-
d_'8712''45'filter'45'res'45'_4924 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'45'res'45'_4924 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8
                                   v9 v10 v11
  = du_'8712''45'filter'45'res'45'_4924 v2 v7 v8 v9 v10 v11
du_'8712''45'filter'45'res'45'_4924 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'filter'45'res'45'_4924 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Function.Bundles.d_from_1870
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4))
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                  (coe
                     (\ v6 ->
                        coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
               (coe v3))
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_862
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased v0)
               (coe
                  MAlonzo.Code.Axiom.Set.du_filter_448
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                     (coe
                        (\ v6 ->
                           coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4)))
               (coe
                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                  (coe
                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                  v2)
               v3 v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1850
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased v0)
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
            (\ v6 ->
               coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
            v4)
         (coe v2) (coe v3) (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.isPartialEquivalence
d_isPartialEquivalence_4934 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_4934 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_isPartialEquivalence_4934
du_isPartialEquivalence_4934 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_4934
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_284)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.refl
d_refl_4936 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refl_4936 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 = du_refl_4936
du_refl_4936 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refl_4936
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 -> v1))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.reflexive
d_reflexive_4938 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reflexive_4938 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_reflexive_4938
du_reflexive_4938 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reflexive_4938 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_284)
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.sym
d_sym_4940 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sym_4940 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_4940 v10
du_sym_4940 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sym_4940 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.trans
d_trans_4942 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_4942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 v12
  = du_trans_4942 v11 v12
du_trans_4942 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_4942 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v1 v2
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v0 v2
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v2 v3)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.restrict-singleton-filterᵐ-false
d_restrict'45'singleton'45'filter'7504''45'false_4988 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_restrict'45'singleton'45'filter'7504''45'false_4988 ~v0 ~v1 v2
                                                      ~v3 ~v4 ~v5 ~v6 v7 v8 v9 ~v10
  = du_restrict'45'singleton'45'filter'7504''45'false_4988
      v2 v7 v8 v9
du_restrict'45'singleton'45'filter'7504''45'false_4988 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_restrict'45'singleton'45'filter'7504''45'false_4988 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
              (\ v4 v5 v6 ->
                 coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                    (\ v4 ->
                       coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                    v3))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased v0)
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                       (\ v4 ->
                          coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                       v3)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                       (MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased v2)))
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                    (coe
                       (\ v4 v5 v6 v7 v8 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               (\ v9 v10 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                            (coe
                               (\ v9 v10 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                       (\ v4 ->
                          coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                       v3))
                 (coe
                    MAlonzo.Code.Axiom.Set.du__'8746'__708
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                             (\ v4 ->
                                coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased v2)))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                             (\ v4 ->
                                coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased v2))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased v0)
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                          (\ v4 ->
                             coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                          v3)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          erased v2)))
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                       (coe
                          (\ v4 v5 v6 v7 v8 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  (\ v9 v10 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                               (coe
                                  (\ v9 v10 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du__'8746'__708
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du__'8746'__708
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8709'_470
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2))))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                             (\ v4 ->
                                coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased v2)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                          (coe
                             (\ v4 v5 v6 v7 v8 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     (\ v9 v10 ->
                                        coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                                  (coe
                                     (\ v9 v10 ->
                                        coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9
                                             v10))))))
                       (coe
                          MAlonzo.Code.Axiom.Set.du__'8746'__708
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8709'_470
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased v0)
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                   (\ v4 ->
                                      coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                   v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased v2))))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe (\ v5 v6 -> v6)) (coe (\ v5 v6 -> v6)))))
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased v0)
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                   (\ v4 ->
                                      coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                   v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased v2))))
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_1040
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased v0)
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                   (\ v4 ->
                                      coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                   v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased v2)))))
                    (coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_980
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8709'_470
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          du_'172'P'8594'res'45''8709'_5000 (coe v0) (coe v1) (coe v2)
                          (coe v3))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
                          (coe (\ v4 v5 -> v5)))))
                 (let v4
                        = coe
                            MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_908
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1516
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                               erased v0)
                            (let v4
                                   = MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                             coe
                               (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v4 erased v2))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                  (\ v4 ->
                                     coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                  v3))
                            (coe
                               MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_906
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe v2) (coe v0)) in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
                       _ -> MAlonzo.RTE.mazUnreachableError))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.¬P→res-∅
d_'172'P'8594'res'45''8709'_5000 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'172'P'8594'res'45''8709'_5000 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8
                                 v9 ~v10
  = du_'172'P'8594'res'45''8709'_5000 v2 v7 v8 v9
du_'172'P'8594'res'45''8709'_5000 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'172'P'8594'res'45''8709'_5000 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1850
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased v0)
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                         (\ v6 ->
                            coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                         v3)
                      (coe v2) (coe v4) (coe v5) in
            coe
              (seq (coe v6) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))))
      (coe (\ v4 v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lem-add-included
d_lem'45'add'45'included_5018 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'add'45'included_5018 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
                              v10 v11
  = du_lem'45'add'45'included_5018 v2 v4 v7 v8 v9 v10 v11
du_lem'45'add'45'included_5018 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'add'45'included_5018 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 du_'8746''8314''45'cong'45'l_3658 (coe v0) (coe v1)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Axiom.Set.d_specification_214
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          erased erased
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                             (coe
                                (\ v9 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                          (\ v9 ->
                             coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                          v4)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Axiom.Set.d_specification_214
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          erased erased
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                             (coe
                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                (coe
                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                             (coe
                                (\ v9 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                    (coe
                       (\ v9 v10 v11 v12 v13 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
                            v9 v10 v11
                            (coe
                               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                               (coe
                                  MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                     (coe
                                        (\ v14 ->
                                           coe
                                             v2
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_listing_244
                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                              (coe v5)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                     (coe v10)))
                               (\ v14 v15 -> v14) v12 v13)
                            (coe
                               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                               (\ v14 v15 -> v15)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                     (coe
                                        (\ v14 ->
                                           coe
                                             v2
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_listing_244
                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                              (coe v5)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                     (coe v11)))
                               v12 v13))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Axiom.Set.d_listing_244
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          erased
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))))
                    erased)
                 (coe
                    du_filter'7504''45'singleton'45'true_4820 (coe v2) (coe v3)
                    (coe v5) (coe v6)))
              v7
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    du_filter'7504''45''8746''8314''45'distr_4814 (coe v0) (coe v1)
                    (coe v2) (coe v4)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_listing_244
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased
                             (coe
                                MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))))
                 v7 v8)))
      (coe
         (\ v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 du_filter'7504''45''8746''8314''45'distr_4814 (coe v0) (coe v1)
                 (coe v2) (coe v4)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Axiom.Set.d_listing_244
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          erased
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                          (coe
                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))))
              v7
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    du_'8746''8314''45'cong'45'l_3658 (coe v0) (coe v1)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_214
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4))
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                (coe
                                   (\ v9 ->
                                      coe
                                        v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                             (\ v9 ->
                                coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                             v4)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_214
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                (coe
                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                   (coe
                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                      (coe v5))))
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                (coe
                                   (\ v9 ->
                                      coe
                                        v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                       (coe
                          (\ v9 v10 v11 v12 v13 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                  (coe
                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
                               v9 v10 v11
                               (coe
                                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                        (coe
                                           (\ v14 ->
                                              coe
                                                v2
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v14)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_listing_244
                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           erased
                                           (coe
                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v3) (coe v5)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                        (coe v10)))
                                  (\ v14 v15 -> v14) v12 v13)
                               (coe
                                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                  (\ v14 v15 -> v15)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                        (coe
                                           (\ v14 ->
                                              coe
                                                v2
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v14)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_listing_244
                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           erased
                                           (coe
                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v3) (coe v5)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                        (coe v11)))
                                  v12 v13))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_listing_244
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased
                             (coe
                                MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))))
                       erased)
                    (coe
                       du_filter'7504''45'singleton'45'true_4820 (coe v2) (coe v3)
                       (coe v5) (coe v6)))
                 v7 v8)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.≡-sp-∘
d_'8801''45'sp'45''8728'_5022 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'sp'45''8728'_5022 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lem-add-excluded
d_lem'45'add'45'excluded_5026 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'add'45'excluded_5026 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
                              v10 ~v11
  = du_lem'45'add'45'excluded_5026 v2 v4 v7 v8 v9 v10
du_lem'45'add'45'excluded_5026 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'add'45'excluded_5026 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
            (\ v6 ->
               coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               v1 v0 v5
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
            (\ v6 ->
               coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
            v5))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v6 v7 v8 v9 v10 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v11 v12 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v11
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v9 v11 v12)))
                    (coe
                       (\ v11 v12 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v9 v11
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v11 v12))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
               (\ v6 ->
                  coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0 v5
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               v1 v0
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                  (\ v6 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v5)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                  (\ v6 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
               (\ v6 ->
                  coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
               v5))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v6 v7 v8 v9 v10 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          (\ v11 v12 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v11
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v9 v11 v12)))
                       (coe
                          (\ v11 v12 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v9 v11
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v11 v12))))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                     (\ v6 ->
                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                     v5)
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                     (\ v6 ->
                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                     (\ v6 ->
                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                     v5)
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                  (\ v6 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v5))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     (\ v6 v7 v8 v9 v10 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             (\ v11 v12 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v11
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v9 v11 v12)))
                          (coe
                             (\ v11 v12 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v9 v11
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v11 v12))))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     v1 v0
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                        (\ v6 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                        v5)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                     (\ v6 ->
                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                     v5))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                     (\ v6 ->
                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                     v5))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        (\ v6 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v7 v8 -> v8))
                             (coe (\ v7 v8 -> v8)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                        (\ v6 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                        v5)))
               (coe
                  du_'8746''8314''45'id'45'r_3834 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_filter_648
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                           (coe
                              (\ v6 ->
                                 coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                     erased)))
            (coe
               du_'8746''8314''45'cong'45'l_3658 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Data.List.Base.du_filter_648
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                        (coe
                           (\ v6 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                  erased)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (let v6
                         = \ v6 ->
                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                               (coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))) in
                   coe
                     (let v7
                            = coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4) in
                      coe
                        (let v8
                               = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                   (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v2 v3)) in
                         coe
                           (let v9 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
                            coe
                              (if coe v8
                                 then coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v7)
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du_filter_648 (coe v6)
                                           (coe v9))
                                 else coe
                                        MAlonzo.Code.Data.List.Base.du_filter_648 (coe v6)
                                        (coe v9))))))
                  (coe
                     (\ v6 v7 v8 v9 v10 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
                          v6 v7 v8
                          (coe
                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                             (coe
                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                   (coe
                                      (\ v11 ->
                                         coe
                                           v2
                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                         (coe v4))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v7)))
                             (\ v11 v12 -> v11) v9 v10)
                          (coe
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                             (\ v11 v12 -> v12)
                             (coe
                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                   (coe
                                      (\ v11 ->
                                         coe
                                           v2
                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                         (coe v4))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v8)))
                             v9 v10))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                  (coe
                     (\ v6 v7 v8 v9 v10 ->
                        coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du_filter'7504''45'singleton'45'false_756)))
         (coe
            du_filter'7504''45''8746''8314''45'distr_4814 (coe v0) (coe v1)
            (coe v2) (coe v5)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lem-del-excluded
d_lem'45'del'45'excluded_5038 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'del'45'excluded_5038 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                              ~v10
  = du_lem'45'del'45'excluded_5038 v2 v7 v8 v9
du_lem'45'del'45'excluded_5038 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'del'45'excluded_5038 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 du_restrict'45'singleton'45'filter'7504''45'false_4988 (coe v0)
                 (coe v1) (coe v2) (coe v3))
              v4
              (let v6
                     = coe
                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                         (coe
                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1516
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                         v2 in
               coe
                 (let v7 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4) in
                  coe
                    (let v8 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4) in
                     coe
                       (let v9
                              = coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                 erased v0)
                                              (coe v3)
                                              (coe
                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                 (coe
                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                 v2)))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                           (coe
                                              (\ v9 ->
                                                 coe
                                                   v1
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v9))))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
                                  v5 in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                               -> let v12
                                        = coe
                                            du_res'7580''45'dom'8713''8315'_3130 (coe v0) (coe v3)
                                            (coe v6) (coe v7) (coe v8) (coe v11) in
                                  coe
                                    (case coe v12 of
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                         -> coe
                                              du_res'7580''45'dom'8713''8314'_3144 (coe v0)
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                 (\ v15 ->
                                                    coe
                                                      v1
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v15)))
                                                 v3)
                                              (coe v6) (coe v7) (coe v8)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Function.Bundles.d_to_1868
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v3))
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                          (coe
                                                             (\ v15 ->
                                                                coe
                                                                  v1
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v15)))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v7) (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v10) (coe v13)))
                                                 (coe v14))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError)))))))
      (coe
         (\ v4 v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                      (coe
                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                      v2 in
            coe
              (let v7 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4) in
               coe
                 (let v8 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4) in
                  coe
                    (let v9
                           = coe
                               du_res'7580''45'dom'8713''8315'_3130 (coe v0)
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                  (\ v9 ->
                                     coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                  v3)
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                  (coe
                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                  v2)
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     du_restrict'45'singleton'45'filter'7504''45'false_4988 (coe v0)
                                     (coe v1) (coe v2) (coe v3))
                                  v4 v5) in
                     coe
                       (case coe v9 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                            -> coe
                                 MAlonzo.Code.Function.Bundles.d_to_1868
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.d_toSet_526
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v0)
                                          (coe v3) (coe v6)))
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                       (coe
                                          (\ v12 ->
                                             coe
                                               v1
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v12)))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                       (coe v8)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Function.Bundles.d_from_1870
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                (coe
                                                   (\ v12 ->
                                                      coe
                                                        v1
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v12)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                                (coe v8)))
                                          v10))
                                    (coe
                                       du_res'7580''45'dom'8713''8314'_3144 (coe v0) (coe v3)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                             (coe
                                                MAlonzo.Code.Function.Bundles.d_from_1870
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v3))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              v1
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12)))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v7) (coe v8)))
                                                v10))
                                          (coe v11))))
                          _ -> MAlonzo.RTE.mazUnreachableError))))))
