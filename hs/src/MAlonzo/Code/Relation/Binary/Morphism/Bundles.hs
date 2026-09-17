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

module MAlonzo.Code.Relation.Binary.Morphism.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Relation.Binary.Morphism.Bundles._.SetoidHomomorphism
d_SetoidHomomorphism_36 a0 a1 a2 a3 a4 a5 = ()
data T_SetoidHomomorphism_36
  = C_constructor_50 (AgdaAny -> AgdaAny)
                     MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
-- Relation.Binary.Morphism.Bundles._.SetoidHomomorphism.⟦_⟧
d_'10214'_'10215'_42 ::
  T_SetoidHomomorphism_36 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_42 v0
  = case coe v0 of
      C_constructor_50 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles._.SetoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_44 ::
  T_SetoidHomomorphism_36 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_44 v0
  = case coe v0 of
      C_constructor_50 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles._.SetoidHomomorphism._.cong
d_cong_48 ::
  T_SetoidHomomorphism_36 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_48 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_44 (coe v0))
-- Relation.Binary.Morphism.Bundles._.SetoidMonomorphism
d_SetoidMonomorphism_52 a0 a1 a2 a3 a4 a5 = ()
data T_SetoidMonomorphism_52
  = C_constructor_72 (AgdaAny -> AgdaAny)
                     MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
-- Relation.Binary.Morphism.Bundles._.SetoidMonomorphism.⟦_⟧
d_'10214'_'10215'_58 ::
  T_SetoidMonomorphism_52 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_58 v0
  = case coe v0 of
      C_constructor_72 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles._.SetoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_60 ::
  T_SetoidMonomorphism_52 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_60 v0
  = case coe v0 of
      C_constructor_72 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles._.SetoidMonomorphism._.cong
d_cong_64 ::
  T_SetoidMonomorphism_52 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_64 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isHomomorphism_78
         (coe d_isRelMonomorphism_60 (coe v0)))
-- Relation.Binary.Morphism.Bundles._.SetoidMonomorphism._.injective
d_injective_66 ::
  T_SetoidMonomorphism_52 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_66 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_injective_80
      (coe d_isRelMonomorphism_60 (coe v0))
-- Relation.Binary.Morphism.Bundles._.SetoidMonomorphism._.isHomomorphism
d_isHomomorphism_68 ::
  T_SetoidMonomorphism_52 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isHomomorphism_68 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isHomomorphism_78
      (coe d_isRelMonomorphism_60 (coe v0))
-- Relation.Binary.Morphism.Bundles._.SetoidMonomorphism.homomorphism
d_homomorphism_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  T_SetoidMonomorphism_52 -> T_SetoidHomomorphism_36
d_homomorphism_70 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_homomorphism_70 v6
du_homomorphism_70 ::
  T_SetoidMonomorphism_52 -> T_SetoidHomomorphism_36
du_homomorphism_70 v0
  = coe
      C_constructor_50 (coe d_'10214'_'10215'_58 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isHomomorphism_78
         (coe d_isRelMonomorphism_60 (coe v0)))
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism
d_SetoidIsomorphism_74 a0 a1 a2 a3 a4 a5 = ()
data T_SetoidIsomorphism_74
  = C_constructor_104 (AgdaAny -> AgdaAny)
                      MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism.⟦_⟧
d_'10214'_'10215'_80 ::
  T_SetoidIsomorphism_74 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_80 v0
  = case coe v0 of
      C_constructor_104 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_82 ::
  T_SetoidIsomorphism_74 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_82 v0
  = case coe v0 of
      C_constructor_104 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism._.bijective
d_bijective_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  T_SetoidIsomorphism_74 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bijective_86 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_bijective_86 v6
du_bijective_86 ::
  T_SetoidIsomorphism_74 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bijective_86 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.du_bijective_122
      (coe d_isRelIsomorphism_82 (coe v0))
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism._.cong
d_cong_88 ::
  T_SetoidIsomorphism_74 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_88 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isHomomorphism_78
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isMonomorphism_110
            (coe d_isRelIsomorphism_82 (coe v0))))
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism._.injective
d_injective_90 ::
  T_SetoidIsomorphism_74 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_90 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_injective_80
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isMonomorphism_110
         (coe d_isRelIsomorphism_82 (coe v0)))
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism._.isHomomorphism
d_isHomomorphism_92 ::
  T_SetoidIsomorphism_74 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isHomomorphism_92 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isHomomorphism_78
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isMonomorphism_110
         (coe d_isRelIsomorphism_82 (coe v0)))
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism._.isMonomorphism
d_isMonomorphism_94 ::
  T_SetoidIsomorphism_74 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isMonomorphism_94 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isMonomorphism_110
      (coe d_isRelIsomorphism_82 (coe v0))
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism._.surjective
d_surjective_96 ::
  T_SetoidIsomorphism_74 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_96 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_surjective_112
      (coe d_isRelIsomorphism_82 (coe v0))
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism.monomorphism
d_monomorphism_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  T_SetoidIsomorphism_74 -> T_SetoidMonomorphism_52
d_monomorphism_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_monomorphism_98 v6
du_monomorphism_98 ::
  T_SetoidIsomorphism_74 -> T_SetoidMonomorphism_52
du_monomorphism_98 v0
  = coe
      C_constructor_72 (coe d_'10214'_'10215'_80 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isMonomorphism_110
         (coe d_isRelIsomorphism_82 (coe v0)))
