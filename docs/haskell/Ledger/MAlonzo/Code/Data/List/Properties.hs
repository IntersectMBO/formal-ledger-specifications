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

module MAlonzo.Code.Data.List.Properties where

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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Divisibility
import qualified MAlonzo.Code.Data.Nat.Divisibility.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.List.Properties._.∷-injective
d_'8759''45'injective_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8759''45'injective_42 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_'8759''45'injective_42
du_'8759''45'injective_42 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8759''45'injective_42
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.List.Properties._.∷-injectiveˡ
d_'8759''45'injective'737'_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''45'injective'737'_44 = erased
-- Data.List.Properties._.∷-injectiveʳ
d_'8759''45'injective'691'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''45'injective'691'_46 = erased
-- Data.List.Properties._.∷-dec
d_'8759''45'dec_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8759''45'dec_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'8759''45'dec_48 v6 v7
du_'8759''45'dec_48 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8759''45'dec_48 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      (coe MAlonzo.Code.Data.Product.Base.du_uncurry_244 erased)
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
         (coe v0) (coe v1))
-- Data.List.Properties.≡-dec
d_'8801''45'dec_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8801''45'dec_54 ~v0 ~v1 v2 v3 v4 = du_'8801''45'dec_54 v2 v3 v4
du_'8801''45'dec_54 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8801''45'dec_54 v0 v1 v2
  = case coe v1 of
      []
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             (:) v5 v6
               -> coe
                    du_'8759''45'dec_48 (coe v0 v3 v5)
                    (coe du_'8801''45'dec_54 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties.map-id
d_map'45'id_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'id_80 = erased
-- Data.List.Properties.map-id-local
d_map'45'id'45'local_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'id'45'local_94 = erased
-- Data.List.Properties.map-++
d_map'45''43''43'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''43''43'_106 = erased
-- Data.List.Properties.map-cong
d_map'45'cong_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'cong_126 = erased
-- Data.List.Properties.map-cong-local
d_map'45'cong'45'local_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'cong'45'local_144 = erased
-- Data.List.Properties.length-map
d_length'45'map_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'map_154 = erased
-- Data.List.Properties.map-∘
d_map'45''8728'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''8728'_168 = erased
-- Data.List.Properties.map-injective
d_map'45'injective_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'injective_178 = erased
-- Data.List.Properties.mapMaybe-just
d_mapMaybe'45'just_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapMaybe'45'just_202 = erased
-- Data.List.Properties.mapMaybe-nothing
d_mapMaybe'45'nothing_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapMaybe'45'nothing_214 = erased
-- Data.List.Properties._.mapMaybe-concatMap
d_mapMaybe'45'concatMap_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapMaybe'45'concatMap_230 = erased
-- Data.List.Properties._.length-mapMaybe
d_length'45'mapMaybe_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45'mapMaybe_260 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_length'45'mapMaybe_260 v4 v5
du_length'45'mapMaybe_260 ::
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45'mapMaybe_260 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      (:) v2 v3
        -> let v4 = coe du_length'45'mapMaybe_260 (coe v0) (coe v3) in
           coe
             (let v5 = coe v0 v2 in
              coe
                (case coe v5 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                     -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                   _ -> MAlonzo.RTE.mazUnreachableError))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties.length-++
d_length'45''43''43'_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45''43''43'_290 = erased
-- Data.List.Properties._._.Associative
d_Associative_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d_Associative_328 = erased
-- Data.List.Properties._._.Cancellative
d_Cancellative_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d_Cancellative_330 = erased
-- Data.List.Properties._._.Conical
d_Conical_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d_Conical_338 = erased
-- Data.List.Properties._._.Identity
d_Identity_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d_Identity_348 = erased
-- Data.List.Properties._._.LeftCancellative
d_LeftCancellative_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d_LeftCancellative_362 = erased
-- Data.List.Properties._._.LeftIdentity
d_LeftIdentity_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d_LeftIdentity_374 = erased
-- Data.List.Properties._._.RightCancellative
d_RightCancellative_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d_RightCancellative_392 = erased
-- Data.List.Properties._._.RightIdentity
d_RightIdentity_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d_RightIdentity_404 = erased
-- Data.List.Properties._._.IsMagma
d_IsMagma_476 a0 a1 a2 = ()
-- Data.List.Properties._._.IsMonoid
d_IsMonoid_482 a0 a1 a2 a3 = ()
-- Data.List.Properties._._.IsSemigroup
d_IsSemigroup_504 a0 a1 a2 = ()
-- Data.List.Properties._.++-assoc
d_'43''43''45'assoc_2818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'assoc_2818 = erased
-- Data.List.Properties._.++-identityˡ
d_'43''43''45'identity'737'_2834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'identity'737'_2834 = erased
-- Data.List.Properties._.++-identityʳ
d_'43''43''45'identity'691'_2838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'identity'691'_2838 = erased
-- Data.List.Properties._.++-identity
d_'43''43''45'identity_2846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''43''45'identity_2846 ~v0 ~v1 = du_'43''43''45'identity_2846
du_'43''43''45'identity_2846 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'43''43''45'identity_2846
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.List.Properties._.++-identityʳ-unique
d_'43''43''45'identity'691''45'unique_2852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'identity'691''45'unique_2852 = erased
-- Data.List.Properties._.++-identityˡ-unique
d_'43''43''45'identity'737''45'unique_2864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'identity'737''45'unique_2864 = erased
-- Data.List.Properties._.++-cancelˡ
d_'43''43''45'cancel'737'_2896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'cancel'737'_2896 = erased
-- Data.List.Properties._.++-cancelʳ
d_'43''43''45'cancel'691'_2906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'cancel'691'_2906 = erased
-- Data.List.Properties._.++-cancel
d_'43''43''45'cancel_2934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''43''45'cancel_2934 ~v0 ~v1 = du_'43''43''45'cancel_2934
du_'43''43''45'cancel_2934 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'43''43''45'cancel_2934
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.List.Properties._.++-conicalˡ
d_'43''43''45'conical'737'_2940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'conical'737'_2940 = erased
-- Data.List.Properties._.++-conicalʳ
d_'43''43''45'conical'691'_2946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'conical'691'_2946 = erased
-- Data.List.Properties._.++-conical
d_'43''43''45'conical_2948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''43''45'conical_2948 ~v0 ~v1 = du_'43''43''45'conical_2948
du_'43''43''45'conical_2948 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'43''43''45'conical_2948
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.List.Properties._.++-isMagma
d_'43''43''45'isMagma_2950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'43''43''45'isMagma_2950 ~v0 ~v1 = du_'43''43''45'isMagma_2950
du_'43''43''45'isMagma_2950 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'43''43''45'isMagma_2950
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.List.Properties._.++-isSemigroup
d_'43''43''45'isSemigroup_2952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'43''43''45'isSemigroup_2952 ~v0 ~v1
  = du_'43''43''45'isSemigroup_2952
du_'43''43''45'isSemigroup_2952 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'43''43''45'isSemigroup_2952
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe du_'43''43''45'isMagma_2950) erased
-- Data.List.Properties._.++-isMonoid
d_'43''43''45'isMonoid_2954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''43''45'isMonoid_2954 ~v0 ~v1 = du_'43''43''45'isMonoid_2954
du_'43''43''45'isMonoid_2954 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'43''43''45'isMonoid_2954
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe du_'43''43''45'isSemigroup_2952)
      (coe du_'43''43''45'identity_2846)
