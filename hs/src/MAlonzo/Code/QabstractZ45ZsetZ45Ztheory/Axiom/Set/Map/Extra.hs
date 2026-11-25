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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
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
-- abstract-set-theory.Axiom.Set.Map.Extra._._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_118 a0 a1 a2 = ()
-- abstract-set-theory.Axiom.Set.Map.Extra._._.IsCommutativeSemigroup.comm
d_comm_948 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_948 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_958 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_958 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.◇comm
d_'9671'comm_2950 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9671'comm_2950 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.lookupᵐ∈
d_lookup'7504''8712'_2954 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504''8712'_2954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_lookup'7504''8712'_2954 v6 v7 v8
du_lookup'7504''8712'_2954 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504''8712'_2954 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.d_toSet_528
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) v1)
            (coe v0))
         v2)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∈-lookupᵐ∈
d_'8712''45'lookup'7504''8712'_2960 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'lookup'7504''8712'_2960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                    v8
  = du_'8712''45'lookup'7504''8712'_2960 v6 v7 v8
du_'8712''45'lookup'7504''8712'_2960 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'lookup'7504''8712'_2960 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.d_toSet_528
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) v1)
            (coe v0))
         v2)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.lookupᵐ∈-irrelevance
d_lookup'7504''8712''45'irrelevance_2972 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'7504''8712''45'irrelevance_2972 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∈-lookupᵐ≡
d_'8712''45'lookup'7504''8801'_2984 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'lookup'7504''8801'_2984 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.lookupᵐ∈≡
d_lookup'7504''8712''8801'_2996 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'7504''8712''8801'_2996 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∈-incl-set
d_'8712''45'incl'45'set_3010 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'incl'45'set_3010 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 ~v8
  = du_'8712''45'incl'45'set_3010 v2 v6 v7
du_'8712''45'incl'45'set_3010 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'incl'45'set_3010 v0 v1 v2
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
      (coe du_lem_3024 (coe v0) (coe v1) (coe v2))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lem
d_lem_3024 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem_3024 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 ~v8 = du_lem_3024 v2 v6 v7
du_lem_3024 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem_3024 v0 v1 v2
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
d_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 ~v0 ~v1
                                                          v2 ~v3 v4 ~v5 v6 v7 v8 ~v9
  = du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044
      v2 v4 v6 v7 v8
du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 v0 v1 v2
                                                           v3 v4
  = coe du_goal_3062 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.kk∈
d_kk'8712'_3060 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kk'8712'_3060 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8 ~v9
  = du_kk'8712'_3060 v2 v6 v7 v8
du_kk'8712'_3060 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kk'8712'_3060 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         du_'8712''45'incl'45'set_3010 (coe v0)
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
                        MAlonzo.Code.Class.IsSet.du_dom_588
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_588
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3)))))))
         (coe v1))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.goal
d_goal_3062 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_goal_3062 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 ~v9
  = du_goal_3062 v2 v4 v6 v7 v8
du_goal_3062 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_goal_3062 v0 v1 v2 v3 v4
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
                     MAlonzo.Code.Class.IsSet.du_dom_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v4)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.Dec.du_F'91'_'44'_'93'_790
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe v1) (coe v0) (coe v3) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.Dec.du_F'91'_'44'_'93'_790
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe v1) (coe v0) (coe v3) (coe v4)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du_'8712''45'incl'45'set_3010 (coe v0)
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
                                    MAlonzo.Code.Class.IsSet.du_dom_588
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3))
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_588
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                       (coe v4)))))))
                     (coe v2))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'8712''45'incl'45'set_3010 (coe v0)
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
                                 MAlonzo.Code.Class.IsSet.du_dom_588
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_588
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                    (coe v4)))))))
                  (coe v2))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
            (coe du_kk'8712'_3060 (coe v0) (coe v2) (coe v3) (coe v4))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.fold-irrelevance
d_fold'45'irrelevance_3072 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fold'45'irrelevance_3072 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-unique-val
d_'8746''8314''45'unique'45'val_3172 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'unique'45'val_3172 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∥∪⁺∥≡lu◇lu
d_'8741''8746''8314''8741''8801'lu'9671'lu_3196 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8741''8746''8314''8741''8801'lu'9671'lu_3196 ~v0 ~v1 v2 ~v3 ~v4
                                                ~v5 v6 v7 v8 v9 ~v10 ~v11
  = du_'8741''8746''8314''8741''8801'lu'9671'lu_3196 v2 v6 v7 v8 v9
du_'8741''8746''8314''8741''8801'lu'9671'lu_3196 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8741''8746''8314''8741''8801'lu'9671'lu_3196 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v1
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_588
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2)) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased v0 v1
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_588
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3)) in
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
d_goal_3262 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_goal_3262 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∥∪⁺∥≡lu◇lu'
d_'8741''8746''8314''8741''8801'lu'9671'lu''_3278 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8741''8746''8314''8741''8801'lu'9671'lu''_3278 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.resᶜ-dom∉⁻
d_res'7580''45'dom'8713''8315'_3300 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7580''45'dom'8713''8315'_3300 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8
                                    v9 v10
  = du_res'7580''45'dom'8713''8315'_3300 v2 v6 v7 v8 v9 v10
du_res'7580''45'dom'8713''8315'_3300 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7580''45'dom'8713''8315'_3300 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_868
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased v0)
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1)) v2
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
         v5)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_888
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased v0)
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1)) (coe v2)
            (coe v3)
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_520
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_776
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased v0)
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1)) (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
               (coe v5))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.resᶜ-dom∉⁺
d_res'7580''45'dom'8713''8314'_3314 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'7580''45'dom'8713''8314'_3314 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8
                                    v9 v10
  = du_res'7580''45'dom'8713''8314'_3314 v2 v6 v7 v8 v9 v10
du_res'7580''45'dom'8713''8314'_3314 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'7580''45'dom'8713''8314'_3314 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_528
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) v1)
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
d_deconstruct'45''8746''8314'_3330 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deconstruct'45''8746''8314'_3330 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.fold-◇-union-comm
d_fold'45''9671''45'union'45'comm_3508 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fold'45''9671''45'union'45'comm_3508 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-comm-⊆
d_'8746''8314''45'comm'45''8838'_3606 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'comm'45''8838'_3606 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7
                                      v8 v9 v10
  = du_'8746''8314''45'comm'45''8838'_3606 v2 v4 v6 v7 v8 v9 v10
du_'8746''8314''45'comm'45''8838'_3606 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746''8314''45'comm'45''8838'_3606 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v4
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_588
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2)) in
    coe
      (let v8
             = coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased v0 v4
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_588
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3)) in
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
                                                     MAlonzo.Code.Class.IsSet.du_dom_588
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_588
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
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
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68))
                                                                                               (coe
                                                                                                  (\ v21 ->
                                                                                                     coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68))
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
                                         du_'8712''45'incl'45'set_3010 (coe v0)
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
                                                           MAlonzo.Code.Class.IsSet.du_dom_588
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_588
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                         (coe v4))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         du_'8712''45'incl'45'set_3010 (coe v0)
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
                                                           MAlonzo.Code.Class.IsSet.du_dom_588
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_588
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
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
                                                                      MAlonzo.Code.Class.IsSet.du_dom_588
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                      (coe
                                                                         MAlonzo.Code.Class.IsSet.du_dom_588
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
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
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                                                        MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68))
                                                                                                                (coe
                                                                                                                   (\ v23 ->
                                                                                                                      coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68))
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
                                                          du_'8712''45'incl'45'set_3010 (coe v0)
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
                                                                            MAlonzo.Code.Class.IsSet.du_dom_588
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                            (coe v3))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_dom_588
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
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
                                                          du_'8712''45'incl'45'set_3010 (coe v0)
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
                                                                            MAlonzo.Code.Class.IsSet.du_dom_588
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                            (coe v3))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_dom_588
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
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
                                                                          (let v13
                                                                                 = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                   (coe v13))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                   (coe v2))))
                                                                          (coe
                                                                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                             (let v13
                                                                                    = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                              coe
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe v13))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                      (coe
                                                                                         v3))))))))
                                                                 v4)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746''8314''45'dom'8746'_762
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                 (coe v1) (coe v0) (coe v2) (coe v3)
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
                                                                          (let v14
                                                                                 = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                   (coe v14))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                   (coe v2))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (let v14
                                                                                    = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                              coe
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe v14))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                      (coe v3))))
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
                                                                                      (let v14
                                                                                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                               (coe
                                                                                                  v14))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                               (coe
                                                                                                  v2))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                         (let v14
                                                                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                  (coe
                                                                                                     v14))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                  (coe
                                                                                                     v3))))))))
                                                                             v4)
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746''8314''45'dom'8746'_762
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                             (coe v1) (coe v0)
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
                                                                                      (let v14
                                                                                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                               (coe
                                                                                                  v14))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                               (coe
                                                                                                  v2))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                         (let v14
                                                                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                  (coe
                                                                                                     v14))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                  (coe
                                                                                                     v3))))))))
                                                                             v4)
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746''8314''45'dom'8746'_762
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                             (coe v1) (coe v0)
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
d_a'8712''8322'_3638 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''8322'_3638 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11
                     ~v12
  = du_a'8712''8322'_3638 v3 v4 v5 v6
du_a'8712''8322'_3638 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''8322'_3638 v0 v1 v2 v3
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
                  MAlonzo.Code.Class.IsSet.du_dom_588
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
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
                        MAlonzo.Code.Class.IsSet.du_dom_588
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_588
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0)))
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                  (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)))
            (coe v3)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.a∈˘