-- Relation.Binary.Morphism.Bundles._.SetoidIsomorphism._.homomorphism
d_homomorphism_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  T_SetoidIsomorphism_74 -> T_SetoidHomomorphism_36
d_homomorphism_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_homomorphism_102 v6
du_homomorphism_102 ::
  T_SetoidIsomorphism_74 -> T_SetoidHomomorphism_36
du_homomorphism_102 v0
  = coe du_homomorphism_70 (coe du_monomorphism_98 (coe v0))
-- Relation.Binary.Morphism.Bundles.PreorderHomomorphism
d_PreorderHomomorphism_122 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_PreorderHomomorphism_122
  = C_constructor_148 (AgdaAny -> AgdaAny)
                      MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
-- Relation.Binary.Morphism.Bundles.PreorderHomomorphism.⟦_⟧
d_'10214'_'10215'_132 ::
  T_PreorderHomomorphism_122 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_132 v0
  = case coe v0 of
      C_constructor_148 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles.PreorderHomomorphism.isOrderHomomorphism
d_isOrderHomomorphism_134 ::
  T_PreorderHomomorphism_122 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_isOrderHomomorphism_134 v0
  = case coe v0 of
      C_constructor_148 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles.PreorderHomomorphism._.cong
d_cong_138 ::
  T_PreorderHomomorphism_122 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_138 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_160
      (coe d_isOrderHomomorphism_134 (coe v0))
-- Relation.Binary.Morphism.Bundles.PreorderHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  T_PreorderHomomorphism_122 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isRelHomomorphism_140 v8
du_isRelHomomorphism_140 ::
  T_PreorderHomomorphism_122 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
du_isRelHomomorphism_140 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelHomomorphism_168
      (coe d_isOrderHomomorphism_134 (coe v0))
-- Relation.Binary.Morphism.Bundles.PreorderHomomorphism._.mono
d_mono_142 ::
  T_PreorderHomomorphism_122 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_mono_142 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_162
      (coe d_isOrderHomomorphism_134 (coe v0))
-- Relation.Binary.Morphism.Bundles.PreorderHomomorphism._.Eq.isRelHomomorphism
d_isRelHomomorphism_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  T_PreorderHomomorphism_122 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isRelHomomorphism_146 v8
du_isRelHomomorphism_146 ::
  T_PreorderHomomorphism_122 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
du_isRelHomomorphism_146 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelHomomorphism_166
      (coe d_isOrderHomomorphism_134 (coe v0))
-- Relation.Binary.Morphism.Bundles._.P._≈_
d__'8776'__174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__174 = erased
-- Relation.Binary.Morphism.Bundles._.P._≤_
d__'8804'__178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  AgdaAny -> AgdaAny -> ()
d__'8804'__178 = erased
-- Relation.Binary.Morphism.Bundles._.P.Carrier
d_Carrier_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 -> ()
d_Carrier_186 = erased
-- Relation.Binary.Morphism.Bundles._.PosetHomomorphism
d_PosetHomomorphism_322 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_PosetHomomorphism_322
  = C_constructor_344 (AgdaAny -> AgdaAny)
                      MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
-- Relation.Binary.Morphism.Bundles._.PosetHomomorphism.⟦_⟧
d_'10214'_'10215'_328 ::
  T_PosetHomomorphism_322 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_328 v0
  = case coe v0 of
      C_constructor_344 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles._.PosetHomomorphism.isOrderHomomorphism
d_isOrderHomomorphism_330 ::
  T_PosetHomomorphism_322 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_isOrderHomomorphism_330 v0
  = case coe v0 of
      C_constructor_344 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Bundles._.PosetHomomorphism._.cong
d_cong_334 ::
  T_PosetHomomorphism_322 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_334 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_160
      (coe d_isOrderHomomorphism_330 (coe v0))
-- Relation.Binary.Morphism.Bundles._.PosetHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  T_PosetHomomorphism_322 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_336 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isRelHomomorphism_336 v8
du_isRelHomomorphism_336 ::
  T_PosetHomomorphism_322 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
du_isRelHomomorphism_336 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelHomomorphism_168
      (coe d_isOrderHomomorphism_330 (coe v0))
-- Relation.Binary.Morphism.Bundles._.PosetHomomorphism._.mono
d_mono_338 ::
  T_PosetHomomorphism_322 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_mono_338 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_162
      (coe d_isOrderHomomorphism_330 (coe v0))
-- Relation.Binary.Morphism.Bundles._.PosetHomomorphism._.Eq.isRelHomomorphism
d_isRelHomomorphism_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  T_PosetHomomorphism_322 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isRelHomomorphism_342 v8
du_isRelHomomorphism_342 ::
  T_PosetHomomorphism_322 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
du_isRelHomomorphism_342 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelHomomorphism_166
      (coe d_isOrderHomomorphism_330 (coe v0))
-- Relation.Binary.Morphism.Bundles._.mkPosetHomo
d_mkPosetHomo_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_PosetHomomorphism_322
d_mkPosetHomo_348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_mkPosetHomo_348 v6 v7 v8 v9
du_mkPosetHomo_348 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_PosetHomomorphism_322
du_mkPosetHomo_348 v0 v1 v2 v3
  = coe
      C_constructor_344 (coe v2)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_170
         (coe
            MAlonzo.Code.Relation.Binary.Consequences.du_mono'8658'cong_278
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_514
                        (coe v0)))))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_514
                     (coe v0))))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_514
                  (coe v1)))
            (coe v2) (coe v3))
         (coe v3))