-- Data.List.Properties._.++-semigroup
d_'43''43''45'semigroup_2964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'43''43''45'semigroup_2964 ~v0 ~v1
  = du_'43''43''45'semigroup_2964
du_'43''43''45'semigroup_2964 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
du_'43''43''45'semigroup_2964
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
      (coe du_'43''43''45'isSemigroup_2952)
-- Data.List.Properties._.++-monoid
d_'43''43''45'monoid_2966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'43''43''45'monoid_2966 ~v0 ~v1 = du_'43''43''45'monoid_2966
du_'43''43''45'monoid_2966 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_'43''43''45'monoid_2966
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__62)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe du_'43''43''45'isMonoid_2954)
-- Data.List.Properties._.length-isMagmaHomomorphism
d_length'45'isMagmaHomomorphism_2976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_length'45'isMagmaHomomorphism_2976 ~v0 ~v1
  = du_length'45'isMagmaHomomorphism_2976
du_length'45'isMagmaHomomorphism_2976 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
du_length'45'isMagmaHomomorphism_2976
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_741
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelHomomorphism'46'constructor_587
         erased)
      erased
-- Data.List.Properties._.length-isMonoidHomomorphism
d_length'45'isMonoidHomomorphism_2982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_length'45'isMonoidHomomorphism_2982 ~v0 ~v1
  = du_length'45'isMonoidHomomorphism_2982
du_length'45'isMonoidHomomorphism_2982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
du_length'45'isMonoidHomomorphism_2982
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_5517
      (coe du_length'45'isMagmaHomomorphism_2976) erased