d_a'8712''728'_3640 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''728'_3640 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11
                    ~v12
  = du_a'8712''728'_3640 v3 v4 v5 v6
du_a'8712''728'_3640 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''728'_3640 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v1))
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
d_b'8801'_3642 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_b'8801'_3642 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.a∈₂
d_a'8712''8322'_3662 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''8322'_3662 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11
                     ~v12
  = du_a'8712''8322'_3662 v3 v4 v5 v7
du_a'8712''8322'_3662 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''8322'_3662 v0 v1 v2 v3
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
                  MAlonzo.Code.Class.IsSet.du_dom_588
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v1))
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
                        MAlonzo.Code.Class.IsSet.du_dom_588
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_588
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v1)))
               (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
            (coe v3)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.a∈˘
d_a'8712''728'_3664 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''728'_3664 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11
                    ~v12
  = du_a'8712''728'_3664 v3 v4 v5 v7
du_a'8712''728'_3664 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''728'_3664 v0 v1 v2 v3
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
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
         (coe v2))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.b≡
d_b'8801'_3666 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_b'8801'_3666 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-comm
d_'8746''8314''45'comm_3722 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'comm_3722 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7
  = du_'8746''8314''45'comm_3722 v2 v4 v6 v7
du_'8746''8314''45'comm_3722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'comm_3722 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 ->
            coe
              du_'8746''8314''45'comm'45''8838'_3606 (coe v0) (coe v1) (coe v2)
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe
         (\ v4 ->
            coe
              du_'8746''8314''45'comm'45''8838'_3606 (coe v0) (coe v1) (coe v3)
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-comm-val
d_'8746''8314''45'comm'45'val_3732 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'comm'45'val_3732 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.kv∈₁₂
d_kv'8712''8321''8322'_3748 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8712''8321''8322'_3748 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 ~v9 ~v10
  = du_kv'8712''8321''8322'_3748 v2 v4 v6 v7 v8
du_kv'8712''8321''8322'_3748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8712''8321''8322'_3748 v0 v1 v2 v3 v4
  = coe
      du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 (coe v0)
      (coe v1) (coe v2) (coe v3) (coe v4)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.kv∈₂₁
d_kv'8712''8322''8321'_3752 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8712''8322''8321'_3752 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 ~v9 ~v10
  = du_kv'8712''8322''8321'_3752 v2 v4 v6 v7 v8
du_kv'8712''8322''8321'_3752 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8712''8322''8321'_3752 v0 v1 v2 v3 v4
  = coe
      du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 (coe v0)
      (coe v1) (coe v2) (coe v4) (coe v3)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-cong-⊆ˡ
d_'8746''8314''45'cong'45''8838''737'_3762 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'cong'45''8838''737'_3762 ~v0 ~v1 v2 ~v3 v4 ~v5 v6
                                           v7 v8 v9 v10 v11 v12
  = du_'8746''8314''45'cong'45''8838''737'_3762
      v2 v4 v6 v7 v8 v9 v10 v11 v12
du_'8746''8314''45'cong'45''8838''737'_3762 ::
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
du_'8746''8314''45'cong'45''8838''737'_3762 v0 v1 v2 v3 v4 v5 v6 v7
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
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_414
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
                             MAlonzo.Code.Axiom.Set.Map.Dec.du_d_496
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
                                                  MAlonzo.Code.Class.IsSet.du_dom_588
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_588
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                     (coe v4))))))))
                                (coe
                                   MAlonzo.Code.Axiom.Set.Map.Dec.du_F'91'_'44'_'93'_790
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe v1) (coe v0) (coe v2) (coe v4))
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
                                                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                                            MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68))
                                                                                    (coe
                                                                                       (\ v21 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68))
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
                                         du_'8712''45'incl'45'set_3010 (coe v0)
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
                                                        MAlonzo.Code.Class.IsSet.du_dom_588
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_588
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                           (coe v4)))))))
                                         (coe v12))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         du_'8712''45'incl'45'set_3010 (coe v0)
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
                                                        MAlonzo.Code.Class.IsSet.du_dom_588
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_588
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                           (coe v4)))))))
                                         (coe v12))))))
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> MAlonzo.RTE.mazUnreachableError))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.a∈-∪dom₁
d_a'8712''45''8746'dom'8321'_3812 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''45''8746'dom'8321'_3812 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9
                                  ~v10 ~v11 ~v12 ~v13 ~v14
  = du_a'8712''45''8746'dom'8321'_3812 v2 v4 v5 v6 v7 v8 v9
du_a'8712''45''8746'dom'8321'_3812 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''45''8746'dom'8321'_3812 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_610
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe v1) (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
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
                                                                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe v7))
                                                                        (coe v2) (coe v4) (coe v12))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2036
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
                                                                     MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68))
                                                             (coe
                                                                (\ v14 ->
                                                                   coe
                                                                     MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68))
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
d_dom'8321''8838'dom'8322'_3814 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
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
d_dom'8321''8838'dom'8322'_3814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
                                ~v9 ~v10 ~v11 v12 v13 ~v14 v15
  = du_dom'8321''8838'dom'8322'_3814 v6 v12 v13 v15
du_dom'8321''8838'dom'8322'_3814 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'8321''8838'dom'8322'_3814 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8838'_556
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v2)
      (coe v3)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.k∈'
d_k'8712'''_3816 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'''_3816 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 ~v10 ~v11 v12 v13
                 ~v14
  = du_k'8712'''_3816 v2 v4 v5 v6 v7 v8 v9 v12 v13
du_k'8712'''_3816 ::
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
du_k'8712'''_3816 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_986
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v7))
      (\ v9 v10 -> v10)
      (coe du_dom'8321''8838'dom'8322'_3814 (coe v3) (coe v7) (coe v8))
      v4
      (coe
         du_a'8712''45''8746'dom'8321'_3812 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4) (coe v5) (coe v6))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-cong-l
d_'8746''8314''45'cong'45'l_3828 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'cong'45'l_3828 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
  = du_'8746''8314''45'cong'45'l_3828 v2 v4 v6 v7 v8 v9
du_'8746''8314''45'cong'45'l_3828 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'cong'45'l_3828 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 ->
                   coe
                     du_'8746''8314''45'cong'45''8838''737'_3762 (coe v0) (coe v1)
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
                     du_'8746''8314''45'cong'45''8838''737'_3762 (coe v0) (coe v1)
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
d_'8746''8314''45'cong'45'r_3840 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'cong'45'r_3840 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
  = du_'8746''8314''45'cong'45'r_3840 v2 v4 v6 v7 v8 v9
du_'8746''8314''45'cong'45'r_3840 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'cong'45'r_3840 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v6 v7 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 du_'8746''8314''45'comm_3722 (coe v0) (coe v1) (coe v2)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
              v6
              (coe
                 du_'8746''8314''45'cong'45''8838''737'_3762 (coe v0) (coe v1)
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
                       du_'8746''8314''45'comm_3722 (coe v0) (coe v1)
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
                        du_'8746''8314''45'comm_3722 (coe v0) (coe v1) (coe v2)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
                     v8
                     (coe
                        du_'8746''8314''45'cong'45''8838''737'_3762 (coe v0) (coe v1)
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
                              du_'8746''8314''45'comm_3722 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                              (coe v2))
                           v8 v9)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-dom-id
d_'8746''8314''45'dom'45'id_3856 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'dom'45'id_3856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8746''8314''45'dom'45'id_3856 v6
du_'8746''8314''45'dom'45'id_3856 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'dom'45'id_3856 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v3)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_608
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
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_588
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
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
               MAlonzo.Code.Class.IsSet.du_dom_588
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_588
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_608
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
                  MAlonzo.Code.Class.IsSet.du_dom_588
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
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
                  MAlonzo.Code.Class.IsSet.du_dom_588
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_588
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_608
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
                  MAlonzo.Code.Class.IsSet.du_dom_588
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_588
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_608
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
                     MAlonzo.Code.Class.IsSet.du_dom_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_608
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_992
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_588
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_588
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom_358
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
               (coe MAlonzo.Code.Axiom.Set.Rel.du_dom'8709'_534)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_1056
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_588
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-id-dom∈
d_'8746''8314''45'id'45'dom'8712'_3918 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8746''8314''45'id'45'dom'8712'_3918 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
                                       v7
  = du_'8746''8314''45'id'45'dom'8712'_3918 v6 v7
