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

module MAlonzo.Code.Relation.Binary.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Relation.Binary.Structures.IsPartialEquivalence
d_IsPartialEquivalence_16 a0 a1 a2 a3 = ()
data T_IsPartialEquivalence_16
  = C_IsPartialEquivalence'46'constructor_273 (AgdaAny ->
                                               AgdaAny -> AgdaAny -> AgdaAny)
                                              (AgdaAny ->
                                               AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Structures.IsPartialEquivalence.sym
d_sym_22 ::
  T_IsPartialEquivalence_16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_22 v0
  = case coe v0 of
      C_IsPartialEquivalence'46'constructor_273 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPartialEquivalence.trans
d_trans_24 ::
  T_IsPartialEquivalence_16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_24 v0
  = case coe v0 of
      C_IsPartialEquivalence'46'constructor_273 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsEquivalence
d_IsEquivalence_26 a0 a1 a2 a3 = ()
data T_IsEquivalence_26
  = C_IsEquivalence'46'constructor_745 (AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny ->
                                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Structures.IsEquivalence.refl
d_refl_34 :: T_IsEquivalence_26 -> AgdaAny -> AgdaAny
d_refl_34 v0
  = case coe v0 of
      C_IsEquivalence'46'constructor_745 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsEquivalence.sym
d_sym_36 ::
  T_IsEquivalence_26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_36 v0
  = case coe v0 of
      C_IsEquivalence'46'constructor_745 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsEquivalence.trans
d_trans_38 ::
  T_IsEquivalence_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_38 v0
  = case coe v0 of
      C_IsEquivalence'46'constructor_745 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsEquivalence.reflexive
d_reflexive_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsEquivalence_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_40 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7
  = du_reflexive_40 v4 v5
du_reflexive_40 :: T_IsEquivalence_26 -> AgdaAny -> AgdaAny
du_reflexive_40 v0 v1 = coe d_refl_34 v0 v1
-- Relation.Binary.Structures.IsEquivalence.isPartialEquivalence
d_isPartialEquivalence_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsEquivalence_26 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_42 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_42 v4
du_isPartialEquivalence_42 ::
  T_IsEquivalence_26 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_42 v0
  = coe
      C_IsPartialEquivalence'46'constructor_273 (coe d_sym_36 (coe v0))
      (coe d_trans_38 (coe v0))
-- Relation.Binary.Structures.IsDecEquivalence
d_IsDecEquivalence_44 a0 a1 a2 a3 = ()
data T_IsDecEquivalence_44
  = C_IsDecEquivalence'46'constructor_3083 T_IsEquivalence_26
                                           (AgdaAny ->
                                            AgdaAny ->
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Relation.Binary.Structures.IsDecEquivalence.isEquivalence
d_isEquivalence_50 :: T_IsDecEquivalence_44 -> T_IsEquivalence_26
d_isEquivalence_50 v0
  = case coe v0 of
      C_IsDecEquivalence'46'constructor_3083 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecEquivalence._≟_
d__'8799'__52 ::
  T_IsDecEquivalence_44 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__52 v0
  = case coe v0 of
      C_IsDecEquivalence'46'constructor_3083 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecEquivalence._.isPartialEquivalence
d_isPartialEquivalence_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecEquivalence_44 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_56 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_56 v4
du_isPartialEquivalence_56 ::
  T_IsDecEquivalence_44 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_56 v0
  = coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v0))
-- Relation.Binary.Structures.IsDecEquivalence._.refl
d_refl_58 :: T_IsDecEquivalence_44 -> AgdaAny -> AgdaAny
d_refl_58 v0 = coe d_refl_34 (coe d_isEquivalence_50 (coe v0))
-- Relation.Binary.Structures.IsDecEquivalence._.reflexive
d_reflexive_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecEquivalence_44 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_60 ~v0 ~v1 ~v2 ~v3 v4 = du_reflexive_60 v4
du_reflexive_60 ::
  T_IsDecEquivalence_44 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_60 v0 v1 v2 v3
  = coe du_reflexive_40 (coe d_isEquivalence_50 (coe v0)) v1
-- Relation.Binary.Structures.IsDecEquivalence._.sym
d_sym_62 ::
  T_IsDecEquivalence_44 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_62 v0 = coe d_sym_36 (coe d_isEquivalence_50 (coe v0))
-- Relation.Binary.Structures.IsDecEquivalence._.trans
d_trans_64 ::
  T_IsDecEquivalence_44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_64 v0 = coe d_trans_38 (coe d_isEquivalence_50 (coe v0))
-- Relation.Binary.Structures.IsPreorder
d_IsPreorder_70 a0 a1 a2 a3 a4 a5 = ()
data T_IsPreorder_70
  = C_IsPreorder'46'constructor_4003 T_IsEquivalence_26
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny ->
                                      AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Structures.IsPreorder.isEquivalence
d_isEquivalence_80 :: T_IsPreorder_70 -> T_IsEquivalence_26
d_isEquivalence_80 v0
  = case coe v0 of
      C_IsPreorder'46'constructor_4003 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPreorder.reflexive
d_reflexive_82 ::
  T_IsPreorder_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_82 v0
  = case coe v0 of
      C_IsPreorder'46'constructor_4003 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPreorder.trans
d_trans_84 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_84 v0
  = case coe v0 of
      C_IsPreorder'46'constructor_4003 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPreorder.Eq.isPartialEquivalence
d_isPartialEquivalence_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_88 v6
du_isPartialEquivalence_88 ::
  T_IsPreorder_70 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_88 v0
  = coe du_isPartialEquivalence_42 (coe d_isEquivalence_80 (coe v0))
-- Relation.Binary.Structures.IsPreorder.Eq.refl
d_refl_90 :: T_IsPreorder_70 -> AgdaAny -> AgdaAny
d_refl_90 v0 = coe d_refl_34 (coe d_isEquivalence_80 (coe v0))
-- Relation.Binary.Structures.IsPreorder.Eq.reflexive
d_reflexive_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_92 v6
du_reflexive_92 ::
  T_IsPreorder_70 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_92 v0 v1 v2 v3
  = coe du_reflexive_40 (coe d_isEquivalence_80 (coe v0)) v1
-- Relation.Binary.Structures.IsPreorder.Eq.sym
d_sym_94 ::
  T_IsPreorder_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_94 v0 = coe d_sym_36 (coe d_isEquivalence_80 (coe v0))
-- Relation.Binary.Structures.IsPreorder.Eq.trans
d_trans_96 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_96 v0 = coe d_trans_38 (coe d_isEquivalence_80 (coe v0))
-- Relation.Binary.Structures.IsPreorder.refl
d_refl_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> T_IsPreorder_70 -> AgdaAny -> AgdaAny
d_refl_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_refl_98 v6 v7
du_refl_98 :: T_IsPreorder_70 -> AgdaAny -> AgdaAny
du_refl_98 v0 v1
  = coe
      d_reflexive_82 v0 v1 v1
      (coe d_refl_34 (d_isEquivalence_80 (coe v0)) v1)
-- Relation.Binary.Structures.IsPreorder.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                    v8 v9 v10 v11
  = du_'8818''45'resp'737''45''8776'_100 v6 v7 v8 v9 v10 v11
du_'8818''45'resp'737''45''8776'_100 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_100 v0 v1 v2 v3 v4 v5
  = coe
      d_trans_84 v0 v3 v2 v1
      (coe
         d_reflexive_82 v0 v3 v2
         (coe d_sym_36 (d_isEquivalence_80 (coe v0)) v2 v3 v4))
      v5
-- Relation.Binary.Structures.IsPreorder.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                    v8 v9 v10 v11
  = du_'8818''45'resp'691''45''8776'_106 v6 v7 v8 v9 v10 v11
du_'8818''45'resp'691''45''8776'_106 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_106 v0 v1 v2 v3 v4 v5
  = coe d_trans_84 v0 v1 v2 v3 v5 (coe d_reflexive_82 v0 v2 v3 v4)
-- Relation.Binary.Structures.IsPreorder.≲-resp-≈
d_'8818''45'resp'45''8776'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'45''8776'_112 v6
du_'8818''45'resp'45''8776'_112 ::
  T_IsPreorder_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_112 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8818''45'resp'691''45''8776'_106 (coe v0))
      (coe du_'8818''45'resp'737''45''8776'_100 (coe v0))
-- Relation.Binary.Structures.IsPreorder.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_114 v6
du_'8764''45'resp'737''45''8776'_114 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_114 v0
  = coe du_'8818''45'resp'737''45''8776'_100 (coe v0)
-- Relation.Binary.Structures.IsPreorder.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_116 v6
du_'8764''45'resp'691''45''8776'_116 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_116 v0
  = coe du_'8818''45'resp'691''45''8776'_106 (coe v0)
-- Relation.Binary.Structures.IsPreorder.∼-resp-≈
d_'8764''45'resp'45''8776'_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_118 v6
du_'8764''45'resp'45''8776'_118 ::
  T_IsPreorder_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_118 v0
  = coe du_'8818''45'resp'45''8776'_112 (coe v0)
-- Relation.Binary.Structures.IsTotalPreorder
d_IsTotalPreorder_124 a0 a1 a2 a3 a4 a5 = ()
data T_IsTotalPreorder_124
  = C_IsTotalPreorder'46'constructor_8325 T_IsPreorder_70
                                          (AgdaAny ->
                                           AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Relation.Binary.Structures.IsTotalPreorder.isPreorder
d_isPreorder_132 :: T_IsTotalPreorder_124 -> T_IsPreorder_70
d_isPreorder_132 v0
  = case coe v0 of
      C_IsTotalPreorder'46'constructor_8325 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsTotalPreorder.total
d_total_134 ::
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_134 v0
  = case coe v0 of
      C_IsTotalPreorder'46'constructor_8325 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsTotalPreorder._.isEquivalence
d_isEquivalence_138 :: T_IsTotalPreorder_124 -> T_IsEquivalence_26
d_isEquivalence_138 v0
  = coe d_isEquivalence_80 (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.refl
d_refl_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_124 -> AgdaAny -> AgdaAny
d_refl_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_140 v6
du_refl_140 :: T_IsTotalPreorder_124 -> AgdaAny -> AgdaAny
du_refl_140 v0 = coe du_refl_98 (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.reflexive
d_reflexive_142 ::
  T_IsTotalPreorder_124 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_142 v0
  = coe d_reflexive_82 (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.trans
d_trans_144 ::
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_144 v0 = coe d_trans_84 (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.∼-resp-≈
d_'8764''45'resp'45''8776'_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_146 v6
du_'8764''45'resp'45''8776'_146 ::
  T_IsTotalPreorder_124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_146 v0
  = coe
      du_'8764''45'resp'45''8776'_118 (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_148 v6
du_'8764''45'resp'691''45''8776'_148 ::
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_148 v0
  = coe
      du_'8764''45'resp'691''45''8776'_116
      (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_150 v6
du_'8764''45'resp'737''45''8776'_150 ::
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_150 v0
  = coe
      du_'8764''45'resp'737''45''8776'_114
      (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.≲-resp-≈
d_'8818''45'resp'45''8776'_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'45''8776'_152 v6
du_'8818''45'resp'45''8776'_152 ::
  T_IsTotalPreorder_124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_152 v0
  = coe
      du_'8818''45'resp'45''8776'_112 (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'691''45''8776'_154 v6
du_'8818''45'resp'691''45''8776'_154 ::
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_154 v0
  = coe
      du_'8818''45'resp'691''45''8776'_106
      (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'737''45''8776'_156 v6
du_'8818''45'resp'737''45''8776'_156 ::
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_156 v0
  = coe
      du_'8818''45'resp'737''45''8776'_100
      (coe d_isPreorder_132 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.isPartialEquivalence
d_isPartialEquivalence_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_124 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_160 v6
du_isPartialEquivalence_160 ::
  T_IsTotalPreorder_124 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_160 v0
  = let v1 = d_isPreorder_132 (coe v0) in
    coe
      (coe du_isPartialEquivalence_42 (coe d_isEquivalence_80 (coe v1)))
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.refl
d_refl_162 :: T_IsTotalPreorder_124 -> AgdaAny -> AgdaAny
d_refl_162 v0
  = coe
      d_refl_34 (coe d_isEquivalence_80 (coe d_isPreorder_132 (coe v0)))
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.reflexive
d_reflexive_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_124 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_164 v6
du_reflexive_164 ::
  T_IsTotalPreorder_124 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_164 v0
  = let v1 = d_isPreorder_132 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe du_reflexive_40 (coe d_isEquivalence_80 (coe v1)) v2)
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.sym
d_sym_166 ::
  T_IsTotalPreorder_124 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_166 v0
  = coe
      d_sym_36 (coe d_isEquivalence_80 (coe d_isPreorder_132 (coe v0)))
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.trans
d_trans_168 ::
  T_IsTotalPreorder_124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_168 v0
  = coe
      d_trans_38 (coe d_isEquivalence_80 (coe d_isPreorder_132 (coe v0)))
-- Relation.Binary.Structures.IsDecPreorder
d_IsDecPreorder_174 a0 a1 a2 a3 a4 a5 = ()
data T_IsDecPreorder_174
  = C_IsDecPreorder'46'constructor_10151 T_IsPreorder_70
                                         (AgdaAny ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                         (AgdaAny ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Relation.Binary.Structures.IsDecPreorder.isPreorder
d_isPreorder_184 :: T_IsDecPreorder_174 -> T_IsPreorder_70
d_isPreorder_184 v0
  = case coe v0 of
      C_IsDecPreorder'46'constructor_10151 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecPreorder._≟_
d__'8799'__186 ::
  T_IsDecPreorder_174 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__186 v0
  = case coe v0 of
      C_IsDecPreorder'46'constructor_10151 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecPreorder._≲?_
d__'8818''63'__188 ::
  T_IsDecPreorder_174 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8818''63'__188 v0
  = case coe v0 of
      C_IsDecPreorder'46'constructor_10151 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecPreorder._.isEquivalence
d_isEquivalence_192 :: T_IsDecPreorder_174 -> T_IsEquivalence_26
d_isEquivalence_192 v0
  = coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder._.refl
d_refl_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 -> AgdaAny -> AgdaAny
d_refl_194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_194 v6
du_refl_194 :: T_IsDecPreorder_174 -> AgdaAny -> AgdaAny
du_refl_194 v0 = coe du_refl_98 (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder._.reflexive
d_reflexive_196 ::
  T_IsDecPreorder_174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_196 v0
  = coe d_reflexive_82 (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder._.trans
d_trans_198 ::
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_198 v0 = coe d_trans_84 (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder._.∼-resp-≈
d_'8764''45'resp'45''8776'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_200 v6
du_'8764''45'resp'45''8776'_200 ::
  T_IsDecPreorder_174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_200 v0
  = coe
      du_'8764''45'resp'45''8776'_118 (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_202 v6
du_'8764''45'resp'691''45''8776'_202 ::
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_202 v0
  = coe
      du_'8764''45'resp'691''45''8776'_116
      (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_204 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_204 v6
du_'8764''45'resp'737''45''8776'_204 ::
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_204 v0
  = coe
      du_'8764''45'resp'737''45''8776'_114
      (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder._.≲-resp-≈
d_'8818''45'resp'45''8776'_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'45''8776'_206 v6
du_'8818''45'resp'45''8776'_206 ::
  T_IsDecPreorder_174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_206 v0
  = coe
      du_'8818''45'resp'45''8776'_112 (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'691''45''8776'_208 v6
du_'8818''45'resp'691''45''8776'_208 ::
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_208 v0
  = coe
      du_'8818''45'resp'691''45''8776'_106
      (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'737''45''8776'_210 v6
du_'8818''45'resp'737''45''8776'_210 ::
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_210 v0
  = coe
      du_'8818''45'resp'737''45''8776'_100
      (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder.Eq.isDecEquivalence
d_isDecEquivalence_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 -> T_IsDecEquivalence_44
d_isDecEquivalence_214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_214 v6
du_isDecEquivalence_214 ::
  T_IsDecPreorder_174 -> T_IsDecEquivalence_44
du_isDecEquivalence_214 v0
  = coe
      C_IsDecEquivalence'46'constructor_3083
      (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v0)))
      (coe d__'8799'__186 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder.Eq._._≟_
d__'8799'__218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__218 v6
du__'8799'__218 ::
  T_IsDecPreorder_174 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__218 v0 = coe d__'8799'__186 (coe v0)
-- Relation.Binary.Structures.IsDecPreorder.Eq._.isEquivalence
d_isEquivalence_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 -> T_IsEquivalence_26
d_isEquivalence_220 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_220 v6
du_isEquivalence_220 :: T_IsDecPreorder_174 -> T_IsEquivalence_26
du_isEquivalence_220 v0
  = coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v0))
-- Relation.Binary.Structures.IsDecPreorder.Eq._.isPartialEquivalence
d_isPartialEquivalence_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_222 v6
du_isPartialEquivalence_222 ::
  T_IsDecPreorder_174 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_222 v0
  = let v1 = coe du_isDecEquivalence_214 (coe v0) in
    coe
      (coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v1)))
-- Relation.Binary.Structures.IsDecPreorder.Eq._.refl
d_refl_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 -> AgdaAny -> AgdaAny
d_refl_224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_224 v6
du_refl_224 :: T_IsDecPreorder_174 -> AgdaAny -> AgdaAny
du_refl_224 v0
  = coe
      d_refl_34 (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v0)))
-- Relation.Binary.Structures.IsDecPreorder.Eq._.reflexive
d_reflexive_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_226 v6
du_reflexive_226 ::
  T_IsDecPreorder_174 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_226 v0
  = let v1 = coe du_isDecEquivalence_214 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe du_reflexive_40 (coe d_isEquivalence_50 (coe v1)) v2)
-- Relation.Binary.Structures.IsDecPreorder.Eq._.sym
d_sym_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_228 v6
du_sym_228 ::
  T_IsDecPreorder_174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_228 v0
  = coe
      d_sym_36 (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v0)))
-- Relation.Binary.Structures.IsDecPreorder.Eq._.trans
d_trans_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_230 v6
du_trans_230 ::
  T_IsDecPreorder_174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_230 v0
  = coe
      d_trans_38 (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v0)))
-- Relation.Binary.Structures.IsPartialOrder
d_IsPartialOrder_236 a0 a1 a2 a3 a4 a5 = ()
data T_IsPartialOrder_236
  = C_IsPartialOrder'46'constructor_11935 T_IsPreorder_70
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Structures.IsPartialOrder.isPreorder
d_isPreorder_244 :: T_IsPartialOrder_236 -> T_IsPreorder_70
d_isPreorder_244 v0
  = case coe v0 of
      C_IsPartialOrder'46'constructor_11935 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPartialOrder.antisym
d_antisym_246 ::
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_246 v0
  = case coe v0 of
      C_IsPartialOrder'46'constructor_11935 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPartialOrder._.isEquivalence
d_isEquivalence_250 :: T_IsPartialOrder_236 -> T_IsEquivalence_26
d_isEquivalence_250 v0
  = coe d_isEquivalence_80 (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.refl
d_refl_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_236 -> AgdaAny -> AgdaAny
d_refl_252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_252 v6
du_refl_252 :: T_IsPartialOrder_236 -> AgdaAny -> AgdaAny
du_refl_252 v0 = coe du_refl_98 (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.reflexive
d_reflexive_254 ::
  T_IsPartialOrder_236 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_254 v0
  = coe d_reflexive_82 (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.trans
d_trans_256 ::
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_256 v0 = coe d_trans_84 (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_236 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_258 v6
du_'8764''45'resp'45''8776'_258 ::
  T_IsPartialOrder_236 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_258 v0
  = coe
      du_'8764''45'resp'45''8776'_118 (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_260 v6
du_'8764''45'resp'691''45''8776'_260 ::
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_260 v0
  = coe
      du_'8764''45'resp'691''45''8776'_116
      (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_262 v6
du_'8764''45'resp'737''45''8776'_262 ::
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_262 v0
  = coe
      du_'8764''45'resp'737''45''8776'_114
      (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.≲-resp-≈
d_'8818''45'resp'45''8776'_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_236 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'45''8776'_264 v6
du_'8818''45'resp'45''8776'_264 ::
  T_IsPartialOrder_236 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_264 v0
  = coe
      du_'8818''45'resp'45''8776'_112 (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'691''45''8776'_266 v6
du_'8818''45'resp'691''45''8776'_266 ::
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_266 v0
  = coe
      du_'8818''45'resp'691''45''8776'_106
      (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'737''45''8776'_268 v6
du_'8818''45'resp'737''45''8776'_268 ::
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_268 v0
  = coe
      du_'8818''45'resp'737''45''8776'_100
      (coe d_isPreorder_244 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_236 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_272 v6
du_isPartialEquivalence_272 ::
  T_IsPartialOrder_236 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_272 v0
  = let v1 = d_isPreorder_244 (coe v0) in
    coe
      (coe du_isPartialEquivalence_42 (coe d_isEquivalence_80 (coe v1)))
-- Relation.Binary.Structures.IsPartialOrder._.Eq.refl
d_refl_274 :: T_IsPartialOrder_236 -> AgdaAny -> AgdaAny
d_refl_274 v0
  = coe
      d_refl_34 (coe d_isEquivalence_80 (coe d_isPreorder_244 (coe v0)))
-- Relation.Binary.Structures.IsPartialOrder._.Eq.reflexive
d_reflexive_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_236 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_276 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_276 v6
du_reflexive_276 ::
  T_IsPartialOrder_236 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_276 v0
  = let v1 = d_isPreorder_244 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe du_reflexive_40 (coe d_isEquivalence_80 (coe v1)) v2)
-- Relation.Binary.Structures.IsPartialOrder._.Eq.sym
d_sym_278 ::
  T_IsPartialOrder_236 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_278 v0
  = coe
      d_sym_36 (coe d_isEquivalence_80 (coe d_isPreorder_244 (coe v0)))
-- Relation.Binary.Structures.IsPartialOrder._.Eq.trans
d_trans_280 ::
  T_IsPartialOrder_236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_280 v0
  = coe
      d_trans_38 (coe d_isEquivalence_80 (coe d_isPreorder_244 (coe v0)))
-- Relation.Binary.Structures.IsDecPartialOrder
d_IsDecPartialOrder_286 a0 a1 a2 a3 a4 a5 = ()
data T_IsDecPartialOrder_286
  = C_IsDecPartialOrder'46'constructor_13765 T_IsPartialOrder_236
                                             (AgdaAny ->
                                              AgdaAny ->
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                             (AgdaAny ->
                                              AgdaAny ->
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Relation.Binary.Structures.IsDecPartialOrder.isPartialOrder
d_isPartialOrder_296 ::
  T_IsDecPartialOrder_286 -> T_IsPartialOrder_236
d_isPartialOrder_296 v0
  = case coe v0 of
      C_IsDecPartialOrder'46'constructor_13765 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecPartialOrder._≟_
d__'8799'__298 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__298 v0
  = case coe v0 of
      C_IsDecPartialOrder'46'constructor_13765 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecPartialOrder._≤?_
d__'8804''63'__300 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__300 v0
  = case coe v0 of
      C_IsDecPartialOrder'46'constructor_13765 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecPartialOrder._.antisym
d_antisym_304 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_304 v0
  = coe d_antisym_246 (coe d_isPartialOrder_296 (coe v0))
-- Relation.Binary.Structures.IsDecPartialOrder._.isEquivalence
d_isEquivalence_306 ::
  T_IsDecPartialOrder_286 -> T_IsEquivalence_26
d_isEquivalence_306 v0
  = coe
      d_isEquivalence_80
      (coe d_isPreorder_244 (coe d_isPartialOrder_296 (coe v0)))
-- Relation.Binary.Structures.IsDecPartialOrder._.isPreorder
d_isPreorder_308 :: T_IsDecPartialOrder_286 -> T_IsPreorder_70
d_isPreorder_308 v0
  = coe d_isPreorder_244 (coe d_isPartialOrder_296 (coe v0))
-- Relation.Binary.Structures.IsDecPartialOrder._.refl
d_refl_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 -> AgdaAny -> AgdaAny
d_refl_310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_310 v6
du_refl_310 :: T_IsDecPartialOrder_286 -> AgdaAny -> AgdaAny
du_refl_310 v0
  = let v1 = d_isPartialOrder_296 (coe v0) in
    coe (coe du_refl_98 (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsDecPartialOrder._.reflexive
d_reflexive_312 ::
  T_IsDecPartialOrder_286 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_312 v0
  = coe
      d_reflexive_82
      (coe d_isPreorder_244 (coe d_isPartialOrder_296 (coe v0)))
-- Relation.Binary.Structures.IsDecPartialOrder._.trans
d_trans_314 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_314 v0
  = coe
      d_trans_84
      (coe d_isPreorder_244 (coe d_isPartialOrder_296 (coe v0)))
-- Relation.Binary.Structures.IsDecPartialOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_316 v6
du_'8764''45'resp'45''8776'_316 ::
  T_IsDecPartialOrder_286 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_316 v0
  = let v1 = d_isPartialOrder_296 (coe v0) in
    coe
      (coe
         du_'8764''45'resp'45''8776'_118 (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsDecPartialOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_318 v6
du_'8764''45'resp'691''45''8776'_318 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_318 v0
  = let v1 = d_isPartialOrder_296 (coe v0) in
    coe
      (coe
         du_'8764''45'resp'691''45''8776'_116
         (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsDecPartialOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_320 v6
du_'8764''45'resp'737''45''8776'_320 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_320 v0
  = let v1 = d_isPartialOrder_296 (coe v0) in
    coe
      (coe
         du_'8764''45'resp'737''45''8776'_114
         (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsDecPartialOrder._.≲-resp-≈
d_'8818''45'resp'45''8776'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'45''8776'_322 v6
du_'8818''45'resp'45''8776'_322 ::
  T_IsDecPartialOrder_286 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_322 v0
  = let v1 = d_isPartialOrder_296 (coe v0) in
    coe
      (coe
         du_'8818''45'resp'45''8776'_112 (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsDecPartialOrder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'691''45''8776'_324 v6
du_'8818''45'resp'691''45''8776'_324 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_324 v0
  = let v1 = d_isPartialOrder_296 (coe v0) in
    coe
      (coe
         du_'8818''45'resp'691''45''8776'_106
         (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsDecPartialOrder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'737''45''8776'_326 v6
du_'8818''45'resp'737''45''8776'_326 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_326 v0
  = let v1 = d_isPartialOrder_296 (coe v0) in
    coe
      (coe
         du_'8818''45'resp'737''45''8776'_100
         (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsDecPartialOrder.isDecPreorder
d_isDecPreorder_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 -> T_IsDecPreorder_174
d_isDecPreorder_328 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecPreorder_328 v6
du_isDecPreorder_328 ::
  T_IsDecPartialOrder_286 -> T_IsDecPreorder_174
du_isDecPreorder_328 v0
  = coe
      C_IsDecPreorder'46'constructor_10151
      (coe d_isPreorder_244 (coe d_isPartialOrder_296 (coe v0)))
      (coe d__'8799'__298 (coe v0)) (coe d__'8804''63'__300 (coe v0))
-- Relation.Binary.Structures.IsDecPartialOrder._.Eq._≟_
d__'8799'__334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__334 v6
du__'8799'__334 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__334 v0
  = let v1 = coe du_isDecPreorder_328 (coe v0) in
    coe (coe d__'8799'__186 (coe v1))
-- Relation.Binary.Structures.IsDecPartialOrder._.Eq.isDecEquivalence
d_isDecEquivalence_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 -> T_IsDecEquivalence_44
d_isDecEquivalence_336 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_336 v6
du_isDecEquivalence_336 ::
  T_IsDecPartialOrder_286 -> T_IsDecEquivalence_44
du_isDecEquivalence_336 v0
  = coe du_isDecEquivalence_214 (coe du_isDecPreorder_328 (coe v0))
-- Relation.Binary.Structures.IsDecPartialOrder._.Eq.isEquivalence
d_isEquivalence_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 -> T_IsEquivalence_26
d_isEquivalence_338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_338 v6
du_isEquivalence_338 ::
  T_IsDecPartialOrder_286 -> T_IsEquivalence_26
du_isEquivalence_338 v0
  = let v1 = coe du_isDecPreorder_328 (coe v0) in
    coe (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v1)))
-- Relation.Binary.Structures.IsDecPartialOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_340 v6
du_isPartialEquivalence_340 ::
  T_IsDecPartialOrder_286 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_340 v0
  = let v1 = coe du_isDecPreorder_328 (coe v0) in
    coe
      (let v2 = coe du_isDecEquivalence_214 (coe v1) in
       coe
         (coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v2))))
-- Relation.Binary.Structures.IsDecPartialOrder._.Eq.refl
d_refl_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 -> AgdaAny -> AgdaAny
d_refl_342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_342 v6
du_refl_342 :: T_IsDecPartialOrder_286 -> AgdaAny -> AgdaAny
du_refl_342 v0
  = let v1 = coe du_isDecPreorder_328 (coe v0) in
    coe
      (coe
         d_refl_34 (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v1))))
-- Relation.Binary.Structures.IsDecPartialOrder._.Eq.reflexive
d_reflexive_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_344 v6
du_reflexive_344 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_344 v0
  = let v1 = coe du_isDecPreorder_328 (coe v0) in
    coe
      (let v2 = coe du_isDecEquivalence_214 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe du_reflexive_40 (coe d_isEquivalence_50 (coe v2)) v3))
-- Relation.Binary.Structures.IsDecPartialOrder._.Eq.sym
d_sym_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_346 v6
du_sym_346 ::
  T_IsDecPartialOrder_286 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_346 v0
  = let v1 = coe du_isDecPreorder_328 (coe v0) in
    coe
      (coe
         d_sym_36 (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v1))))
-- Relation.Binary.Structures.IsDecPartialOrder._.Eq.trans
d_trans_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_348 v6
du_trans_348 ::
  T_IsDecPartialOrder_286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_348 v0
  = let v1 = coe du_isDecPreorder_328 (coe v0) in
    coe
      (coe
         d_trans_38
         (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v1))))
-- Relation.Binary.Structures.IsStrictPartialOrder
d_IsStrictPartialOrder_354 a0 a1 a2 a3 a4 a5 = ()
data T_IsStrictPartialOrder_354
  = C_IsStrictPartialOrder'46'constructor_16311 T_IsEquivalence_26
                                                (AgdaAny ->
                                                 AgdaAny ->
                                                 AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Relation.Binary.Structures.IsStrictPartialOrder.isEquivalence
d_isEquivalence_366 ::
  T_IsStrictPartialOrder_354 -> T_IsEquivalence_26
d_isEquivalence_366 v0
  = case coe v0 of
      C_IsStrictPartialOrder'46'constructor_16311 v1 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictPartialOrder.irrefl
d_irrefl_368 ::
  T_IsStrictPartialOrder_354 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_368 = erased
-- Relation.Binary.Structures.IsStrictPartialOrder.trans
d_trans_370 ::
  T_IsStrictPartialOrder_354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_370 v0
  = case coe v0 of
      C_IsStrictPartialOrder'46'constructor_16311 v1 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictPartialOrder.<-resp-≈
d_'60''45'resp'45''8776'_372 ::
  T_IsStrictPartialOrder_354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_372 v0
  = case coe v0 of
      C_IsStrictPartialOrder'46'constructor_16311 v1 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.isPartialEquivalence
d_isPartialEquivalence_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_354 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_376 v6
du_isPartialEquivalence_376 ::
  T_IsStrictPartialOrder_354 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_376 v0
  = coe du_isPartialEquivalence_42 (coe d_isEquivalence_366 (coe v0))
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.refl
d_refl_378 :: T_IsStrictPartialOrder_354 -> AgdaAny -> AgdaAny
d_refl_378 v0 = coe d_refl_34 (coe d_isEquivalence_366 (coe v0))
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.reflexive
d_reflexive_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_380 v6
du_reflexive_380 ::
  T_IsStrictPartialOrder_354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_380 v0 v1 v2 v3
  = coe du_reflexive_40 (coe d_isEquivalence_366 (coe v0)) v1
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.sym
d_sym_382 ::
  T_IsStrictPartialOrder_354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_382 v0 = coe d_sym_36 (coe d_isEquivalence_366 (coe v0))
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.trans
d_trans_384 ::
  T_IsStrictPartialOrder_354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_384 v0 = coe d_trans_38 (coe d_isEquivalence_366 (coe v0))
-- Relation.Binary.Structures.IsStrictPartialOrder.asym
d_asym_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_354 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_386 = erased
-- Relation.Binary.Structures.IsStrictPartialOrder.<-respʳ-≈
d_'60''45'resp'691''45''8776'_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                  v9
  = du_'60''45'resp'691''45''8776'_392 v6 v7 v8 v9
du_'60''45'resp'691''45''8776'_392 ::
  T_IsStrictPartialOrder_354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_392 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (d_'60''45'resp'45''8776'_372 (coe v0)) v1 v2 v3
-- Relation.Binary.Structures.IsStrictPartialOrder.<-respˡ-≈
d_'60''45'resp'737''45''8776'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_394 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                  v9
  = du_'60''45'resp'737''45''8776'_394 v6 v7 v8 v9
du_'60''45'resp'737''45''8776'_394 ::
  T_IsStrictPartialOrder_354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_394 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (d_'60''45'resp'45''8776'_372 (coe v0)) v1 v2 v3
-- Relation.Binary.Structures.IsDecStrictPartialOrder
d_IsDecStrictPartialOrder_400 a0 a1 a2 a3 a4 a5 = ()
data T_IsDecStrictPartialOrder_400
  = C_IsDecStrictPartialOrder'46'constructor_20929 T_IsStrictPartialOrder_354
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Relation.Binary.Structures.IsDecStrictPartialOrder.isStrictPartialOrder
d_isStrictPartialOrder_410 ::
  T_IsDecStrictPartialOrder_400 -> T_IsStrictPartialOrder_354
d_isStrictPartialOrder_410 v0
  = case coe v0 of
      C_IsDecStrictPartialOrder'46'constructor_20929 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecStrictPartialOrder._≟_
d__'8799'__412 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__412 v0
  = case coe v0 of
      C_IsDecStrictPartialOrder'46'constructor_20929 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecStrictPartialOrder._<?_
d__'60''63'__414 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__414 v0
  = case coe v0 of
      C_IsDecStrictPartialOrder'46'constructor_20929 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.<-resp-≈
d_'60''45'resp'45''8776'_418 ::
  T_IsDecStrictPartialOrder_400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_418 v0
  = coe
      d_'60''45'resp'45''8776'_372
      (coe d_isStrictPartialOrder_410 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.<-respʳ-≈
d_'60''45'resp'691''45''8776'_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_420 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'691''45''8776'_420 v6
du_'60''45'resp'691''45''8776'_420 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_420 v0
  = coe
      du_'60''45'resp'691''45''8776'_392
      (coe d_isStrictPartialOrder_410 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.<-respˡ-≈
d_'60''45'resp'737''45''8776'_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'737''45''8776'_422 v6
du_'60''45'resp'737''45''8776'_422 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_422 v0
  = coe
      du_'60''45'resp'737''45''8776'_394
      (coe d_isStrictPartialOrder_410 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.asym
d_asym_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_424 = erased
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.irrefl
d_irrefl_426 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_426 = erased
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.isEquivalence
d_isEquivalence_428 ::
  T_IsDecStrictPartialOrder_400 -> T_IsEquivalence_26
d_isEquivalence_428 v0
  = coe d_isEquivalence_366 (coe d_isStrictPartialOrder_410 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.trans
d_trans_430 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_430 v0
  = coe d_trans_370 (coe d_isStrictPartialOrder_410 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.isPartialEquivalence
d_isPartialEquivalence_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_434 v6
du_isPartialEquivalence_434 ::
  T_IsDecStrictPartialOrder_400 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_434 v0
  = let v1 = d_isStrictPartialOrder_410 (coe v0) in
    coe
      (coe du_isPartialEquivalence_42 (coe d_isEquivalence_366 (coe v1)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.refl
d_refl_436 :: T_IsDecStrictPartialOrder_400 -> AgdaAny -> AgdaAny
d_refl_436 v0
  = coe
      d_refl_34
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_410 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.reflexive
d_reflexive_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_438 v6
du_reflexive_438 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_438 v0
  = let v1 = d_isStrictPartialOrder_410 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe du_reflexive_40 (coe d_isEquivalence_366 (coe v1)) v2)
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.sym
d_sym_440 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_440 v0
  = coe
      d_sym_36
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_410 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.trans
d_trans_442 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_442 v0
  = coe
      d_trans_38
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_410 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq.isDecEquivalence
d_isDecEquivalence_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 -> T_IsDecEquivalence_44
d_isDecEquivalence_446 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_446 v6
du_isDecEquivalence_446 ::
  T_IsDecStrictPartialOrder_400 -> T_IsDecEquivalence_44
du_isDecEquivalence_446 v0
  = coe
      C_IsDecEquivalence'46'constructor_3083
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_410 (coe v0)))
      (coe d__'8799'__412 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._._≟_
d__'8799'__450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__450 v6
du__'8799'__450 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__450 v0 = coe d__'8799'__412 (coe v0)
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.isEquivalence
d_isEquivalence_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 -> T_IsEquivalence_26
d_isEquivalence_452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_452 v6
du_isEquivalence_452 ::
  T_IsDecStrictPartialOrder_400 -> T_IsEquivalence_26
du_isEquivalence_452 v0
  = coe d_isEquivalence_366 (coe d_isStrictPartialOrder_410 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.isPartialEquivalence
d_isPartialEquivalence_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_454 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_454 v6
du_isPartialEquivalence_454 ::
  T_IsDecStrictPartialOrder_400 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_454 v0
  = let v1 = coe du_isDecEquivalence_446 (coe v0) in
    coe
      (coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v1)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.refl
d_refl_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 -> AgdaAny -> AgdaAny
d_refl_456 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_456 v6
du_refl_456 :: T_IsDecStrictPartialOrder_400 -> AgdaAny -> AgdaAny
du_refl_456 v0
  = coe
      d_refl_34
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_410 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.reflexive
d_reflexive_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_458 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_458 v6
du_reflexive_458 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_458 v0
  = let v1 = coe du_isDecEquivalence_446 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe du_reflexive_40 (coe d_isEquivalence_50 (coe v1)) v2)
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.sym
d_sym_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_460 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_460 v6
du_sym_460 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_460 v0
  = coe
      d_sym_36
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_410 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.trans
d_trans_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_462 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_462 v6
du_trans_462 ::
  T_IsDecStrictPartialOrder_400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_462 v0
  = coe
      d_trans_38
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_410 (coe v0)))
-- Relation.Binary.Structures.IsTotalOrder
d_IsTotalOrder_468 a0 a1 a2 a3 a4 a5 = ()
data T_IsTotalOrder_468
  = C_IsTotalOrder'46'constructor_22821 T_IsPartialOrder_236
                                        (AgdaAny ->
                                         AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Relation.Binary.Structures.IsTotalOrder.isPartialOrder
d_isPartialOrder_476 :: T_IsTotalOrder_468 -> T_IsPartialOrder_236
d_isPartialOrder_476 v0
  = case coe v0 of
      C_IsTotalOrder'46'constructor_22821 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsTotalOrder.total
d_total_478 ::
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_478 v0
  = case coe v0 of
      C_IsTotalOrder'46'constructor_22821 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsTotalOrder._.antisym
d_antisym_482 ::
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_482 v0
  = coe d_antisym_246 (coe d_isPartialOrder_476 (coe v0))
-- Relation.Binary.Structures.IsTotalOrder._.isEquivalence
d_isEquivalence_484 :: T_IsTotalOrder_468 -> T_IsEquivalence_26
d_isEquivalence_484 v0
  = coe
      d_isEquivalence_80
      (coe d_isPreorder_244 (coe d_isPartialOrder_476 (coe v0)))
-- Relation.Binary.Structures.IsTotalOrder._.isPreorder
d_isPreorder_486 :: T_IsTotalOrder_468 -> T_IsPreorder_70
d_isPreorder_486 v0
  = coe d_isPreorder_244 (coe d_isPartialOrder_476 (coe v0))
-- Relation.Binary.Structures.IsTotalOrder._.refl
d_refl_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 -> AgdaAny -> AgdaAny
d_refl_488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_488 v6
du_refl_488 :: T_IsTotalOrder_468 -> AgdaAny -> AgdaAny
du_refl_488 v0
  = let v1 = d_isPartialOrder_476 (coe v0) in
    coe (coe du_refl_98 (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsTotalOrder._.reflexive
d_reflexive_490 ::
  T_IsTotalOrder_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_490 v0
  = coe
      d_reflexive_82
      (coe d_isPreorder_244 (coe d_isPartialOrder_476 (coe v0)))
-- Relation.Binary.Structures.IsTotalOrder._.trans
d_trans_492 ::
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_492 v0
  = coe
      d_trans_84
      (coe d_isPreorder_244 (coe d_isPartialOrder_476 (coe v0)))
-- Relation.Binary.Structures.IsTotalOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_494 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_494 v6
du_'8764''45'resp'45''8776'_494 ::
  T_IsTotalOrder_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_494 v0
  = let v1 = d_isPartialOrder_476 (coe v0) in
    coe
      (coe
         du_'8764''45'resp'45''8776'_118 (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsTotalOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_496 v6
du_'8764''45'resp'691''45''8776'_496 ::
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_496 v0
  = let v1 = d_isPartialOrder_476 (coe v0) in
    coe
      (coe
         du_'8764''45'resp'691''45''8776'_116
         (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsTotalOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_498 v6
du_'8764''45'resp'737''45''8776'_498 ::
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_498 v0
  = let v1 = d_isPartialOrder_476 (coe v0) in
    coe
      (coe
         du_'8764''45'resp'737''45''8776'_114
         (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsTotalOrder._.≲-resp-≈
d_'8818''45'resp'45''8776'_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'45''8776'_500 v6
du_'8818''45'resp'45''8776'_500 ::
  T_IsTotalOrder_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_500 v0
  = let v1 = d_isPartialOrder_476 (coe v0) in
    coe
      (coe
         du_'8818''45'resp'45''8776'_112 (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsTotalOrder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'691''45''8776'_502 v6
du_'8818''45'resp'691''45''8776'_502 ::
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_502 v0
  = let v1 = d_isPartialOrder_476 (coe v0) in
    coe
      (coe
         du_'8818''45'resp'691''45''8776'_106
         (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsTotalOrder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'737''45''8776'_504 v6
du_'8818''45'resp'737''45''8776'_504 ::
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_504 v0
  = let v1 = d_isPartialOrder_476 (coe v0) in
    coe
      (coe
         du_'8818''45'resp'737''45''8776'_100
         (coe d_isPreorder_244 (coe v1)))
-- Relation.Binary.Structures.IsTotalOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_508 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_508 v6
du_isPartialEquivalence_508 ::
  T_IsTotalOrder_468 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_508 v0
  = let v1 = d_isPartialOrder_476 (coe v0) in
    coe
      (let v2 = d_isPreorder_244 (coe v1) in
       coe
         (coe du_isPartialEquivalence_42 (coe d_isEquivalence_80 (coe v2))))
-- Relation.Binary.Structures.IsTotalOrder._.Eq.refl
d_refl_510 :: T_IsTotalOrder_468 -> AgdaAny -> AgdaAny
d_refl_510 v0
  = coe
      d_refl_34
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_244 (coe d_isPartialOrder_476 (coe v0))))
-- Relation.Binary.Structures.IsTotalOrder._.Eq.reflexive
d_reflexive_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_512 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_512 v6
du_reflexive_512 ::
  T_IsTotalOrder_468 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_512 v0
  = let v1 = d_isPartialOrder_476 (coe v0) in
    coe
      (let v2 = d_isPreorder_244 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe du_reflexive_40 (coe d_isEquivalence_80 (coe v2)) v3))
-- Relation.Binary.Structures.IsTotalOrder._.Eq.sym
d_sym_514 ::
  T_IsTotalOrder_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_514 v0
  = coe
      d_sym_36
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_244 (coe d_isPartialOrder_476 (coe v0))))
-- Relation.Binary.Structures.IsTotalOrder._.Eq.trans
d_trans_516 ::
  T_IsTotalOrder_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_516 v0
  = coe
      d_trans_38
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_244 (coe d_isPartialOrder_476 (coe v0))))
-- Relation.Binary.Structures.IsTotalOrder.isTotalPreorder
d_isTotalPreorder_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_468 -> T_IsTotalPreorder_124
d_isTotalPreorder_518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isTotalPreorder_518 v6
du_isTotalPreorder_518 ::
  T_IsTotalOrder_468 -> T_IsTotalPreorder_124
du_isTotalPreorder_518 v0
  = coe
      C_IsTotalPreorder'46'constructor_8325
      (coe d_isPreorder_244 (coe d_isPartialOrder_476 (coe v0)))
      (coe d_total_478 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder
d_IsDecTotalOrder_524 a0 a1 a2 a3 a4 a5 = ()
data T_IsDecTotalOrder_524
  = C_IsDecTotalOrder'46'constructor_24961 T_IsTotalOrder_468
                                           (AgdaAny ->
                                            AgdaAny ->
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                           (AgdaAny ->
                                            AgdaAny ->
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Relation.Binary.Structures.IsDecTotalOrder.isTotalOrder
d_isTotalOrder_534 :: T_IsDecTotalOrder_524 -> T_IsTotalOrder_468
d_isTotalOrder_534 v0
  = case coe v0 of
      C_IsDecTotalOrder'46'constructor_24961 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecTotalOrder._≟_
d__'8799'__536 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__536 v0
  = case coe v0 of
      C_IsDecTotalOrder'46'constructor_24961 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecTotalOrder._≤?_
d__'8804''63'__538 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__538 v0
  = case coe v0 of
      C_IsDecTotalOrder'46'constructor_24961 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecTotalOrder._.antisym
d_antisym_542 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_542 v0
  = coe
      d_antisym_246
      (coe d_isPartialOrder_476 (coe d_isTotalOrder_534 (coe v0)))
-- Relation.Binary.Structures.IsDecTotalOrder._.isEquivalence
d_isEquivalence_544 :: T_IsDecTotalOrder_524 -> T_IsEquivalence_26
d_isEquivalence_544 v0
  = coe
      d_isEquivalence_80
      (coe
         d_isPreorder_244
         (coe d_isPartialOrder_476 (coe d_isTotalOrder_534 (coe v0))))
-- Relation.Binary.Structures.IsDecTotalOrder._.isPartialOrder
d_isPartialOrder_546 ::
  T_IsDecTotalOrder_524 -> T_IsPartialOrder_236
d_isPartialOrder_546 v0
  = coe d_isPartialOrder_476 (coe d_isTotalOrder_534 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder._.isPreorder
d_isPreorder_548 :: T_IsDecTotalOrder_524 -> T_IsPreorder_70
d_isPreorder_548 v0
  = coe
      d_isPreorder_244
      (coe d_isPartialOrder_476 (coe d_isTotalOrder_534 (coe v0)))
-- Relation.Binary.Structures.IsDecTotalOrder._.isTotalPreorder
d_isTotalPreorder_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> T_IsTotalPreorder_124
d_isTotalPreorder_550 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isTotalPreorder_550 v6
du_isTotalPreorder_550 ::
  T_IsDecTotalOrder_524 -> T_IsTotalPreorder_124
du_isTotalPreorder_550 v0
  = coe du_isTotalPreorder_518 (coe d_isTotalOrder_534 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder._.refl
d_refl_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> AgdaAny -> AgdaAny
d_refl_552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_552 v6
du_refl_552 :: T_IsDecTotalOrder_524 -> AgdaAny -> AgdaAny
du_refl_552 v0
  = let v1 = d_isTotalOrder_534 (coe v0) in
    coe
      (let v2 = d_isPartialOrder_476 (coe v1) in
       coe (coe du_refl_98 (coe d_isPreorder_244 (coe v2))))
-- Relation.Binary.Structures.IsDecTotalOrder._.reflexive
d_reflexive_554 ::
  T_IsDecTotalOrder_524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_554 v0
  = coe
      d_reflexive_82
      (coe
         d_isPreorder_244
         (coe d_isPartialOrder_476 (coe d_isTotalOrder_534 (coe v0))))
-- Relation.Binary.Structures.IsDecTotalOrder._.total
d_total_556 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_556 v0 = coe d_total_478 (coe d_isTotalOrder_534 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder._.trans
d_trans_558 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_558 v0
  = coe
      d_trans_84
      (coe
         d_isPreorder_244
         (coe d_isPartialOrder_476 (coe d_isTotalOrder_534 (coe v0))))
-- Relation.Binary.Structures.IsDecTotalOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_560 v6
du_'8764''45'resp'45''8776'_560 ::
  T_IsDecTotalOrder_524 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_560 v0
  = let v1 = d_isTotalOrder_534 (coe v0) in
    coe
      (let v2 = d_isPartialOrder_476 (coe v1) in
       coe
         (coe
            du_'8764''45'resp'45''8776'_118 (coe d_isPreorder_244 (coe v2))))
-- Relation.Binary.Structures.IsDecTotalOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_562 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_562 v6
du_'8764''45'resp'691''45''8776'_562 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_562 v0
  = let v1 = d_isTotalOrder_534 (coe v0) in
    coe
      (let v2 = d_isPartialOrder_476 (coe v1) in
       coe
         (coe
            du_'8764''45'resp'691''45''8776'_116
            (coe d_isPreorder_244 (coe v2))))
-- Relation.Binary.Structures.IsDecTotalOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_564 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_564 v6
du_'8764''45'resp'737''45''8776'_564 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_564 v0
  = let v1 = d_isTotalOrder_534 (coe v0) in
    coe
      (let v2 = d_isPartialOrder_476 (coe v1) in
       coe
         (coe
            du_'8764''45'resp'737''45''8776'_114
            (coe d_isPreorder_244 (coe v2))))
-- Relation.Binary.Structures.IsDecTotalOrder._.≲-resp-≈
d_'8818''45'resp'45''8776'_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'45''8776'_566 v6
du_'8818''45'resp'45''8776'_566 ::
  T_IsDecTotalOrder_524 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_566 v0
  = let v1 = d_isTotalOrder_534 (coe v0) in
    coe
      (let v2 = d_isPartialOrder_476 (coe v1) in
       coe
         (coe
            du_'8818''45'resp'45''8776'_112 (coe d_isPreorder_244 (coe v2))))
-- Relation.Binary.Structures.IsDecTotalOrder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'691''45''8776'_568 v6
du_'8818''45'resp'691''45''8776'_568 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_568 v0
  = let v1 = d_isTotalOrder_534 (coe v0) in
    coe
      (let v2 = d_isPartialOrder_476 (coe v1) in
       coe
         (coe
            du_'8818''45'resp'691''45''8776'_106
            (coe d_isPreorder_244 (coe v2))))
-- Relation.Binary.Structures.IsDecTotalOrder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8818''45'resp'737''45''8776'_570 v6
du_'8818''45'resp'737''45''8776'_570 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_570 v0
  = let v1 = d_isTotalOrder_534 (coe v0) in
    coe
      (let v2 = d_isPartialOrder_476 (coe v1) in
       coe
         (coe
            du_'8818''45'resp'737''45''8776'_100
            (coe d_isPreorder_244 (coe v2))))
-- Relation.Binary.Structures.IsDecTotalOrder.isDecPartialOrder
d_isDecPartialOrder_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> T_IsDecPartialOrder_286
d_isDecPartialOrder_572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecPartialOrder_572 v6
du_isDecPartialOrder_572 ::
  T_IsDecTotalOrder_524 -> T_IsDecPartialOrder_286
du_isDecPartialOrder_572 v0
  = coe
      C_IsDecPartialOrder'46'constructor_13765
      (coe d_isPartialOrder_476 (coe d_isTotalOrder_534 (coe v0)))
      (coe d__'8799'__536 (coe v0)) (coe d__'8804''63'__538 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder._.isDecPreorder
d_isDecPreorder_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> T_IsDecPreorder_174
d_isDecPreorder_576 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecPreorder_576 v6
du_isDecPreorder_576 ::
  T_IsDecTotalOrder_524 -> T_IsDecPreorder_174
du_isDecPreorder_576 v0
  = coe du_isDecPreorder_328 (coe du_isDecPartialOrder_572 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder._.Eq._≟_
d__'8799'__580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__580 v6
du__'8799'__580 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__580 v0
  = let v1 = coe du_isDecPartialOrder_572 (coe v0) in
    coe
      (let v2 = coe du_isDecPreorder_328 (coe v1) in
       coe (coe d__'8799'__186 (coe v2)))
-- Relation.Binary.Structures.IsDecTotalOrder._.Eq.isDecEquivalence
d_isDecEquivalence_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> T_IsDecEquivalence_44
d_isDecEquivalence_582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_582 v6
du_isDecEquivalence_582 ::
  T_IsDecTotalOrder_524 -> T_IsDecEquivalence_44
du_isDecEquivalence_582 v0
  = let v1 = coe du_isDecPartialOrder_572 (coe v0) in
    coe
      (coe du_isDecEquivalence_214 (coe du_isDecPreorder_328 (coe v1)))
-- Relation.Binary.Structures.IsDecTotalOrder._.Eq.isEquivalence
d_isEquivalence_584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> T_IsEquivalence_26
d_isEquivalence_584 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_584 v6
du_isEquivalence_584 :: T_IsDecTotalOrder_524 -> T_IsEquivalence_26
du_isEquivalence_584 v0
  = let v1 = coe du_isDecPartialOrder_572 (coe v0) in
    coe
      (let v2 = coe du_isDecPreorder_328 (coe v1) in
       coe (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v2))))
-- Relation.Binary.Structures.IsDecTotalOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_586 v6
du_isPartialEquivalence_586 ::
  T_IsDecTotalOrder_524 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_586 v0
  = let v1 = coe du_isDecPartialOrder_572 (coe v0) in
    coe
      (let v2 = coe du_isDecPreorder_328 (coe v1) in
       coe
         (let v3 = coe du_isDecEquivalence_214 (coe v2) in
          coe
            (coe
               du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v3)))))
-- Relation.Binary.Structures.IsDecTotalOrder._.Eq.refl
d_refl_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> AgdaAny -> AgdaAny
d_refl_588 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_588 v6
du_refl_588 :: T_IsDecTotalOrder_524 -> AgdaAny -> AgdaAny
du_refl_588 v0
  = let v1 = coe du_isDecPartialOrder_572 (coe v0) in
    coe
      (let v2 = coe du_isDecPreorder_328 (coe v1) in
       coe
         (coe
            d_refl_34
            (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v2)))))
-- Relation.Binary.Structures.IsDecTotalOrder._.Eq.reflexive
d_reflexive_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_590 v6
du_reflexive_590 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_590 v0
  = let v1 = coe du_isDecPartialOrder_572 (coe v0) in
    coe
      (let v2 = coe du_isDecPreorder_328 (coe v1) in
       coe
         (let v3 = coe du_isDecEquivalence_214 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe du_reflexive_40 (coe d_isEquivalence_50 (coe v3)) v4)))
-- Relation.Binary.Structures.IsDecTotalOrder._.Eq.sym
d_sym_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_592 v6
du_sym_592 ::
  T_IsDecTotalOrder_524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_592 v0
  = let v1 = coe du_isDecPartialOrder_572 (coe v0) in
    coe
      (let v2 = coe du_isDecPreorder_328 (coe v1) in
       coe
         (coe
            d_sym_36 (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v2)))))
-- Relation.Binary.Structures.IsDecTotalOrder._.Eq.trans
d_trans_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_594 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_594 v6
du_trans_594 ::
  T_IsDecTotalOrder_524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_594 v0
  = let v1 = coe du_isDecPartialOrder_572 (coe v0) in
    coe
      (let v2 = coe du_isDecPreorder_328 (coe v1) in
       coe
         (coe
            d_trans_38
            (coe d_isEquivalence_80 (coe d_isPreorder_184 (coe v2)))))
-- Relation.Binary.Structures.IsStrictTotalOrder
d_IsStrictTotalOrder_600 a0 a1 a2 a3 a4 a5 = ()
data T_IsStrictTotalOrder_600
  = C_IsStrictTotalOrder'46'constructor_27253 T_IsStrictPartialOrder_354
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158)
-- Relation.Binary.Structures.IsStrictTotalOrder.isStrictPartialOrder
d_isStrictPartialOrder_608 ::
  T_IsStrictTotalOrder_600 -> T_IsStrictPartialOrder_354
d_isStrictPartialOrder_608 v0
  = case coe v0 of
      C_IsStrictTotalOrder'46'constructor_27253 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictTotalOrder.compare
d_compare_610 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_610 v0
  = case coe v0 of
      C_IsStrictTotalOrder'46'constructor_27253 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictTotalOrder._.<-resp-≈
d_'60''45'resp'45''8776'_614 ::
  T_IsStrictTotalOrder_600 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_614 v0
  = coe
      d_'60''45'resp'45''8776'_372
      (coe d_isStrictPartialOrder_608 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._.<-respʳ-≈
d_'60''45'resp'691''45''8776'_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'691''45''8776'_616 v6
du_'60''45'resp'691''45''8776'_616 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_616 v0
  = coe
      du_'60''45'resp'691''45''8776'_392
      (coe d_isStrictPartialOrder_608 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._.<-respˡ-≈
d_'60''45'resp'737''45''8776'_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_618 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'737''45''8776'_618 v6
du_'60''45'resp'737''45''8776'_618 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_618 v0
  = coe
      du_'60''45'resp'737''45''8776'_394
      (coe d_isStrictPartialOrder_608 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._.asym
d_asym_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_620 = erased
-- Relation.Binary.Structures.IsStrictTotalOrder._.irrefl
d_irrefl_622 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_622 = erased
-- Relation.Binary.Structures.IsStrictTotalOrder._.isEquivalence
d_isEquivalence_624 ::
  T_IsStrictTotalOrder_600 -> T_IsEquivalence_26
d_isEquivalence_624 v0
  = coe d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._.trans
d_trans_626 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_626 v0
  = coe d_trans_370 (coe d_isStrictPartialOrder_608 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._≟_
d__'8799'__628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__628 v6
du__'8799'__628 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__628 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_tri'8658'dec'8776'_492
      (coe d_compare_610 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._<?_
d__'60''63'__630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'60''63'__630 v6
du__'60''63'__630 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__630 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_tri'8658'dec'60'_528
      (coe d_compare_610 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder.isDecStrictPartialOrder
d_isDecStrictPartialOrder_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 -> T_IsDecStrictPartialOrder_400
d_isDecStrictPartialOrder_632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecStrictPartialOrder_632 v6
du_isDecStrictPartialOrder_632 ::
  T_IsStrictTotalOrder_600 -> T_IsDecStrictPartialOrder_400
du_isDecStrictPartialOrder_632 v0
  = coe
      C_IsDecStrictPartialOrder'46'constructor_20929
      (coe d_isStrictPartialOrder_608 (coe v0))
      (coe du__'8799'__628 (coe v0)) (coe du__'60''63'__630 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq.isDecEquivalence
d_isDecEquivalence_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 -> T_IsDecEquivalence_44
d_isDecEquivalence_636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_636 v6
du_isDecEquivalence_636 ::
  T_IsStrictTotalOrder_600 -> T_IsDecEquivalence_44
du_isDecEquivalence_636 v0
  = coe
      C_IsDecEquivalence'46'constructor_3083
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v0)))
      (coe du__'8799'__628 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq._._≟_
d__'8799'__640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__640 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__640 v6
du__'8799'__640 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__640 v0 = coe du__'8799'__628 (coe v0)
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq._.isEquivalence
d_isEquivalence_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 -> T_IsEquivalence_26
d_isEquivalence_642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_642 v6
du_isEquivalence_642 ::
  T_IsStrictTotalOrder_600 -> T_IsEquivalence_26
du_isEquivalence_642 v0
  = coe d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq._.isPartialEquivalence
d_isPartialEquivalence_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_644 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_644 v6
du_isPartialEquivalence_644 ::
  T_IsStrictTotalOrder_600 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_644 v0
  = let v1 = coe du_isDecEquivalence_636 (coe v0) in
    coe
      (coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v1)))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq._.refl
d_refl_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 -> AgdaAny -> AgdaAny
d_refl_646 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_646 v6
du_refl_646 :: T_IsStrictTotalOrder_600 -> AgdaAny -> AgdaAny
du_refl_646 v0
  = coe
      d_refl_34
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v0)))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq._.reflexive
d_reflexive_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_648 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_648 v6
du_reflexive_648 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_648 v0
  = let v1 = coe du_isDecEquivalence_636 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe du_reflexive_40 (coe d_isEquivalence_50 (coe v1)) v2)
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq._.sym
d_sym_650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_650 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_650 v6
du_sym_650 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_650 v0
  = coe
      d_sym_36
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v0)))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq._.trans
d_trans_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_652 v6
du_trans_652 ::
  T_IsStrictTotalOrder_600 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_652 v0
  = coe
      d_trans_38
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v0)))
-- Relation.Binary.Structures.IsStrictTotalOrder.isDecEquivalence
d_isDecEquivalence_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_600 -> T_IsDecEquivalence_44
d_isDecEquivalence_654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_654 v6
du_isDecEquivalence_654 ::
  T_IsStrictTotalOrder_600 -> T_IsDecEquivalence_44
du_isDecEquivalence_654 v0
  = coe
      C_IsDecEquivalence'46'constructor_3083
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v0)))
      (coe du__'8799'__628 (coe v0))
-- Relation.Binary.Structures.IsDenseLinearOrder
d_IsDenseLinearOrder_660 a0 a1 a2 a3 a4 a5 = ()
data T_IsDenseLinearOrder_660
  = C_IsDenseLinearOrder'46'constructor_30431 T_IsStrictTotalOrder_600
                                              (AgdaAny ->
                                               AgdaAny ->
                                               AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Relation.Binary.Structures.IsDenseLinearOrder.isStrictTotalOrder
d_isStrictTotalOrder_668 ::
  T_IsDenseLinearOrder_660 -> T_IsStrictTotalOrder_600
d_isStrictTotalOrder_668 v0
  = case coe v0 of
      C_IsDenseLinearOrder'46'constructor_30431 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDenseLinearOrder.dense
d_dense_670 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dense_670 v0
  = case coe v0 of
      C_IsDenseLinearOrder'46'constructor_30431 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDenseLinearOrder._._<?_
d__'60''63'__674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'60''63'__674 v6
du__'60''63'__674 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__674 v0
  = coe du__'60''63'__630 (coe d_isStrictTotalOrder_668 (coe v0))
-- Relation.Binary.Structures.IsDenseLinearOrder._._≟_
d__'8799'__676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__676 v6
du__'8799'__676 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__676 v0
  = coe du__'8799'__628 (coe d_isStrictTotalOrder_668 (coe v0))
-- Relation.Binary.Structures.IsDenseLinearOrder._.<-resp-≈
d_'60''45'resp'45''8776'_678 ::
  T_IsDenseLinearOrder_660 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_678 v0
  = coe
      d_'60''45'resp'45''8776'_372
      (coe
         d_isStrictPartialOrder_608 (coe d_isStrictTotalOrder_668 (coe v0)))
-- Relation.Binary.Structures.IsDenseLinearOrder._.<-respʳ-≈
d_'60''45'resp'691''45''8776'_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'691''45''8776'_680 v6
du_'60''45'resp'691''45''8776'_680 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_680 v0
  = let v1 = d_isStrictTotalOrder_668 (coe v0) in
    coe
      (coe
         du_'60''45'resp'691''45''8776'_392
         (coe d_isStrictPartialOrder_608 (coe v1)))
-- Relation.Binary.Structures.IsDenseLinearOrder._.<-respˡ-≈
d_'60''45'resp'737''45''8776'_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'737''45''8776'_682 v6
du_'60''45'resp'737''45''8776'_682 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_682 v0
  = let v1 = d_isStrictTotalOrder_668 (coe v0) in
    coe
      (coe
         du_'60''45'resp'737''45''8776'_394
         (coe d_isStrictPartialOrder_608 (coe v1)))
-- Relation.Binary.Structures.IsDenseLinearOrder._.asym
d_asym_684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_684 = erased
-- Relation.Binary.Structures.IsDenseLinearOrder._.compare
d_compare_686 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_686 v0
  = coe d_compare_610 (coe d_isStrictTotalOrder_668 (coe v0))
-- Relation.Binary.Structures.IsDenseLinearOrder._.irrefl
d_irrefl_688 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_688 = erased
-- Relation.Binary.Structures.IsDenseLinearOrder._.isDecEquivalence
d_isDecEquivalence_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 -> T_IsDecEquivalence_44
d_isDecEquivalence_690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_690 v6
du_isDecEquivalence_690 ::
  T_IsDenseLinearOrder_660 -> T_IsDecEquivalence_44
du_isDecEquivalence_690 v0
  = coe
      du_isDecEquivalence_654 (coe d_isStrictTotalOrder_668 (coe v0))
-- Relation.Binary.Structures.IsDenseLinearOrder._.isDecStrictPartialOrder
d_isDecStrictPartialOrder_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 -> T_IsDecStrictPartialOrder_400
d_isDecStrictPartialOrder_692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecStrictPartialOrder_692 v6
du_isDecStrictPartialOrder_692 ::
  T_IsDenseLinearOrder_660 -> T_IsDecStrictPartialOrder_400
du_isDecStrictPartialOrder_692 v0
  = coe
      du_isDecStrictPartialOrder_632
      (coe d_isStrictTotalOrder_668 (coe v0))
-- Relation.Binary.Structures.IsDenseLinearOrder._.isEquivalence
d_isEquivalence_694 ::
  T_IsDenseLinearOrder_660 -> T_IsEquivalence_26
d_isEquivalence_694 v0
  = coe
      d_isEquivalence_366
      (coe
         d_isStrictPartialOrder_608 (coe d_isStrictTotalOrder_668 (coe v0)))
-- Relation.Binary.Structures.IsDenseLinearOrder._.isStrictPartialOrder
d_isStrictPartialOrder_696 ::
  T_IsDenseLinearOrder_660 -> T_IsStrictPartialOrder_354
d_isStrictPartialOrder_696 v0
  = coe
      d_isStrictPartialOrder_608 (coe d_isStrictTotalOrder_668 (coe v0))
-- Relation.Binary.Structures.IsDenseLinearOrder._.trans
d_trans_698 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_698 v0
  = coe
      d_trans_370
      (coe
         d_isStrictPartialOrder_608 (coe d_isStrictTotalOrder_668 (coe v0)))
-- Relation.Binary.Structures.IsDenseLinearOrder._.Eq._≟_
d__'8799'__702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__702 v6
du__'8799'__702 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__702 v0
  = let v1 = d_isStrictTotalOrder_668 (coe v0) in
    coe (coe du__'8799'__628 (coe v1))
-- Relation.Binary.Structures.IsDenseLinearOrder._.Eq.isDecEquivalence
d_isDecEquivalence_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 -> T_IsDecEquivalence_44
d_isDecEquivalence_704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_704 v6
du_isDecEquivalence_704 ::
  T_IsDenseLinearOrder_660 -> T_IsDecEquivalence_44
du_isDecEquivalence_704 v0
  = coe
      du_isDecEquivalence_636 (coe d_isStrictTotalOrder_668 (coe v0))
-- Relation.Binary.Structures.IsDenseLinearOrder._.Eq.isEquivalence
d_isEquivalence_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 -> T_IsEquivalence_26
d_isEquivalence_706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_706 v6
du_isEquivalence_706 ::
  T_IsDenseLinearOrder_660 -> T_IsEquivalence_26
du_isEquivalence_706 v0
  = let v1 = d_isStrictTotalOrder_668 (coe v0) in
    coe
      (coe d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v1)))
-- Relation.Binary.Structures.IsDenseLinearOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_708 v6
du_isPartialEquivalence_708 ::
  T_IsDenseLinearOrder_660 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_708 v0
  = let v1 = d_isStrictTotalOrder_668 (coe v0) in
    coe
      (let v2 = coe du_isDecEquivalence_636 (coe v1) in
       coe
         (coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v2))))
-- Relation.Binary.Structures.IsDenseLinearOrder._.Eq.refl
d_refl_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 -> AgdaAny -> AgdaAny
d_refl_710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_710 v6
du_refl_710 :: T_IsDenseLinearOrder_660 -> AgdaAny -> AgdaAny
du_refl_710 v0
  = let v1 = d_isStrictTotalOrder_668 (coe v0) in
    coe
      (coe
         d_refl_34
         (coe
            d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v1))))
-- Relation.Binary.Structures.IsDenseLinearOrder._.Eq.reflexive
d_reflexive_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_712 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_712 v6
du_reflexive_712 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_712 v0
  = let v1 = d_isStrictTotalOrder_668 (coe v0) in
    coe
      (let v2 = coe du_isDecEquivalence_636 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe du_reflexive_40 (coe d_isEquivalence_50 (coe v2)) v3))
-- Relation.Binary.Structures.IsDenseLinearOrder._.Eq.sym
d_sym_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_714 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_714 v6
du_sym_714 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_714 v0
  = let v1 = d_isStrictTotalOrder_668 (coe v0) in
    coe
      (coe
         d_sym_36
         (coe
            d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v1))))
-- Relation.Binary.Structures.IsDenseLinearOrder._.Eq.trans
d_trans_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDenseLinearOrder_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_716 v6
du_trans_716 ::
  T_IsDenseLinearOrder_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_716 v0
  = let v1 = d_isStrictTotalOrder_668 (coe v0) in
    coe
      (coe
         d_trans_38
         (coe
            d_isEquivalence_366 (coe d_isStrictPartialOrder_608 (coe v1))))
-- Relation.Binary.Structures.IsApartnessRelation
d_IsApartnessRelation_722 a0 a1 a2 a3 a4 a5 = ()
data T_IsApartnessRelation_722
  = C_IsApartnessRelation'46'constructor_32525 (AgdaAny ->
                                                AgdaAny -> AgdaAny -> AgdaAny)
                                               (AgdaAny ->
                                                AgdaAny ->
                                                AgdaAny ->
                                                AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Relation.Binary.Structures.IsApartnessRelation.irrefl
d_irrefl_732 ::
  T_IsApartnessRelation_722 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_732 = erased
-- Relation.Binary.Structures.IsApartnessRelation.sym
d_sym_734 ::
  T_IsApartnessRelation_722 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_734 v0
  = case coe v0 of
      C_IsApartnessRelation'46'constructor_32525 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsApartnessRelation.cotrans
d_cotrans_736 ::
  T_IsApartnessRelation_722 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cotrans_736 v0
  = case coe v0 of
      C_IsApartnessRelation'46'constructor_32525 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsApartnessRelation._¬#_
d__'172''35'__738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsApartnessRelation_722 -> AgdaAny -> AgdaAny -> ()
d__'172''35'__738 = erased