-- Data.List.Properties._.prod
d_prod_2996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_prod_2996 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_prod_2996 v6
du_prod_2996 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_prod_2996 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_cartesianProductWith_100 (coe v0)
-- Data.List.Properties._.cartesianProductWith-zeroˡ
d_cartesianProductWith'45'zero'737'_3000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cartesianProductWith'45'zero'737'_3000 = erased
-- Data.List.Properties._.cartesianProductWith-zeroʳ
d_cartesianProductWith'45'zero'691'_3004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cartesianProductWith'45'zero'691'_3004 = erased
-- Data.List.Properties._.cartesianProductWith-distribʳ-++
d_cartesianProductWith'45'distrib'691''45''43''43'_3016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cartesianProductWith'45'distrib'691''45''43''43'_3016 = erased
-- Data.List.Properties._.alignWith-cong
d_alignWith'45'cong_3048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T_These_38 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alignWith'45'cong_3048 = erased
-- Data.List.Properties._.length-alignWith
d_length'45'alignWith_3072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'alignWith_3072 = erased
-- Data.List.Properties._.alignWith-map
d_alignWith'45'map_3094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alignWith'45'map_3094 = erased
-- Data.List.Properties._.map-alignWith
d_map'45'alignWith_3126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'alignWith_3126 = erased
-- Data.List.Properties._.zipWith-comm
d_zipWith'45'comm_3164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zipWith'45'comm_3164 = erased
-- Data.List.Properties._.zipWith-zeroˡ
d_zipWith'45'zero'737'_3204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zipWith'45'zero'737'_3204 = erased
-- Data.List.Properties._.zipWith-zeroʳ
d_zipWith'45'zero'691'_3212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zipWith'45'zero'691'_3212 = erased
-- Data.List.Properties._.length-zipWith
d_length'45'zipWith_3222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'zipWith_3222 = erased
-- Data.List.Properties._.zipWith-map
d_zipWith'45'map_3260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zipWith'45'map_3260 = erased
-- Data.List.Properties._.map-zipWith
d_map'45'zipWith_3308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'zipWith_3308 = erased
-- Data.List.Properties.unalignWith-this
d_unalignWith'45'this_3336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unalignWith'45'this_3336 = erased
-- Data.List.Properties.unalignWith-that
d_unalignWith'45'that_3346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unalignWith'45'that_3346 = erased
-- Data.List.Properties._.unalignWith-cong
d_unalignWith'45'cong_3368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unalignWith'45'cong_3368 = erased
-- Data.List.Properties._.unalignWith-map
d_unalignWith'45'map_3432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unalignWith'45'map_3432 = erased
-- Data.List.Properties._.map-unalignWith
d_map'45'unalignWith_3484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'unalignWith_3484 = erased
-- Data.List.Properties._.unalignWith-alignWith
d_unalignWith'45'alignWith_3548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T_These_38 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unalignWith'45'alignWith_3548 = erased
-- Data.List.Properties._.length-unzipWith₁
d_length'45'unzipWith'8321'_3596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'unzipWith'8321'_3596 = erased
-- Data.List.Properties._.length-unzipWith₂
d_length'45'unzipWith'8322'_3604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'unzipWith'8322'_3604 = erased
-- Data.List.Properties._.zipWith-unzipWith
d_zipWith'45'unzipWith_3612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zipWith'45'unzipWith_3612 = erased
-- Data.List.Properties.foldr-universal
d_foldr'45'universal_3636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  ([AgdaAny] -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldr'45'universal_3636 = erased
-- Data.List.Properties.foldr-cong
d_foldr'45'cong_3674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldr'45'cong_3674 = erased
-- Data.List.Properties.foldr-fusion
d_foldr'45'fusion_3702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldr'45'fusion_3702 = erased
-- Data.List.Properties.id-is-foldr
d_id'45'is'45'foldr_3718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_id'45'is'45'foldr_3718 = erased
-- Data.List.Properties.++-is-foldr
d_'43''43''45'is'45'foldr_3728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45'is'45'foldr_3728 = erased
-- Data.List.Properties.foldr-++
d_foldr'45''43''43'_3750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldr'45''43''43'_3750 = erased
-- Data.List.Properties.map-is-foldr
d_map'45'is'45'foldr_3774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'is'45'foldr_3774 = erased
-- Data.List.Properties.foldr-∷ʳ
d_foldr'45''8759''691'_3796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldr'45''8759''691'_3796 = erased
-- Data.List.Properties.foldr-map
d_foldr'45'map_3822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldr'45'map_3822 = erased
-- Data.List.Properties._.foldr-forcesᵇ
d_foldr'45'forces'7495'_3860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_foldr'45'forces'7495'_3860 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_foldr'45'forces'7495'_3860 v4 v5 v6 v7 v8
du_foldr'45'forces'7495'_3860 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_foldr'45'forces'7495'_3860 v0 v1 v2 v3 v4
  = case coe v3 of
      [] -> coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50
      (:) v5 v6
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                (coe
                   v1 v5
                   (coe
                      MAlonzo.Code.Data.List.Base.du_foldr_242 (coe v0) (coe v2)
                      (coe v6))
                   v4))
             (coe
                du_foldr'45'forces'7495'_3860 (coe v0) (coe v1) (coe v2) (coe v6)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      v1 v5
                      (coe
                         MAlonzo.Code.Data.List.Base.du_foldr_242 (coe v0) (coe v2)
                         (coe v6))
                      v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties._.foldr-preservesᵇ
d_foldr'45'preserves'7495'_3882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> AgdaAny
d_foldr'45'preserves'7495'_3882 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_foldr'45'preserves'7495'_3882 v4 v5 v6 v7 v8 v9
du_foldr'45'preserves'7495'_3882 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> AgdaAny
du_foldr'45'preserves'7495'_3882 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50 -> coe v4
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v8 v9
        -> case coe v3 of
             (:) v10 v11
               -> coe
                    v1 v10
                    (coe
                       MAlonzo.Code.Data.List.Base.du_foldr_242 (coe v0) (coe v2)
                       (coe v11))
                    v8
                    (coe
                       du_foldr'45'preserves'7495'_3882 (coe v0) (coe v1) (coe v2)
                       (coe v11) (coe v4) (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties._.foldr-preservesʳ
d_foldr'45'preserves'691'_3902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny
d_foldr'45'preserves'691'_3902 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_foldr'45'preserves'691'_3902 v4 v5 v6 v7 v8
du_foldr'45'preserves'691'_3902 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny
du_foldr'45'preserves'691'_3902 v0 v1 v2 v3 v4
  = case coe v4 of
      [] -> coe v3
      (:) v5 v6
        -> coe
             v1 v5
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_242 (coe v0) (coe v2)
                (coe v6))
             (coe
                du_foldr'45'preserves'691'_3902 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties._.foldr-preservesᵒ
d_foldr'45'preserves'7506'_3922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_foldr'45'preserves'7506'_3922 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_foldr'45'preserves'7506'_3922 v4 v5 v6 v7 v8
du_foldr'45'preserves'7506'_3922 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_foldr'45'preserves'7506'_3922 v0 v1 v2 v3 v4
  = case coe v3 of
      []
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v5 v6
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
               -> coe
                    v1 v5
                    (coe
                       MAlonzo.Code.Data.List.Base.du_foldr_242 (coe v0) (coe v2)
                       (coe v6))
                    (coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                       (coe
                          du_foldr'45'preserves'7506'_3922 (coe v0) (coe v1) (coe v2)
                          (coe v6) (coe v4)))
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
               -> case coe v7 of
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v10
                      -> coe
                           v1 v5
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_242 (coe v0) (coe v2)
                              (coe v6))
                           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v10))
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v10
                      -> coe
                           v1 v5
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_242 (coe v0) (coe v2)
                              (coe v6))
                           (coe
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                              (coe
                                 du_foldr'45'preserves'7506'_3922 (coe v0) (coe v1) (coe v2)
                                 (coe v6)
                                 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v10))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties.foldl-++