du_'8746''8314''45'id'45'dom'8712'_3918 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8746''8314''45'id'45'dom'8712'_3918 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe du_'8746''8314''45'dom'45'id_3856 (coe v1)) v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe du_'8746''8314''45'dom'45'id_3856 (coe v1)) v0)
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-id-lemma
d_'8746''8314''45'id'45'lemma_3928 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'id'45'lemma_3928 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.∪⁺-id-r
d_'8746''8314''45'id'45'r_4004 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'id'45'r_4004 ~v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_'8746''8314''45'id'45'r_4004 v2 v4 v6
du_'8746''8314''45'id'45'r_4004 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'id'45'r_4004 v0 v1 v2
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
                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_414
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe v0) (coe v2)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_608
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
                                              MAlonzo.Code.Axiom.Set.Map.Dec.du_d_496
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_608
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
                                              du_'8712''45'lookup'7504''8712'_2960 (coe v4) (coe v2)
                                              (coe
                                                 MAlonzo.Code.Function.Bundles.d_from_1870
                                                 (coe
                                                    du_'8746''8314''45'id'45'dom'8712'_3918 (coe v4)
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
                          du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 (coe v0)
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
d_k'8712'_4058 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'_4058 ~v0 ~v1 v2 v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_k'8712'_4058 v2 v3 v6
du_k'8712'_4058 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'_4058 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe du_'8746''8314''45'id'45'dom'8712'_3918 (coe v1) (coe v0)) v2
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lu≡
d_lu'8801'_4060 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lu'8801'_4060 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.v≡
d_v'8801'_4062 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_v'8801'_4062 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._.restrict-cong
d_restrict'45'cong_4072 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_restrict'45'cong_4072 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_restrict'45'cong_4072 v2 v6 v7 v8 v9
du_restrict'45'cong_4072 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_restrict'45'cong_4072 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> coe
                (\ v7 v8 ->
                   let v9
                         = coe
                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_868
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1)) v3 v7 v8 in
                   coe
                     (let v10
                            = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_888
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased v0)
                                   (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1)) (coe v3)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_520
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_776
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased v0)
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1))
                                         (coe v3))
                                      (coe v7) (coe v8))) in
                      coe
                        (coe
                           du_res'7580''45'dom'8713''8314'_3314 (coe v0) (coe v2) (coe v3)
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
                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_868
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2)) v3 v7 v8 in
                   coe
                     (let v10
                            = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_888
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased v0)
                                   (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2)) (coe v3)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_520
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_776
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased v0)
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2))
                                         (coe v3))
                                      (coe v7) (coe v8))) in
                      coe
                        (coe
                           du_res'7580''45'dom'8713''8314'_3314 (coe v0) (coe v1) (coe v3)
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6 v7 v9)
                              (coe v10)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.P′
d_P'8242'_4130 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_P'8242'_4130 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.P→P′
d_P'8594'P'8242'_4136 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_P'8594'P'8242'_4136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10
  = du_P'8594'P'8242'_4136 v9
du_P'8594'P'8242'_4136 :: AgdaAny -> AgdaAny
du_P'8594'P'8242'_4136 v0 = coe v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-dom-filter-P
d_'8712''45'dom'45'filter'45'P_4144 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8712''45'dom'45'filter'45'P_4144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8 v9 v10
  = du_'8712''45'dom'45'filter'45'P_4144 v7 v8 v9 v10
du_'8712''45'dom'45'filter'45'P_4144 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8712''45'dom'45'filter'45'P_4144 v0 v1 v2 v3
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
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                        MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.IsSet.d_toSet_528
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                              (\ v4 ->
                                 coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                              v2))
                        (coe v1))
                     v3))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Function.Bundles.d_from_1870
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Class.IsSet.d_toSet_528
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                        (\ v4 ->
                           coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                        v2))
                  (coe v1))
               v3)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-dom-filter-dom
d_'8712''45'dom'45'filter'45'dom_4150 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom'45'filter'45'dom_4150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7 v8 v9 v10
  = du_'8712''45'dom'45'filter'45'dom_4150 v7 v8 v9 v10
du_'8712''45'dom'45'filter'45'dom_4150 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'dom'45'filter'45'dom_4150 v0 v1 v2 v3
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
                       MAlonzo.Code.Class.IsSet.d_toSet_528
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
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
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
d_dom'45'filter'45''8838'_4170 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'filter'45''8838'_4170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                               v10
  = du_dom'45'filter'45''8838'_4170 v7 v8 v9 v10
du_dom'45'filter'45''8838'_4170 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'45'filter'45''8838'_4170 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1)) (coe v2))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Function.Bundles.d_from_1870
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
               (coe
                  (\ v4 ->
                     coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Function.Bundles.d_from_1870
                     (coe
                        MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                              (\ v4 ->
                                 coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                              v1))
                        (coe v2))
                     v3)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Function.Bundles.d_from_1870
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                           (\ v4 ->
                              coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                           v1))
                     (coe v2))
                  v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-dom-filterˡ
d_'8712''45'dom'45'filter'737'_4178 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'dom'45'filter'737'_4178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8 v9 v10
  = du_'8712''45'dom'45'filter'737'_4178 v7 v8 v9 v10
du_'8712''45'dom'45'filter'737'_4178 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'dom'45'filter'737'_4178 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8712''45'dom'45'filter'45'P_4144 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         du_'8712''45'dom'45'filter'45'dom_4150 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-dom-filterʳ
d_'8712''45'dom'45'filter'691'_4186 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom'45'filter'691'_4186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8 v9 v10
  = du_'8712''45'dom'45'filter'691'_4186 v7 v8 v9 v10
du_'8712''45'dom'45'filter'691'_4186 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'dom'45'filter'691'_4186 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Function.Bundles.d_to_1868
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
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
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                      (coe
                         (\ v6 ->
                            coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                   (coe
                      MAlonzo.Code.Class.IsSet.d_toSet_528
                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) v2))
                (coe v1))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_528
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) v2)
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
                         MAlonzo.Code.Class.IsSet.d_toSet_528
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) v2)
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Class.IsSet.d_toSet_528
                                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) v2)
                                  (coe v1))
                               v5))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Function.Bundles.d_from_1870
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Class.IsSet.d_toSet_528
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) v2)
                               (coe v1))
                            v5)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-∈
d_filter'7504''45''8712'_4200 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'7504''45''8712'_4200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                              v10
  = du_filter'7504''45''8712'_4200 v7 v8 v9 v10
du_filter'7504''45''8712'_4200 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'7504''45''8712'_4200 v0 v1 v2 v3
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
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
               (coe
                  (\ v4 ->
                     coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.cong-filterᵐ
d_cong'45'filter'7504'_4208 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'filter'7504'_4208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                            v10
  = du_cong'45'filter'7504'_4208 v7 v8 v9 v10
du_cong'45'filter'7504'_4208 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'filter'7504'_4208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            coe
              du_filter'7504''45''8712'_4200 v0 v2
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    du_'8712''45'dom'45'filter'737'_4178 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v1)
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_520
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.IsSet.d_toSet_528
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                             (coe
                                (\ v6 ->
                                   coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                          (coe v4))
                       v5)))))
      (coe
         (\ v4 v5 ->
            coe
              du_filter'7504''45''8712'_4200 v0 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    du_'8712''45'dom'45'filter'737'_4178 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v2)
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_520
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.IsSet.d_toSet_528
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                             (coe
                                (\ v6 ->
                                   coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                          (coe v4))
                       v5)))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∪⁺-filter-P′
d_'8746''8314''45'filter'45'P'8242'_4230 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8746''8314''45'filter'45'P'8242'_4230 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6
                                         v7 v8 v9 v10 v11 v12
  = du_'8746''8314''45'filter'45'P'8242'_4230
      v2 v4 v7 v8 v9 v10 v11 v12
du_'8746''8314''45'filter'45'P'8242'_4230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8746''8314''45'filter'45'P'8242'_4230 v0 v1 v2 v3 v4 v5 v6 v7
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
                          (let v8
                                 = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                           coe
                             (coe
                                MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v5))
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                               (coe
                                                  (\ v9 ->
                                                     coe
                                                       v2
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9)))))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))
                                            v5))))))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                             (let v8
                                    = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                              coe
                                (coe
                                   MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                   (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v6))
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                  (coe
                                                     (\ v9 ->
                                                        coe
                                                          v2
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v9)))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                               (\ v9 ->
                                                  coe
                                                    v2
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v9)))
                                               v6))))))))))
                 v3)
              (coe
                 MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746''8314''45'dom'8746'_762
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
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v5))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                             (coe
                                (\ v8 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v6))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                             (coe
                                (\ v8 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          (let v9
                                 = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                           coe
                             (coe
                                MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v9))
                                (coe
                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v5))
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                               (coe
                                                  (\ v10 ->
                                                     coe
                                                       v2
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v10)))))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                            (\ v10 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v10)))
                                            v5))))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (let v9
                                    = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                              coe
                                (coe
                                   MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                   (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v9))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v6))
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                  (coe
                                                     (\ v10 ->
                                                        coe
                                                          v2
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v10)))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                               (\ v10 ->
                                                  coe
                                                    v2
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v10)))
                                               v6))))))
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
                                      (let v9
                                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                       coe
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                            (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v9))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                           (coe v5))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                           (coe
                                                              (\ v10 ->
                                                                 coe
                                                                   v2
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v10)))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                                        (\ v10 ->
                                                           coe
                                                             v2
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v10)))
                                                        v5))))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                         (let v9
                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                               (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v9))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                              (coe v6))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                              (coe
                                                                 (\ v10 ->
                                                                    coe
                                                                      v2
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v10)))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                                           (\ v10 ->
                                                              coe
                                                                v2
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v10)))
                                                           v6))))))))))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746''8314''45'dom'8746'_762
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v6))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                      (let v9
                                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                       coe
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                            (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v9))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                           (coe v5))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                           (coe
                                                              (\ v10 ->
                                                                 coe
                                                                   v2
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v10)))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                                        (\ v10 ->
                                                           coe
                                                             v2
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v10)))
                                                        v5))))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                         (let v9
                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                               (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v9))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                              (coe v6))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                              (coe
                                                                 (\ v10 ->
                                                                    coe
                                                                      v2
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v10)))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                                           (\ v10 ->
                                                              coe
                                                                v2
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v10)))
                                                           v6))))))))))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746''8314''45'dom'8746'_762
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v6))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                du_'8712''45'dom'45'filter'737'_4178 (coe v2) (coe v3) (coe v5)
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
                                du_'8712''45'dom'45'filter'737'_4178 (coe v2) (coe v3) (coe v5)
                                (coe v14))
                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                        -> coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe
                                du_'8712''45'dom'45'filter'737'_4178 (coe v2) (coe v3) (coe v6)
                                (coe v14))
                      _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lookup≡lookup-filter