d_foldl'45''43''43'_3968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldl'45''43''43'_3968 = erased
-- Data.List.Properties.foldl-∷ʳ
d_foldl'45''8759''691'_3994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldl'45''8759''691'_3994 = erased
-- Data.List.Properties.foldl-map
d_foldl'45'map_4020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldl'45'map_4020 = erased
-- Data.List.Properties.concat-map
d_concat'45'map_4040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_concat'45'map_4040 = erased
-- Data.List.Properties.concat-++
d_concat'45''43''43'_4062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[AgdaAny]] ->
  [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_concat'45''43''43'_4062 = erased
-- Data.List.Properties.concat-concat
d_concat'45'concat_4080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [[[AgdaAny]]] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_concat'45'concat_4080 = erased
-- Data.List.Properties.concat-[-]
d_concat'45''91''45''93'_4088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_concat'45''91''45''93'_4088 = erased
-- Data.List.Properties.concatMap-cong
d_concatMap'45'cong_4100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_concatMap'45'cong_4100 = erased
-- Data.List.Properties.concatMap-pure
d_concatMap'45'pure_4106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_concatMap'45'pure_4106 = erased
-- Data.List.Properties.concatMap-map
d_concatMap'45'map_4114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_concatMap'45'map_4114 = erased
-- Data.List.Properties.map-concatMap
d_map'45'concatMap_4126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> [AgdaAny]) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'concatMap_4126 = erased
-- Data.List.Properties.sum-++
d_sum'45''43''43'_4138 ::
  [Integer] ->
  [Integer] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sum'45''43''43'_4138 = erased