d_lookup'8801'lookup'45'filter_4276 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8801'lookup'45'filter_4276 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-∪⁺-l'
d_'8712''45''8746''8314''45'l''_4292 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
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
d_'8712''45''8746''8314''45'l''_4292 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-∪⁺-l
d_'8712''45''8746''8314''45'l_4394 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
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
d_'8712''45''8746''8314''45'l_4394 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∪⁺-filter
d_'8746''8314''45'filter_4410 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
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
d_'8746''8314''45'filter_4410 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
                              v10 v11 v12 v13 ~v14
  = du_'8746''8314''45'filter_4410 v2 v4 v7 v8 v9 v10 v11 v12 v13
du_'8746''8314''45'filter_4410 ::
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
du_'8746''8314''45'filter_4410 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                  (\ v9 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                  v3))
            (coe v5))
         (coe
            du_a'8712'f'8321'_4430 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5) (coe v6) (coe v7) (coe v8)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.a∈f₁
d_a'8712'f'8321'_4430 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
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
d_a'8712'f'8321'_4430 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11
                      v12 v13 ~v14
  = du_a'8712'f'8321'_4430 v2 v4 v7 v8 v9 v10 v11 v12 v13
du_a'8712'f'8321'_4430 ::
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
du_a'8712'f'8321'_4430 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      du_'8712''45'dom'45'filter'691'_4186 (coe v2) (coe v5) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'8746''8314''45'filter'45'P'8242'_4230 (coe v0) (coe v1)
            (coe v2) (coe v5) (coe v6) (coe v3) (coe v4) (coe v7))
         (coe v8))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.a∉f₂
d_a'8713'f'8322'_4432 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
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
d_a'8713'f'8322'_4432 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∪⁺-filter-lookup≡
d_'8746''8314''45'filter'45'lookup'8801'_4446 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
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
d_'8746''8314''45'filter'45'lookup'8801'_4446 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.∈-∪⁺-filterˡ
d_'8712''45''8746''8314''45'filter'737'_4468 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
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
d_'8712''45''8746''8314''45'filter'737'_4468 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₁′
d_m'8321''8242'_4552 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4552 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16 ~v17
  = du_m'8321''8242'_4552 v4 v12
du_m'8321''8242'_4552 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4552 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₂′
d_m'8322''8242'_4554 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4554 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16 ~v17
  = du_m'8322''8242'_4554 v5 v12
du_m'8322''8242'_4554 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4554 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈m₂′
d_k'8712'm'8322''8242'_4556 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8322''8242'_4556 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9
                            ~v10 ~v11 v12 ~v13 ~v14 ~v15 ~v16 v17
  = du_k'8712'm'8322''8242'_4556 v3 v4 v5 v7 v12 v17
du_k'8712'm'8322''8242'_4556 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8322''8242'_4556 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'dom'45'filter'691'_4186 (coe v4) (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'dom'45'filter'737'_4178 (coe v4) (coe v0) (coe v1)
               (coe v5)))
         (coe v3))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.v≡m₂m₁
d_v'8801'm'8322'm'8321'_4582 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
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
d_v'8801'm'8322'm'8321'_4582 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-∪⁺-distr-⊇
d_filter'7504''45''8746''8314''45'distr'45''8839'_4682 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'7504''45''8746''8314''45'distr'45''8839'_4682 ~v0 ~v1 v2
                                                       ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11 ~v12
  = du_filter'7504''45''8746''8314''45'distr'45''8839'_4682
      v2 v4 v7 v8 v9 v10 v11
du_filter'7504''45''8746''8314''45'distr'45''8839'_4682 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'7504''45''8746''8314''45'distr'45''8839'_4682 v0 v1 v2 v3
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
                              du_yes'45'case_4722 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                              (coe v5) (coe v6) (coe v10)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v9) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈Pm₁∨k∈Pm₂
d_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4698 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4698 ~v0 ~v1 v2 ~v3 v4 ~v5
                                            ~v6 v7 v8 v9 v10 v11 v12
  = du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4698
      v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4698 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4698 v0 v1 v2 v3 v4 v5 v6
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
               MAlonzo.Code.Axiom.Set.Rel.du_dom_358
               (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v8))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v3))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                              (coe
                                 (\ v9 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                           (\ v9 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                           v3))))))
         (let v8
                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_358
               (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v8))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v4))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                              (coe
                                 (\ v9 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                           (\ v9 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                           v4))))))
         (coe v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_610
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v3))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                     (coe
                        (\ v8 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v4))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                     (coe
                        (\ v8 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
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
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v3))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                              (coe
                                 (\ v8 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v4))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                              (coe
                                 (\ v8 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                           (\ v8 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                           v4)))))
            (coe (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6))
            (coe v7)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈Pm₁⊕k∈Pm₂
d_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4700 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
d_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4700 ~v0 ~v1 v2 ~v3 v4 ~v5
                                            ~v6 v7 v8 v9 v10 v11 v12
  = du_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4700
      v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4700 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4700 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = let v8
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v5
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_588
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                    MAlonzo.Code.Class.IsSet.du_dom_588
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                              MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                              (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                             (coe v3))
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                             (coe
                                                                (\ v11 ->
                                                                   coe
                                                                     v2
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v11)))))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v4))))))))))
                               v5)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_610
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
                                        (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v3))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                           (coe
                                              (\ v10 ->
                                                 coe
                                                   v2
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v10)))))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                        (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v4))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                           (coe
                                              (\ v10 ->
                                                 coe
                                                   v2
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v10)))))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
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
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                    (coe v3))
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                    (coe
                                                       (\ v10 ->
                                                          coe
                                                            v2
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v10)))))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                    (coe v4))
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                    (coe
                                                       (\ v10 ->
                                                          coe
                                                            v2
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v10)))))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                              MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                              (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v11))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                             (coe v3))
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                             (coe
                                                                (\ v12 ->
                                                                   coe
                                                                     v2
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v12)))))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v11))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                                (coe
                                                                   (\ v12 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v12)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe v11))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                                         (coe
                                                                            (\ v12 ->
                                                                               coe
                                                                                 v2
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v12)))))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe v11))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                            (coe v4))
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                                                         (\ v12 ->
                                                                            coe
                                                                              v2
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v12)))
                                                                         v4))))))))))
                                           v5)
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_610
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
                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                       (coe v3))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                       (coe v4))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
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
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                (coe v3))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe v11))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                                         (coe
                                                                            (\ v12 ->
                                                                               coe
                                                                                 v2
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v12)))))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe v11))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
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
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                            (coe v4))
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                                                         (\ v12 ->
                                                                            coe
                                                                              v2
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v12)))
                                                                         v4))))))))))
                                           v5)
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_610
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
                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                       (coe v3))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                       (coe v4))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
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
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                (coe v3))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
d_yes'45'case_4722 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_yes'45'case_4722 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11 ~v12
                   v13
  = du_yes'45'case_4722 v2 v4 v7 v8 v9 v10 v11 v13
du_yes'45'case_4722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_yes'45'case_4722 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               v1 v0 v3 v4))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
            (coe
               (\ v8 ->
                  coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
         (coe
            du_kv'8712'm'8321'm'8322'_4750 (coe v0) (coe v1) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.k∈m₁∨k∈m₂
d_k'8712'm'8321''8744'k'8712'm'8322'_4730 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_k'8712'm'8321''8744'k'8712'm'8322'_4730 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6
                                          v7 v8 v9 v10 v11 v12 ~v13
  = du_k'8712'm'8321''8744'k'8712'm'8322'_4730
      v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'm'8321''8744'k'8712'm'8322'_4730 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_k'8712'm'8321''8744'k'8712'm'8322'_4730 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.Sum.Base.du_map_84
      (coe du_dom'45'filter'45''8838'_4170 (coe v2) (coe v3) (coe v5))
      (coe du_dom'45'filter'45''8838'_4170 (coe v2) (coe v4) (coe v5))
      (coe
         du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4698 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4) (coe v5) (coe v6) (coe v7))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.k∈m₁m₂
d_k'8712'm'8321'm'8322'_4732 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8321'm'8322'_4732 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10
                             v11 v12 ~v13
  = du_k'8712'm'8321'm'8322'_4732 v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'm'8321'm'8322'_4732 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8321'm'8322'_4732 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v4))
         (coe v5))
      (coe
         du_k'8712'm'8321''8744'k'8712'm'8322'_4730 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4) (coe v5) (coe v6) (coe v7))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.[kv′∈m₁m₂]
d_'91'kv'8242''8712'm'8321'm'8322''93'_4738 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'91'kv'8242''8712'm'8321'm'8322''93'_4738 ~v0 ~v1 v2 ~v3 v4 ~v5
                                            ~v6 ~v7 v8 v9 v10 ~v11 ~v12 ~v13
  = du_'91'kv'8242''8712'm'8321'm'8322''93'_4738 v2 v4 v8 v9 v10
du_'91'kv'8242''8712'm'8321'm'8322''93'_4738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'91'kv'8242''8712'm'8321'm'8322''93'_4738 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8712''45'incl'45'set_3010 (coe v0)
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
                           MAlonzo.Code.Class.IsSet.du_dom_588
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2))
                        (coe
                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_588
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3)))))))
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
               MAlonzo.Code.Axiom.Set.Map.Dec.du_d_496
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
                       MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_414
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
                  du_'8712''45'incl'45'set_3010 (coe v0)
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
                                 MAlonzo.Code.Class.IsSet.du_dom_588
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_588
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                    (coe v3)))))))
                  (coe v4))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               du_'8712''45'incl'45'set_3010 (coe v0)
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
                              MAlonzo.Code.Class.IsSet.du_dom_588
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_588
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3)))))))
               (coe v4))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.k∈m₁m₂′
d_k'8712'm'8321'm'8322''8242'_4740 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8321'm'8322''8242'_4740 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8
                                   v9 v10 ~v11 ~v12 ~v13
  = du_k'8712'm'8321'm'8322''8242'_4740 v2 v4 v8 v9 v10
du_k'8712'm'8321'm'8322''8242'_4740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8321'm'8322''8242'_4740 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'91'kv'8242''8712'm'8321'm'8322''93'_4738 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.k∈m₁∪⁺m₂
d_k'8712'm'8321''8746''8314'm'8322'_4742 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8321''8746''8314'm'8322'_4742 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6
                                         ~v7 v8 v9 v10 ~v11 ~v12 ~v13
  = du_k'8712'm'8321''8746''8314'm'8322'_4742 v2 v4 v8 v9 v10
du_k'8712'm'8321''8746''8314'm'8322'_4742 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8321''8746''8314'm'8322'_4742 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_626
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe v1) (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         du_k'8712'm'8321'm'8322''8242'_4740 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.v′
d_v'8242'_4744 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> AgdaAny
d_v'8242'_4744 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8 v9 v10 ~v11 ~v12
               ~v13
  = du_v'8242'_4744 v2 v4 v8 v9 v10
du_v'8242'_4744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_v'8242'_4744 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8741'_'8746''8314'_'8741'_774
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe v1) (coe v0) (coe v4) (coe v2) (coe v3)
      (coe
         du_k'8712'm'8321'm'8322''8242'_4740 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.kv′∈m₁m₂
d_kv'8242''8712'm'8321'm'8322'_4746 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8242''8712'm'8321'm'8322'_4746 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7
                                    v8 v9 v10 ~v11 ~v12 ~v13
  = du_kv'8242''8712'm'8321'm'8322'_4746 v2 v4 v8 v9 v10
du_kv'8242''8712'm'8321'm'8322'_4746 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8242''8712'm'8321'm'8322'_4746 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         du_'91'kv'8242''8712'm'8321'm'8322''93'_4738 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.v=v′
d_v'61'v'8242'_4748 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_v'61'v'8242'_4748 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._._.kv∈m₁m₂
d_kv'8712'm'8321'm'8322'_4750 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8712'm'8321'm'8322'_4750 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8 v9
                              v10 ~v11 ~v12 ~v13
  = du_kv'8712'm'8321'm'8322'_4750 v2 v4 v8 v9 v10
du_kv'8712'm'8321'm'8322'_4750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8712'm'8321'm'8322'_4750 v0 v1 v2 v3 v4
  = coe
      du_kv'8242''8712'm'8321'm'8322'_4746 (coe v0) (coe v1) (coe v2)
      (coe v3) (coe v4)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-∪⁺-distr-⊆
d_filter'7504''45''8746''8314''45'distr'45''8838'_4764 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'7504''45''8746''8314''45'distr'45''8838'_4764 ~v0 ~v1 v2
                                                       ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11 v12
  = du_filter'7504''45''8746''8314''45'distr'45''8838'_4764
      v2 v4 v7 v8 v9 v10 v11 v12
du_filter'7504''45''8746''8314''45'distr'45''8838'_4764 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'7504''45''8746''8314''45'distr'45''8838'_4764 v0 v1 v2 v3
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
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          v1 v0 v3 v4))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                           MAlonzo.Code.Class.IsSet.du_dom_588
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3)) in
              coe
                (let v12
                       = coe
                           MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v0 v5
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_588
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v4)) in
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
                                                           du_'8707'b_4828 (coe v0) (coe v3)
                                                           (coe v4) (coe v5) (coe v1) (coe v2)))
                                              else coe
                                                     seq (coe v16)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_'8707'b_4908 (coe v0) (coe v3)
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
                                                           du_'8707'b_4868 (coe v0) (coe v3)
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
                                                                                    (let v17
                                                                                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                v17))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                             (coe
                                                                                                v3))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                       (let v17
                                                                                              = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                (coe
                                                                                                   v17))
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                (coe
                                                                                                   v4))))))))
                                                                           v5)
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746''8314''45'dom'8746'_762
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                           (coe v1) (coe v0)
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
                                                                                    (let v18
                                                                                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                v18))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                             (coe
                                                                                                v3))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                       (let v18
                                                                                              = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                (coe
                                                                                                   v18))
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                (coe
                                                                                                   v4))))
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
                                                                                                (let v18
                                                                                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                                 coe
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                         (coe
                                                                                                            v18))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                         (coe
                                                                                                            v3))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                                   (let v18
                                                                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                                    coe
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                            (coe
                                                                                                               v18))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                            (coe
                                                                                                               v4))))))))
                                                                                       v5)
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746''8314''45'dom'8746'_762
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                       (coe v1)
                                                                                       (coe v0)
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
                                                                                                (let v18
                                                                                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                                 coe
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                         (coe
                                                                                                            v18))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                         (coe
                                                                                                            v3))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                                   (let v18
                                                                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                                    coe
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                            (coe
                                                                                                               v18))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                            (coe
                                                                                                               v4))))))))
                                                                                       v5)
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746''8314''45'dom'8746'_762
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                       (coe v1)
                                                                                       (coe v0)
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
d_m'8321''8242'_4820 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4820 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8321''8242'_4820 v3 v12
du_m'8321''8242'_4820 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4820 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₂′
d_m'8322''8242'_4822 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4822 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8322''8242'_4822 v4 v12
du_m'8322''8242'_4822 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4822 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈∪dom′
d_k'8712''8746'dom'8242'_4824 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712''8746'dom'8242'_4824 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9
                              ~v10 ~v11 v12 ~v13 ~v14 v15 ~v16
  = du_k'8712''8746'dom'8242'_4824 v3 v4 v5 v6 v12 v15