-- Data.List.Properties.∈⇒∣product
d_'8712''8658''8739'product_4154 ::
  Integer ->
  [Integer] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8712''8658''8739'product_4154 ~v0 v1 v2
  = du_'8712''8658''8739'product_4154 v1 v2
du_'8712''8658''8739'product_4154 ::
  [Integer] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8712''8658''8739'product_4154 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
                    (coe MAlonzo.Code.Data.List.Base.d_product_302 v3)
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Divisibility.du_'8739'n'8658''8739'm'42'n_324
                    v2 (coe du_'8712''8658''8739'product_4154 (coe v3) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties.scanr-defn
d_scanr'45'defn_4172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_scanr'45'defn_4172 = erased
-- Data.List.Properties.scanl-defn
d_scanl'45'defn_4216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_scanl'45'defn_4216 = erased
-- Data.List.Properties.length-applyUpTo
d_length'45'applyUpTo_4240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'applyUpTo_4240 = erased
-- Data.List.Properties.lookup-applyUpTo
d_lookup'45'applyUpTo_4254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'applyUpTo_4254 = erased
-- Data.List.Properties._.length-applyDownFrom
d_length'45'applyDownFrom_4276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'applyDownFrom_4276 = erased
-- Data.List.Properties._.lookup-applyDownFrom
d_lookup'45'applyDownFrom_4284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'applyDownFrom_4284 = erased
-- Data.List.Properties.length-upTo
d_length'45'upTo_4294 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'upTo_4294 = erased
-- Data.List.Properties.lookup-upTo
d_lookup'45'upTo_4300 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'upTo_4300 = erased
-- Data.List.Properties.length-downFrom
d_length'45'downFrom_4304 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'downFrom_4304 = erased
-- Data.List.Properties.lookup-downFrom
d_lookup'45'downFrom_4310 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'downFrom_4310 = erased
-- Data.List.Properties.tabulate-cong
d_tabulate'45'cong_4318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_tabulate'45'cong_4318 = erased
-- Data.List.Properties.tabulate-lookup
d_tabulate'45'lookup_4328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_tabulate'45'lookup_4328 = erased
-- Data.List.Properties.length-tabulate
d_length'45'tabulate_4340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'tabulate_4340 = erased
-- Data.List.Properties.lookup-tabulate
d_lookup'45'tabulate_4358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'tabulate_4358 = erased
-- Data.List.Properties.map-tabulate
d_map'45'tabulate_4372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'tabulate_4372 = erased
-- Data.List.Properties.length-%=
d_length'45''37''61'_4392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45''37''61'_4392 = erased
-- Data.List.Properties.length-∷=
d_length'45''8759''61'_4414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45''8759''61'_4414 = erased
-- Data.List.Properties.map-∷=
d_map'45''8759''61'_4432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''8759''61'_4432 = erased
-- Data.List.Properties.length-insertAt
d_length'45'insertAt_4460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'insertAt_4460 = erased
-- Data.List.Properties.length-removeAt
d_length'45'removeAt_4478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'removeAt_4478 = erased
-- Data.List.Properties.length-removeAt′
d_length'45'removeAt'8242'_4494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'removeAt'8242'_4494 = erased
-- Data.List.Properties.map-removeAt
d_map'45'removeAt_4512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'removeAt_4512 = erased
-- Data.List.Properties.removeAt-insertAt
d_removeAt'45'insertAt_4536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_removeAt'45'insertAt_4536 = erased
-- Data.List.Properties.insertAt-removeAt
d_insertAt'45'removeAt_4556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_insertAt'45'removeAt_4556 = erased
-- Data.List.Properties.length-take
d_length'45'take_4574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'take_4574 = erased
-- Data.List.Properties.take-map
d_take'45'map_4592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_take'45'map_4592 = erased
-- Data.List.Properties.take-suc
d_take'45'suc_4612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_take'45'suc_4612 = erased
-- Data.List.Properties.take-suc-tabulate
d_take'45'suc'45'tabulate_4634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_take'45'suc'45'tabulate_4634 = erased
-- Data.List.Properties.take-all
d_take'45'all_4652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_take'45'all_4652 = erased
-- Data.List.Properties.take-[]
d_take'45''91''93'_4666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_take'45''91''93'_4666 = erased
-- Data.List.Properties.length-drop
d_length'45'drop_4674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'drop_4674 = erased
-- Data.List.Properties.drop-map
d_drop'45'map_4692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45'map_4692 = erased
-- Data.List.Properties.drop-[]
d_drop'45''91''93'_4706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45''91''93'_4706 = erased
-- Data.List.Properties.take++drop≡id
d_take'43''43'drop'8801'id_4714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_take'43''43'drop'8801'id_4714 = erased
-- Data.List.Properties.drop-take-suc
d_drop'45'take'45'suc_4734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45'take'45'suc_4734 = erased
-- Data.List.Properties.drop-take-suc-tabulate
d_drop'45'take'45'suc'45'tabulate_4754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45'take'45'suc'45'tabulate_4754 = erased
-- Data.List.Properties.drop-drop
d_drop'45'drop_4774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45'drop_4774 = erased
-- Data.List.Properties.drop-all
d_drop'45'all_4796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45'all_4796 = erased
-- Data.List.Properties.length-replicate
d_length'45'replicate_4812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'replicate_4812 = erased
-- Data.List.Properties.lookup-replicate
d_lookup'45'replicate_4822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'replicate_4822 = erased
-- Data.List.Properties.map-replicate
d_map'45'replicate_4840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'replicate_4840 = erased
-- Data.List.Properties.zipWith-replicate
d_zipWith'45'replicate_4862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zipWith'45'replicate_4862 = erased
-- Data.List.Properties.length-iterate
d_length'45'iterate_4886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'iterate_4886 = erased
-- Data.List.Properties.iterate-id
d_iterate'45'id_4902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_iterate'45'id_4902 = erased
-- Data.List.Properties.lookup-iterate
d_lookup'45'iterate_4920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'iterate_4920 = erased
-- Data.List.Properties.splitAt-defn
d_splitAt'45'defn_4938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45'defn_4938 = erased
-- Data.List.Properties._.takeWhile++dropWhile
d_takeWhile'43''43'dropWhile_4966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_takeWhile'43''43'dropWhile_4966 = erased
-- Data.List.Properties._.span-defn
d_span'45'defn_4986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_span'45'defn_4986 = erased
-- Data.List.Properties._.length-filter
d_length'45'filter_5020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45'filter_5020 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_length'45'filter_5020 v4 v5
du_length'45'filter_5020 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45'filter_5020 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      (:) v2 v3
        -> let v4 = coe du_length'45'filter_5020 (coe v0) (coe v3) in
           coe
             (let v5
                    = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                        (coe v0 v2) in
              coe
                (if coe v5
                   then coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
                   else coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties._.filter-all
d_filter'45'all_5046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_filter'45'all_5046 = erased
-- Data.List.Properties._.filter-notAll
d_filter'45'notAll_5082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_filter'45'notAll_5082 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_filter'45'notAll_5082 v4 v5 v6
du_filter'45'notAll_5082 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_filter'45'notAll_5082 v0 v1 v2
  = case coe v1 of
      (:) v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v7
               -> let v8 = coe v0 v3 in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> if coe v9
                              then coe
                                     seq (coe v10)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)
                              else coe
                                     MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                     (coe du_length'45'filter_5020 (coe v0) (coe v4))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v7
               -> let v8
                        = coe du_filter'45'notAll_5082 (coe v0) (coe v4) (coe v7) in
                  coe
                    (let v9
                           = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                               (coe v0 v3) in
                     coe
                       (if coe v9
                          then coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                          else coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties._.filter-some
d_filter'45'some_5138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_filter'45'some_5138 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_filter'45'some_5138 v4 v5 v6
du_filter'45'some_5138 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_filter'45'some_5138 v0 v1 v2
  = case coe v1 of
      (:) v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v7
               -> let v8 = coe v0 v3 in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> if coe v9
                              then coe
                                     MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                     (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                              else coe
                                     seq (coe v10)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v7
               -> let v8
                        = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                            (coe v0 v3) in
                  coe
                    (coe
                       seq (coe v8)
                       (coe du_filter'45'some_5138 (coe v0) (coe v4) (coe v7)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties._.filter-none
d_filter'45'none_5188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_filter'45'none_5188 = erased
-- Data.List.Properties._.filter-complete
d_filter'45'complete_5222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_filter'45'complete_5222 = erased
-- Data.List.Properties._.filter-accept
d_filter'45'accept_5254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_filter'45'accept_5254 = erased
-- Data.List.Properties._.filter-reject
d_filter'45'reject_5278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_filter'45'reject_5278 = erased
-- Data.List.Properties._.filter-idem
d_filter'45'idem_5298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_filter'45'idem_5298 = erased
-- Data.List.Properties._.filter-++
d_filter'45''43''43'_5328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_filter'45''43''43'_5328 = erased
-- Data.List.Properties._.length-derun
d_length'45'derun_5376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45'derun_5376 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_length'45'derun_5376 v4 v5
du_length'45'derun_5376 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45'derun_5376 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646
             (coe
                MAlonzo.Code.Data.List.Base.du_length_304
                (coe MAlonzo.Code.Data.List.Base.du_derun_954 (coe v0) (coe v1)))
      (:) v2 v3
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646
                    (coe
                       MAlonzo.Code.Data.List.Base.du_length_304
                       (coe MAlonzo.Code.Data.List.Base.du_derun_954 (coe v0) (coe v1)))
             (:) v4 v5
               -> let v6 = coe du_length'45'derun_5376 (coe v0) (coe v3) in
                  coe
                    (let v7
                           = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                               (coe v0 v2 v4) in
                     coe
                       (if coe v7
                          then coe v6
                          else coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties._.length-deduplicate
d_length'45'deduplicate_5410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45'deduplicate_5410 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_length'45'deduplicate_5410 v4 v5
du_length'45'deduplicate_5410 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45'deduplicate_5410 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      (:) v2 v3
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                (\ v4 v5 v6 ->
                   coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724 v6))
             (coe
                MAlonzo.Code.Data.List.Base.du_length_304
                (coe
                   MAlonzo.Code.Data.List.Base.du_deduplicate_1000 (coe v0) (coe v1)))
             (coe MAlonzo.Code.Data.List.Base.du_length_304 v1)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                   (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                   (\ v4 v5 v6 v7 v8 ->
                      coe
                        MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v7
                        v8))
                (addInt
                   (coe (1 :: Integer))
                   (coe
                      MAlonzo.Code.Data.List.Base.du_length_304
                      (coe
                         MAlonzo.Code.Data.List.Base.du_filter_740
                         (coe
                            (\ v4 ->
                               coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_68
                                 (coe v0 v2 v4)))
                         (coe du_r_5420 (coe v0) (coe v3)))))
                (addInt
                   (coe (1 :: Integer))
                   (coe
                      MAlonzo.Code.Data.List.Base.du_length_304
                      (coe du_r_5420 (coe v0) (coe v3))))
                (coe MAlonzo.Code.Data.List.Base.du_length_304 v1)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                      (\ v4 v5 v6 v7 v8 ->
                         coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v7
                           v8))
                   (addInt
                      (coe (1 :: Integer))
                      (coe
                         MAlonzo.Code.Data.List.Base.du_length_304
                         (coe du_r_5420 (coe v0) (coe v3))))
                   (addInt
                      (coe (1 :: Integer))
                      (coe MAlonzo.Code.Data.List.Base.du_length_304 v3))
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v1)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680))
                      (coe
                         addInt (coe (1 :: Integer))
                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v3)))
                   (coe
                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                      (coe du_length'45'deduplicate_5410 (coe v0) (coe v3))))
                (coe
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                   (coe
                      du_length'45'filter_5020
                      (coe
                         (\ v4 ->
                            coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_68
                              (coe v0 v2 v4)))
                      (coe du_r_5420 (coe v0) (coe v3)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties._._.r
d_r_5420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d_r_5420 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_r_5420 v4 v6
du_r_5420 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
du_r_5420 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_deduplicate_1000 (coe v0) (coe v1)
-- Data.List.Properties._.derun-reject
d_derun'45'reject_5428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_derun'45'reject_5428 = erased
-- Data.List.Properties._.derun-accept
d_derun'45'accept_5466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_derun'45'accept_5466 = erased
-- Data.List.Properties._.partition-defn
d_partition'45'defn_5510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_partition'45'defn_5510 = erased
-- Data.List.Properties._.length-partition
d_length'45'partition_5544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_length'45'partition_5544 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_length'45'partition_5544 v4 v5
du_length'45'partition_5544 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_length'45'partition_5544 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      (:) v2 v3
        -> let v4 = coe du_length'45'partition_5544 (coe v0) (coe v3) in
           coe
             (let v5
                    = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                        (coe v0 v2) in
              coe
                (if coe v5
                   then coe
                          MAlonzo.Code.Data.Product.Base.du_map_128
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34)
                          (coe (\ v6 v7 -> v7)) (coe v4)
                   else coe
                          MAlonzo.Code.Data.Product.Base.du_map_128 (coe (\ v6 -> v6))
                          (coe (\ v6 -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34))
                          (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties.ʳ++-defn
d_'691''43''43''45'defn_5572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'691''43''43''45'defn_5572 = erased
-- Data.List.Properties.++-ʳ++
d_'43''43''45''691''43''43'_5588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45''691''43''43'_5588 = erased
-- Data.List.Properties.ʳ++-ʳ++
d_'691''43''43''45''691''43''43'_5604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'691''43''43''45''691''43''43'_5604 = erased
-- Data.List.Properties.length-ʳ++
d_length'45''691''43''43'_5618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45''691''43''43'_5618 = erased
-- Data.List.Properties.map-ʳ++
d_map'45''691''43''43'_5632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''691''43''43'_5632 = erased
-- Data.List.Properties.foldr-ʳ++
d_foldr'45''691''43''43'_5652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldr'45''691''43''43'_5652 = erased
-- Data.List.Properties.foldl-ʳ++
d_foldl'45''691''43''43'_5676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_foldl'45''691''43''43'_5676 = erased
-- Data.List.Properties.unfold-reverse
d_unfold'45'reverse_5696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unfold'45'reverse_5696 = erased
-- Data.List.Properties.reverse-++
d_reverse'45''43''43'_5706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45''43''43'_5706 = erased
-- Data.List.Properties.reverse-involutive
d_reverse'45'involutive_5712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45'involutive_5712 = erased
-- Data.List.Properties.reverse-injective
d_reverse'45'injective_5720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45'injective_5720 = erased
-- Data.List.Properties.length-reverse
d_length'45'reverse_5724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'reverse_5724 = erased
-- Data.List.Properties.reverse-map
d_reverse'45'map_5730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45'map_5730 = erased
-- Data.List.Properties.reverse-foldr
d_reverse'45'foldr_5740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45'foldr_5740 = erased
-- Data.List.Properties.reverse-foldl
d_reverse'45'foldl_5754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45'foldl_5754 = erased
-- Data.List.Properties._.∷ʳ-injective
d_'8759''691''45'injective_5776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8759''691''45'injective_5776 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6
  = du_'8759''691''45'injective_5776 v4 v5
du_'8759''691''45'injective_5776 ::
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8759''691''45'injective_5776 v0 v1
  = case coe v0 of
      []
        -> coe
             seq (coe v1)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      (:) v2 v3
        -> case coe v1 of
             (:) v4 v5
               -> let v6 = coe du_'8759''45'injective_42 in
                  coe
                    (coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Data.Product.Base.du_map_128 erased
                          (coe (\ v7 v8 -> v8))
                          (coe du_'8759''691''45'injective_5776 (coe v3) (coe v5))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Properties._.∷ʳ-injectiveˡ
d_'8759''691''45'injective'737'_5800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''691''45'injective'737'_5800 = erased
-- Data.List.Properties._.∷ʳ-injectiveʳ
d_'8759''691''45'injective'691'_5812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''691''45'injective'691'_5812 = erased
-- Data.List.Properties.∷ʳ-++
d_'8759''691''45''43''43'_5826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''691''45''43''43'_5826 = erased
-- Data.List.Properties.head-map
d_head'45'map_5838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_head'45'map_5838 = erased
-- Data.List.Properties.map-id₂
d_map'45'id'8322'_5840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'id'8322'_5840 = erased
-- Data.List.Properties.map-cong₂
d_map'45'cong'8322'_5842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'cong'8322'_5842 = erased
-- Data.List.Properties.map-compose
d_map'45'compose_5844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'compose_5844 = erased
-- Data.List.Properties.map-++-commute
d_map'45''43''43''45'commute_5846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''43''43''45'commute_5846 = erased
-- Data.List.Properties.sum-++-commute
d_sum'45''43''43''45'commute_5848 ::
  [Integer] ->
  [Integer] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sum'45''43''43''45'commute_5848 = erased
-- Data.List.Properties.reverse-map-commute
d_reverse'45'map'45'commute_5850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45'map'45'commute_5850 = erased
-- Data.List.Properties.reverse-++-commute
d_reverse'45''43''43''45'commute_5852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45''43''43''45'commute_5852 = erased
-- Data.List.Properties.zipWith-identityˡ
d_zipWith'45'identity'737'_5854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zipWith'45'identity'737'_5854 = erased
-- Data.List.Properties.zipWith-identityʳ
d_zipWith'45'identity'691'_5856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zipWith'45'identity'691'_5856 = erased
-- Data.List.Properties.ʳ++-++
d_'691''43''43''45''43''43'_5858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'691''43''43''45''43''43'_5858 = erased
-- Data.List.Properties.take++drop
d_take'43''43'drop_5860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_take'43''43'drop_5860 = erased
-- Data.List.Properties.length-─
d_length'45''9472'_5862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45''9472'_5862 = erased
-- Data.List.Properties.map-─
d_map'45''9472'_5864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''9472'_5864 = erased