du_k'8712''8746'dom'8242'_4824 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712''8746'dom'8242'_4824 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_528
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_592)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_588
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                  (\ v6 ->
                     coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v0)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
            (coe du_m'8322''8242'_4822 (coe v1) (coe v4)))
         (coe v2))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
         (coe
            du_'8712''45'dom'45'filter'691'_4186 (coe v4) (coe v2) (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.∃b
d_'8707'b_4828 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'b_4828 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16
  = du_'8707'b_4828 v2 v3 v4 v5 v9 v12
du_'8707'b_4828 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'b_4828 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_'8741'_'8746''8314'_'8741'_774
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v4) (coe v0) (coe v3)
         (coe du_m'8321''8242'_4820 (coe v1) (coe v5))
         (coe du_m'8322''8242'_4822 (coe v2) (coe v5))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'incl'45'set_3010 (coe v0)
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
                              MAlonzo.Code.Class.IsSet.du_dom_588
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                              (coe du_m'8321''8242'_4820 (coe v1) (coe v5)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_588
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                 (coe du_m'8322''8242'_4822 (coe v2) (coe v5))))))))
               (coe v3))))
      (coe
         du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 (coe v0)
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.b
d_b_4830 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_b_4830 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12 ~v13 ~v14
         ~v15 ~v16
  = du_b_4830 v2 v3 v4 v5 v9 v12
du_b_4830 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny
du_b_4830 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'8707'b_4828 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈′
d_kb'8712''8242'_4832 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712''8242'_4832 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11
                      v12 ~v13 ~v14 ~v15 ~v16
  = du_kb'8712''8242'_4832 v2 v3 v4 v5 v9 v12
du_kb'8712''8242'_4832 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712''8242'_4832 v0 v1 v2 v3 v4 v5
  = coe
      du_filter'7504''45''8746''8314''45'distr'45''8839'_4682 (coe v0)
      (coe v4) (coe v5) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8707'b_4828 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈
d_kb'8712'_4834 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712'_4834 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
                ~v13 ~v14 ~v15 ~v16
  = du_kb'8712'_4834 v2 v3 v4 v5 v9 v12
du_kb'8712'_4834 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712'_4834 v0 v1 v2 v3 v4 v5
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
               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v4 v0 v1 v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
               (coe
                  (\ v6 ->
                     coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  du_b_4830 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
         (coe
            du_kb'8712''8242'_4832 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₁′
d_m'8321''8242'_4860 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4860 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8321''8242'_4860 v3 v12
du_m'8321''8242'_4860 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4860 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₂′
d_m'8322''8242'_4862 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4862 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8322''8242'_4862 v4 v12
du_m'8322''8242'_4862 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4862 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈∪dom′
d_k'8712''8746'dom'8242'_4864 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712''8746'dom'8242'_4864 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9
                              ~v10 ~v11 v12 ~v13 ~v14 v15 ~v16
  = du_k'8712''8746'dom'8242'_4864 v3 v4 v5 v7 v12 v15
du_k'8712''8746'dom'8242'_4864 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712''8746'dom'8242'_4864 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
            (coe du_m'8321''8242'_4860 (coe v0) (coe v4)))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_528
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_592)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_588
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                  (\ v6 ->
                     coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v1)))
         (coe v2))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
         (coe
            du_'8712''45'dom'45'filter'691'_4186 (coe v4) (coe v2) (coe v1)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.∃b
d_'8707'b_4868 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'b_4868 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16
  = du_'8707'b_4868 v2 v3 v4 v5 v9 v12
du_'8707'b_4868 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'b_4868 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_'8741'_'8746''8314'_'8741'_774
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v4) (coe v0) (coe v3)
         (coe du_m'8321''8242'_4860 (coe v1) (coe v5))
         (coe du_m'8322''8242'_4862 (coe v2) (coe v5))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'incl'45'set_3010 (coe v0)
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
                              MAlonzo.Code.Class.IsSet.du_dom_588
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                              (coe du_m'8321''8242'_4860 (coe v1) (coe v5)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_588
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                 (coe du_m'8322''8242'_4862 (coe v2) (coe v5))))))))
               (coe v3))))
      (coe
         du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 (coe v0)
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.b
d_b_4870 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_b_4870 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12 ~v13 ~v14
         ~v15 ~v16
  = du_b_4870 v2 v3 v4 v5 v9 v12
du_b_4870 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny
du_b_4870 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'8707'b_4868 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈′
d_kb'8712''8242'_4872 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712''8242'_4872 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11
                      v12 ~v13 ~v14 ~v15 ~v16
  = du_kb'8712''8242'_4872 v2 v3 v4 v5 v9 v12
du_kb'8712''8242'_4872 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712''8242'_4872 v0 v1 v2 v3 v4 v5
  = coe
      du_filter'7504''45''8746''8314''45'distr'45''8839'_4682 (coe v0)
      (coe v4) (coe v5) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8707'b_4868 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈
d_kb'8712'_4874 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712'_4874 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
                ~v13 ~v14 ~v15 ~v16
  = du_kb'8712'_4874 v2 v3 v4 v5 v9 v12
du_kb'8712'_4874 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712'_4874 v0 v1 v2 v3 v4 v5
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
               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v4 v0 v1 v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
               (coe
                  (\ v6 ->
                     coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  du_b_4870 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
         (coe
            du_kb'8712''8242'_4872 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₁′
d_m'8321''8242'_4900 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4900 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8321''8242'_4900 v3 v12
du_m'8321''8242'_4900 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4900 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.m₂′
d_m'8322''8242'_4902 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4902 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8322''8242'_4902 v4 v12
du_m'8322''8242'_4902 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4902 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.k∈∪dom′
d_k'8712''8746'dom'8242'_4904 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712''8746'dom'8242'_4904 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9
                              ~v10 ~v11 v12 ~v13 ~v14 v15 ~v16
  = du_k'8712''8746'dom'8242'_4904 v3 v4 v5 v6 v12 v15
du_k'8712''8746'dom'8242'_4904 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712''8746'dom'8242'_4904 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_528
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_592)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_588
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                  (\ v6 ->
                     coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v0)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_588
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
            (coe du_m'8322''8242'_4902 (coe v1) (coe v4)))
         (coe v2))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
         (coe
            du_'8712''45'dom'45'filter'691'_4186 (coe v4) (coe v2) (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.∃b
d_'8707'b_4908 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'b_4908 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16
  = du_'8707'b_4908 v2 v3 v4 v5 v9 v12
du_'8707'b_4908 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'b_4908 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_'8741'_'8746''8314'_'8741'_774
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v4) (coe v0) (coe v3)
         (coe du_m'8321''8242'_4900 (coe v1) (coe v5))
         (coe du_m'8322''8242'_4902 (coe v2) (coe v5))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'incl'45'set_3010 (coe v0)
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
                              MAlonzo.Code.Class.IsSet.du_dom_588
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                              (coe du_m'8321''8242'_4900 (coe v1) (coe v5)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_588
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                 (coe du_m'8322''8242'_4902 (coe v2) (coe v5))))))))
               (coe v3))))
      (coe
         du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3044 (coe v0)
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.b
d_b_4910 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_b_4910 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12 ~v13 ~v14
         ~v15 ~v16
  = du_b_4910 v2 v3 v4 v5 v9 v12
du_b_4910 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny
du_b_4910 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'8707'b_4908 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈′
d_kb'8712''8242'_4912 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712''8242'_4912 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11
                      v12 ~v13 ~v14 ~v15 ~v16
  = du_kb'8712''8242'_4912 v2 v3 v4 v5 v9 v12
du_kb'8712''8242'_4912 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712''8242'_4912 v0 v1 v2 v3 v4 v5
  = coe
      du_filter'7504''45''8746''8314''45'distr'45''8839'_4682 (coe v0)
      (coe v4) (coe v5) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8707'b_4908 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._._.kb∈
d_kb'8712'_4914 ::
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712'_4914 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
                ~v13 ~v14 ~v15 ~v16
  = du_kb'8712'_4914 v2 v3 v4 v5 v9 v12
du_kb'8712'_4914 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712'_4914 v0 v1 v2 v3 v4 v5
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
               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v4 v0 v1 v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
               (coe
                  (\ v6 ->
                     coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  du_b_4910 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
         (coe
            du_kb'8712''8242'_4912 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-∪⁺-distr
d_filter'7504''45''8746''8314''45'distr_4984 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45''8746''8314''45'distr_4984 ~v0 ~v1 v2 ~v3 v4 ~v5
                                             ~v6 v7 v8 v9
  = du_filter'7504''45''8746''8314''45'distr_4984 v2 v4 v7 v8 v9
du_filter'7504''45''8746''8314''45'distr_4984 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45''8746''8314''45'distr_4984 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v5 ->
            coe
              du_filter'7504''45''8746''8314''45'distr'45''8838'_4764 (coe v0)
              (coe v1) (coe v2) (coe v3) (coe v4)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
      (coe
         (\ v5 v6 ->
            coe
              du_filter'7504''45''8746''8314''45'distr'45''8839'_4682 (coe v0)
              (coe v1) (coe v2) (coe v3) (coe v4)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-singleton-true
d_filter'7504''45'singleton'45'true_4990 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'singleton'45'true_4990 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 v7 v8 v9 v10
  = du_filter'7504''45'singleton'45'true_4990 v7 v8 v9 v10
du_filter'7504''45'singleton'45'true_4990 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'singleton'45'true_4990 v0 v1 v2 v3
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
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                       (coe
                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                          (coe
                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_354
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                       MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                       (coe
                          MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_354
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                    (coe
                       (\ v6 ->
                          coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                 (coe v4))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.filterᵐ-restrict
d_filter'7504''45'restrict_5008 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'restrict_5008 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_filter'7504''45'restrict_5008 v2 v7 v8 v9
du_filter'7504''45'restrict_5008 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'restrict_5008 v0 v1 v2 v3
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
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
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
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                            du_res'7580''45'dom'8713''8315'_3300 (coe v0) (coe v2)
                                            (coe v3) (coe v5) (coe v6) (coe v10) in
                                  coe
                                    (case coe v11 of
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                         -> coe
                                              du_res'7580''45'dom'8713''8314'_3314 (coe v0)
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                  du_res'7580''45'dom'8713''8315'_3300 (coe v0)
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                          MAlonzo.Code.Class.IsSet.d_toSet_528
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
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
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           v1
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))
                                                (coe v4))
                                             v9))
                                       (coe
                                          du_res'7580''45'dom'8713''8314'_3314 (coe v0) (coe v2)
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
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
d_'8712''45'filter'45'res'45'_5094 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'45'res'45'_5094 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8
                                   v9 v10 v11
  = du_'8712''45'filter'45'res'45'_5094 v2 v7 v8 v9 v10 v11
du_'8712''45'filter'45'res'45'_5094 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'filter'45'res'45'_5094 v0 v1 v2 v3 v4 v5
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
               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v4))
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                  (coe
                     (\ v6 ->
                        coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
               (coe v3))
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_866
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
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                     (coe
                        (\ v6 ->
                           coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v4)))
               (coe
                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                  (coe
                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_348
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                  v2)
               v3 v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1860
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased v0)
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
            (\ v6 ->
               coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
            v4)
         (coe v2) (coe v3) (coe v5))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.isPartialEquivalence
d_isPartialEquivalence_5104 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_5104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_isPartialEquivalence_5104
du_isPartialEquivalence_5104 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_5104
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_284)
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.refl
d_refl_5106 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refl_5106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 = du_refl_5106
du_refl_5106 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refl_5106
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 -> v1))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.reflexive
d_reflexive_5108 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reflexive_5108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_reflexive_5108
du_reflexive_5108 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reflexive_5108 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_284)
      v0
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.sym
d_sym_5110 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sym_5110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_5110 v10
du_sym_5110 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sym_5110 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.Eq.trans
d_trans_5112 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_5112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 v12
  = du_trans_5112 v11 v12
du_trans_5112 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_5112 v0 v1
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
d_restrict'45'singleton'45'filter'7504''45'false_5158 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_restrict'45'singleton'45'filter'7504''45'false_5158 ~v0 ~v1 v2
                                                      ~v3 ~v4 ~v5 ~v6 v7 v8 v9 ~v10
  = du_restrict'45'singleton'45'filter'7504''45'false_5158
      v2 v7 v8 v9
du_restrict'45'singleton'45'filter'7504''45'false_5158 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_restrict'45'singleton'45'filter'7504''45'false_5158 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
              (\ v4 v5 v6 ->
                 coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                    (\ v4 ->
                       coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                    v3))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased v0)
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased v0)
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased v0)
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased v0)
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_1052
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased v0)
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                       MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_992
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                          du_'172'P'8594'res'45''8709'_5170 (coe v0) (coe v1) (coe v2)
                          (coe v3))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
                          (coe (\ v4 v5 -> v5)))))
                 (let v4
                        = coe
                            MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_912
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
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
d_'172'P'8594'res'45''8709'_5170 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'172'P'8594'res'45''8709'_5170 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8
                                 v9 ~v10
  = du_'172'P'8594'res'45''8709'_5170 v2 v7 v8 v9
du_'172'P'8594'res'45''8709'_5170 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'172'P'8594'res'45''8709'_5170 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1860
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased v0)
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                         (\ v6 ->
                            coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                         v3)
                      (coe v2) (coe v4) (coe v5) in
            coe
              (seq (coe v6) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))))
      (coe (\ v4 v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lem-add-included
d_lem'45'add'45'included_5188 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'add'45'included_5188 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
                              v10 v11
  = du_lem'45'add'45'included_5188 v2 v4 v7 v8 v9 v10 v11
du_lem'45'add'45'included_5188 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'add'45'included_5188 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 du_'8746''8314''45'cong'45'l_3828 (coe v0) (coe v1)
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
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v4))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                             (coe
                                (\ v9 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                             (coe
                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                                (coe
                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_354
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                             (coe
                                (\ v9 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                    (coe
                       (\ v9 v10 v11 v12 v13 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_354
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
                            v9 v10 v11
                            (coe
                               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                               (coe
                                  MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                               (\ v14 v15 -> v15)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                    du_filter'7504''45'singleton'45'true_4990 (coe v2) (coe v3)
                    (coe v5) (coe v6)))
              v7
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    du_filter'7504''45''8746''8314''45'distr_4984 (coe v0) (coe v1)
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
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_354
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
                 du_filter'7504''45''8746''8314''45'distr_4984 (coe v0) (coe v1)
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
                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                          (coe
                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_354
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
                    du_'8746''8314''45'cong'45'l_3828 (coe v0) (coe v1)
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
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v4))
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                (coe
                                   (\ v9 ->
                                      coe
                                        v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                (coe
                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                                   (coe
                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_354
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                      (coe v5))))
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                (coe
                                   (\ v9 ->
                                      coe
                                        v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                       (coe
                          (\ v9 v10 v11 v12 v13 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                                  (coe
                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_354
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
                               v9 v10 v11
                               (coe
                                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                  (\ v14 v15 -> v15)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                       du_filter'7504''45'singleton'45'true_4990 (coe v2) (coe v3)
                       (coe v5) (coe v6)))
                 v7 v8)))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.≡-sp-∘
d_'8801''45'sp'45''8728'_5192 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'sp'45''8728'_5192 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lem-add-excluded
d_lem'45'add'45'excluded_5196 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'add'45'excluded_5196 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
                              v10 ~v11
  = du_lem'45'add'45'excluded_5196 v2 v4 v7 v8 v9 v10
du_lem'45'add'45'excluded_5196 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'add'45'excluded_5196 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
            (\ v6 ->
               coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               v1 v0 v5
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
               (\ v6 ->
                  coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0 v5
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               v1 v0
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                  (\ v6 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v5)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                  (\ v6 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                     (\ v6 ->
                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                     v5)
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                     (\ v6 ->
                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                     (\ v6 ->
                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                     v5)
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_608
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_580
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     v1 v0
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                        (\ v6 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                        v5)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_608
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                     (\ v6 ->
                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                     v5))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                        (\ v6 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                        v5)))
               (coe
                  du_'8746''8314''45'id'45'r_4004 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_filter_648
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                           (coe
                              (\ v6 ->
                                 coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                     erased)))
            (coe
               du_'8746''8314''45'cong'45'l_3828 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Data.List.Base.du_filter_648
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                             MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
                          v6 v7 v8
                          (coe
                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                             (coe
                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                   (coe
                                      (\ v11 ->
                                         coe
                                           v2
                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
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
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                             (\ v11 v12 -> v12)
                             (coe
                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
                                   (coe
                                      (\ v11 ->
                                         coe
                                           v2
                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
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
                  MAlonzo.Code.Axiom.Set.Map.Dec.du_filter'7504''45'singleton'45'false_808)))
         (coe
            du_filter'7504''45''8746''8314''45'distr_4984 (coe v0) (coe v1)
            (coe v2) (coe v5)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))))
-- abstract-set-theory.Axiom.Set.Map.Extra._._._.lem-del-excluded
d_lem'45'del'45'excluded_5208 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'del'45'excluded_5208 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                              ~v10
  = du_lem'45'del'45'excluded_5208 v2 v7 v8 v9
du_lem'45'del'45'excluded_5208 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'del'45'excluded_5208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 du_restrict'45'singleton'45'filter'7504''45'false_5158 (coe v0)
                 (coe v1) (coe v2) (coe v3))
              v4
              (let v6
                     = coe
                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                         (coe
                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_348
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
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
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
                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                                                 (coe
                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_348
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                 v2)))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                            du_res'7580''45'dom'8713''8315'_3300 (coe v0) (coe v3)
                                            (coe v6) (coe v7) (coe v8) (coe v11) in
                                  coe
                                    (case coe v12 of
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                         -> coe
                                              du_res'7580''45'dom'8713''8314'_3314 (coe v0)
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
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
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                      (coe
                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_348
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
                               du_res'7580''45'dom'8713''8315'_3300 (coe v0)
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
                                  (\ v9 ->
                                     coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                  v3)
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                                  (coe
                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_348
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
                                     du_restrict'45'singleton'45'filter'7504''45'false_5158 (coe v0)
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
                                       MAlonzo.Code.Class.IsSet.d_toSet_528
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
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
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
                                       du_res'7580''45'dom'8713''8314'_3314 (coe v0) (coe v3)
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
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1228
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
-- abstract-set-theory.Axiom.Set.Map.Extra.coex-∈⁻
d_coex'45''8712''8315'_5228 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_coex'45''8712''8315'_5228 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_coex'45''8712''8315'_5228 v2 v3 v4 v5 v6
du_coex'45''8712''8315'_5228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_coex'45''8712''8315'_5228 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1))
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
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
-- abstract-set-theory.Axiom.Set.Map.Extra.dom-∪ˡ-⊇ʳ
d_dom'45''8746''737''45''8839''691'_5242 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45''8746''737''45''8839''691'_5242 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_dom'45''8746''737''45''8839''691'_5242 v2 v3 v4 v5 v6
du_dom'45''8746''737''45''8839''691'_5242 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'45''8746''737''45''8839''691'_5242 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v3
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_588
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v1)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1868
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v9
                                        = MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v9)
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_specification_214
                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             erased erased
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
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
                                                      erased v0
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_replacement_236
                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            erased erased
                                                            (\ v10 ->
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v1))))))
                                                (\ v10 ->
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v10)))))))
                                 (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Function.Bundles.d_from_1870
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                                          (coe v3))
                                       v8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_216
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_specification_214
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
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
                                                   erased v0
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_replacement_236
                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         erased erased
                                                         (\ v9 ->
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v9))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v1))))))
                                             (\ v9 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v9)))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Function.Bundles.d_from_1870
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v1))
                                                (coe v3))
                                             v8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                          (coe
                                             MAlonzo.Code.Function.Bundles.d_from_1870
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v1))
                                                (coe v3))
                                             v8)))))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Function.Bundles.d_to_1868
                          (coe
                             MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (let v8
                                    = MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                              coe
                                (coe
                                   MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v8)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_filter_448
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                                               erased v0
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_replacement_236
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (\ v9 ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v1))))))
                                         (\ v9 ->
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))))
                             (coe v3))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Function.Bundles.d_from_1870
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                      (coe v3))
                                   v4))
                             (coe
                                MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_216
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_filter_448
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                                            erased v0
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_replacement_236
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (\ v8 ->
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v1))))))
                                      (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Function.Bundles.d_from_1870
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                            (coe v3))
                                         v4)))
                                (coe
                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                   (coe
                                      MAlonzo.Code.Function.Bundles.d_to_1868
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
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
                                                  erased v0
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_replacement_236
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (\ v8 ->
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v8))
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v1))))))
                                            (\ v8 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v2))
                                                     (coe v3))
                                                  v4))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                            (coe
                                               MAlonzo.Code.Function.Bundles.d_from_1870
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v2))
                                                  (coe v3))
                                               v4))))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- abstract-set-theory.Axiom.Set.Map.Extra.dom-insert-⊇
d_dom'45'insert'45''8839'_5288 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'insert'45''8839'_5288 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_dom'45'insert'45''8839'_5288 v2 v3 v4 v5 v6
du_dom'45'insert'45''8839'_5288 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'45'insert'45''8839'_5288 v0 v1 v2 v3 v4
  = coe
      du_dom'45''8746''737''45''8839''691'_5242 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3)))
      (coe v1) (coe v4)
-- abstract-set-theory.Axiom.Set.Map.Extra.dom-mapValueRestricted-⊇
d_dom'45'mapValueRestricted'45''8839'_5308 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'mapValueRestricted'45''8839'_5308 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_dom'45'mapValueRestricted'45''8839'_5308 v2 v3 v4 v5 v6
du_dom'45'mapValueRestricted'45''8839'_5308 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'45'mapValueRestricted'45''8839'_5308 v0 v1 v2 v3 v4
  = coe
      du_dom'45''8746''737''45''8839''691'_5242 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_986
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased v0)
            (coe v1) (coe v3)))
      (coe v1) (coe v4)
-- abstract-set-theory.Axiom.Set.Map.Extra.lookupᵐ?-insert
d_lookup'7504''63''45'insert_5328 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'7504''63''45'insert_5328 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra.∈-insert-≢
d_'8712''45'insert'45''8802'_5352 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'insert'45''8802'_5352 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du_'8712''45'insert'45''8802'_5352 v2 v3 v4 v5 v6 v7 v8 v9
du_'8712''45'insert'45''8802'_5352 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'insert'45''8802'_5352 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_216
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_768
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                     erased v0
                     (let v8
                            = MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v8
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                    (coe v4))))))))
               (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
            (coe v1)))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1868
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v1))
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
                        erased v0
                        (let v8
                               = MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v8
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                       (coe v4))))))))
                  (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe (\ v8 -> coe v6 erased)) (coe v7))))
-- abstract-set-theory.Axiom.Set.Map.Extra.∈-insert-≢⁻
d_'8712''45'insert'45''8802''8315'_5380 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'insert'45''8802''8315'_5380 ~v0 ~v1 v2 v3 v4 v5 v6 v7
                                        ~v8 v9
  = du_'8712''45'insert'45''8802''8315'_5380 v2 v3 v4 v5 v6 v7 v9
du_'8712''45'insert'45''8802''8315'_5380 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'insert'45''8802''8315'_5380 v0 v1 v2 v3 v4 v5 v6
  = let v7
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
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4))))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                (coe
                                   MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_768
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                                            erased v0
                                            (let v7
                                                   = MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v7
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v2) (coe v4))))))))
                                      (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                                   (coe v1)))))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
              v6 in
    coe
      (let v8
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
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                (coe
                                   MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_768
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                                            erased v0
                                            (let v8
                                                   = MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v8
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v2) (coe v4))))))))
                                      (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                   (coe v1)))
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
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                               (coe v4))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_768
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                                                        erased v0
                                                        (let v8
                                                               = MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                              v8
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v2) (coe v4))))))))
                                                  (\ v8 ->
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8)))
                                               (coe v1)))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
                          v6)))
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
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                               (coe v4))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_768
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                                                        erased v0
                                                        (let v8
                                                               = MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                              v8
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_854
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v2) (coe v4))))))))
                                                  (\ v8 ->
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8)))
                                               (coe v1)))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
                          v6))) in
       coe
         (case coe v8 of
            MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v11
              -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
            MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v11
              -> let v12
                       = seq
                           (coe v11)
                           (case coe v7 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                -> coe
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                              _ -> MAlonzo.RTE.mazUnreachableError) in
                 coe
                   (case coe v12 of
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                        -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                        -> coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe
                                MAlonzo.Code.Function.Bundles.d_from_1870
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
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
                                            erased v0
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
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_listing_244
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v2) (coe v4))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                      (\ v14 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                      (coe v5)))
                                v13)
                      _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- abstract-set-theory.Axiom.Set.Map.Extra.lookupᵐ?-insert-≢
d_lookup'7504''63''45'insert'45''8802'_5420 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'7504''63''45'insert'45''8802'_5420 = erased
-- abstract-set-theory.Axiom.Set.Map.Extra._.dom⊆→dom∪⁺
d_dom'8838''8594'dom'8746''8314'_5512 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8838''8594'dom'8746''8314'_5512 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_dom'8838''8594'dom'8746''8314'_5512 v2 v3 v4 v5 v6
du_dom'8838''8594'dom'8746''8314'_5512 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8838''8594'dom'8746''8314'_5512 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v5 v6 ->
            let v7
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (let v7
                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                               (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v7))
                               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2))))
                         (let v7
                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                               (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v7))
                               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v3))))
                         (coe v5))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_610
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                         (coe v1) (coe v0) (coe v2) (coe v3) (coe v5) (coe v6)) in
            coe
              (case coe v7 of
                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8 -> coe v8
                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8 -> coe v4 v5 v8
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         (\ v5 v6 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_626
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe v1) (coe v0) (coe v2) (coe v3) (coe v5)
              (coe
                 MAlonzo.Code.Function.Bundles.d_to_1868
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Class.IsSet.du_dom_588
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2))
                    (let v7
                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                          (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v7))
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v3))))
                    (coe v5))
                 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v6)))))
-- abstract-set-theory.Axiom.Set.Map.Extra.dom-pullbackMap-⊆
d_dom'45'pullbackMap'45''8838'_5548 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'pullbackMap'45''8838'_5548 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
                                    v9
  = du_dom'45'pullbackMap'45''8838'_5548 v4 v5 v6 v7 v8 v9
du_dom'45'pullbackMap'45''8838'_5548 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'45'pullbackMap'45''8838'_5548 v0 v1 v2 v3 v4 v5
  = let v6
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
                    (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_2080
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe v0) (coe v1) (coe v2) (coe v3))))
                 v4)
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased)
                 v5) in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v7 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> case coe v8 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                         -> let v13
                                  = let v13
                                          = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Function.Bundles.d_from_1870
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased erased
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_678
                                                             (coe
                                                                (\ v13 v14 ->
                                                                   coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe v0) (coe v2 v13)
                                                                     (coe v1 (coe v2 v13)))))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased erased
                                                                (\ v13 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe v13) (coe v13))
                                                                v3)))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v4) (coe v10))))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_632
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
                                                             (\ v13 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v13) (coe v13))
                                                             v3))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_678
                                                          (coe
                                                             (\ v13 v14 ->
                                                                coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe v0) (coe v2 v13)
                                                                  (coe v1 (coe v2 v13)))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v4) (coe v10)))
                                                       (coe
                                                          MAlonzo.Code.Function.Bundles.d_to_1868
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_738
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   (\ v13 v14 ->
                                                                      coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (coe v0) (coe v2 v13)
                                                                        (coe v1 (coe v2 v13))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased erased
                                                                      (\ v13 ->
                                                                         coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v13) (coe v13))
                                                                      v3)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v4) (coe v10))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v4) (coe v10))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                erased (coe v12))))))) in
                                    coe
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe v0)
                                                 (coe
                                                    v2
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Function.Bundles.d_from_1870
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   erased erased
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_678
                                                                      (coe
                                                                         (\ v14 v15 ->
                                                                            coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe v0) (coe v2 v14)
                                                                              (coe
                                                                                 v1 (coe v2 v14)))))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         erased erased
                                                                         (\ v14 ->
                                                                            coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v14) (coe v14))
                                                                         v3)))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v4) (coe v10))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_632
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
                                                                      (\ v14 ->
                                                                         coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v14) (coe v14))
                                                                      v3))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_678
                                                                   (coe
                                                                      (\ v14 v15 ->
                                                                         coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe v0) (coe v2 v14)
                                                                           (coe v1 (coe v2 v14)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v4) (coe v10)))
                                                                (coe
                                                                   MAlonzo.Code.Function.Bundles.d_to_1868
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_738
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            (\ v14 v15 ->
                                                                               coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe v0)
                                                                                 (coe v2 v14)
                                                                                 (coe
                                                                                    v1
                                                                                    (coe v2 v14))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               erased erased
                                                                               (\ v14 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v14)
                                                                                    (coe v14))
                                                                               v3)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v4) (coe v10))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v4) (coe v10))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         erased (coe v12)))))))))
                                                 (coe
                                                    v1
                                                    (coe
                                                       v2
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Function.Bundles.d_from_1870
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_678
                                                                         (coe
                                                                            (\ v14 v15 ->
                                                                               coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe v0)
                                                                                 (coe v2 v14)
                                                                                 (coe
                                                                                    v1
                                                                                    (coe v2 v14)))))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            erased erased
                                                                            (\ v14 ->
                                                                               coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v14)
                                                                                 (coe v14))
                                                                            v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v4) (coe v10))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_632
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
                                                                         (\ v14 ->
                                                                            coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v14) (coe v14))
                                                                         v3))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_678
                                                                      (coe
                                                                         (\ v14 v15 ->
                                                                            coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe v0) (coe v2 v14)
                                                                              (coe
                                                                                 v1 (coe v2 v14)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v4) (coe v10)))
                                                                   (coe
                                                                      MAlonzo.Code.Function.Bundles.d_to_1868
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_738
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               (\ v14 v15 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                    (coe v0)
                                                                                    (coe v2 v14)
                                                                                    (coe
                                                                                       v1
                                                                                       (coe
                                                                                          v2 v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  erased erased
                                                                                  (\ v14 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v14)
                                                                                       (coe v14))
                                                                                  v3)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe v4) (coe v10))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v4) (coe v10))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            erased
                                                                            (coe v12)))))))))) in
                                       coe
                                         (let v15
                                                = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.Function.Bundles.d_from_1870
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased erased
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_678
                                                                   (coe
                                                                      (\ v15 v16 ->
                                                                         coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe v0) (coe v2 v15)
                                                                           (coe v1 (coe v2 v15)))))
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased erased
                                                                      (\ v15 ->
                                                                         coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v15) (coe v15))
                                                                      v3)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v4) (coe v10))))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_632
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
                                                                   (\ v15 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe v15) (coe v15))
                                                                   v3))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_678
                                                                (coe
                                                                   (\ v15 v16 ->
                                                                      coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (coe v0) (coe v2 v15)
                                                                        (coe v1 (coe v2 v15)))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v4) (coe v10)))
                                                             (coe
                                                                MAlonzo.Code.Function.Bundles.d_to_1868
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_738
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         (\ v15 v16 ->
                                                                            coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe v0) (coe v2 v15)
                                                                              (coe
                                                                                 v1 (coe v2 v15))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            erased erased
                                                                            (\ v15 ->
                                                                               coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v15)
                                                                                 (coe v15))
                                                                            v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v4) (coe v10))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v4) (coe v10))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      erased (coe v12))))))) in
                                          coe
                                            (seq
                                               (coe v14)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v13)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     erased (coe v15)))))) in
                            coe
                              (case coe v13 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                   -> case coe v15 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                          -> let v18
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
                                                             (\ v18 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v18) (coe v18))
                                                             v3)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v4) (coe v14)))
                                                       v17 in
                                             coe
                                               (case coe v18 of
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                    -> case coe v20 of
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                           -> coe v22
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
