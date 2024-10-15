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

module MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Setoid.Properties
import qualified MAlonzo.Code.Data.List.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.List.Relation.Binary.Permutation.Propositional.Properties.↭-empty-inv
d_'8621''45'empty'45'inv_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8621''45'empty'45'inv_30 = erased
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.¬x∷xs↭[]
d_'172'x'8759'xs'8621''91''93'_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172'x'8759'xs'8621''91''93'_44 = erased
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.↭-singleton-inv
d_'8621''45'singleton'45'inv_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8621''45'singleton'45'inv_62 = erased
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.↭-sym-involutive
d_'8621''45'sym'45'involutive_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8621''45'sym'45'involutive_84 = erased
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.All-resp-↭
d_All'45'resp'45''8621'_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_All'45'resp'45''8621'_102 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_All'45'resp'45''8621'_102 v4 v5 v6 v7
du_All'45'resp'45''8621'_102 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_All'45'resp'45''8621'_102 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
        -> coe v3
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28 v7
        -> case coe v0 of
             (:) v8 v9
               -> case coe v1 of
                    (:) v10 v11
                      -> case coe v3 of
                           MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v14 v15
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v14
                                  (coe
                                     du_All'45'resp'45''8621'_102 (coe v9) (coe v11) (coe v7)
                                     (coe v15))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v10 of
                    (:) v11 v12
                      -> case coe v1 of
                           (:) v13 v14
                             -> case coe v14 of
                                  (:) v15 v16
                                    -> case coe v3 of
                                         MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v19 v20
                                           -> case coe v20 of
                                                MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v23 v24
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                       v23
                                                       (coe
                                                          MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                          v19
                                                          (coe
                                                             du_All'45'resp'45''8621'_102 (coe v12)
                                                             (coe v16) (coe v8) (coe v24)))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46 v5 v7 v8
        -> coe
             du_All'45'resp'45''8621'_102 (coe v5) (coe v1) (coe v8)
             (coe
                du_All'45'resp'45''8621'_102 (coe v0) (coe v5) (coe v7) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.Any-resp-↭
d_Any'45'resp'45''8621'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Any'45'resp'45''8621'_134 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_Any'45'resp'45''8621'_134 v4 v5 v6 v7
du_Any'45'resp'45''8621'_134 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_Any'45'resp'45''8621'_134 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
        -> coe v3
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28 v7
        -> case coe v0 of
             (:) v8 v9
               -> case coe v1 of
                    (:) v10 v11
                      -> case coe v3 of
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v14
                             -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v14
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v14
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                  (coe
                                     du_Any'45'resp'45''8621'_134 (coe v9) (coe v11) (coe v7)
                                     (coe v14))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v10 of
                    (:) v11 v12
                      -> case coe v1 of
                           (:) v13 v14
                             -> case coe v14 of
                                  (:) v15 v16
                                    -> case coe v3 of
                                         MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v19
                                           -> coe
                                                MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                                (coe
                                                   MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                                   v19)
                                         MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v19
                                           -> case coe v19 of
                                                MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v22
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                                       v22
                                                MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v22
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                                       (coe
                                                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                                          (coe
                                                             du_Any'45'resp'45''8621'_134 (coe v12)
                                                             (coe v16) (coe v8) (coe v22)))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46 v5 v7 v8
        -> coe
             du_Any'45'resp'45''8621'_134 (coe v5) (coe v1) (coe v8)
             (coe
                du_Any'45'resp'45''8621'_134 (coe v0) (coe v5) (coe v7) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.∈-resp-↭
d_'8712''45'resp'45''8621'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'resp'45''8621'_184 ~v0 ~v1 ~v2 v3 v4
  = du_'8712''45'resp'45''8621'_184 v3 v4
du_'8712''45'resp'45''8621'_184 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'resp'45''8621'_184 v0 v1
  = coe du_Any'45'resp'45''8621'_134 (coe v0) (coe v1)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.Any-resp-[σ⁻¹∘σ]
d_Any'45'resp'45''91'σ'8315''185''8728'σ'93'_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Any'45'resp'45''91'σ'8315''185''8728'σ'93'_196 = erased
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.∈-resp-[σ⁻¹∘σ]
d_'8712''45'resp'45''91'σ'8315''185''8728'σ'93'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'resp'45''91'σ'8315''185''8728'σ'93'_240 = erased
-- Data.List.Relation.Binary.Permutation.Propositional.Properties._.map⁺
d_map'8314'_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_map'8314'_256 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_map'8314'_256 v4 v5 v6 v7
du_map'8314'_256 ::
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_map'8314'_256 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28 v7
        -> case coe v1 of
             (:) v8 v9
               -> case coe v2 of
                    (:) v10 v11
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                           (coe du_map'8314'_256 (coe v0) (coe v9) (coe v11) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38 v8
        -> case coe v1 of
             (:) v9 v10
               -> case coe v10 of
                    (:) v11 v12
                      -> case coe v2 of
                           (:) v13 v14
                             -> case coe v14 of
                                  (:) v15 v16
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38
                                         (coe
                                            du_map'8314'_256 (coe v0) (coe v12) (coe v16) (coe v8))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46 v5 v7 v8
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
             (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v0) (coe v5))
             (coe du_map'8314'_256 (coe v0) (coe v1) (coe v5) (coe v7))
             (coe du_map'8314'_256 (coe v0) (coe v5) (coe v2) (coe v8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties._.↭-map-inv
d_'8621''45'map'45'inv_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8621''45'map'45'inv_278 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'8621''45'map'45'inv_278 v5 v6 v7
du_'8621''45'map'45'inv_278 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8621''45'map'45'inv_278 v0 v1 v2
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v0)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50))
      (:) v3 v4
        -> case coe v4 of
             []
               -> coe
                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v0)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50))
             (:) v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
                      -> coe
                           MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v0)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                              (coe
                                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50))
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28 v10
                      -> case coe v1 of
                           (:) v11 v12
                             -> let v13
                                      = coe
                                          du_'8621''45'map'45'inv_278 (coe v4) (coe v12)
                                          (coe v10) in
                                coe
                                  (case coe v13 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                       -> case coe v15 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                              -> coe
                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe v3) (coe v14))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                                         v17))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38 v11
                      -> case coe v1 of
                           (:) v12 v13
                             -> case coe v13 of
                                  (:) v14 v15
                                    -> let v16
                                             = coe
                                                 du_'8621''45'map'45'inv_278 (coe v6) (coe v15)
                                                 (coe v11) in
                                       coe
                                         (case coe v16 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                              -> case coe v18 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                     -> coe
                                                          MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe v5)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                (coe v3) (coe v17)))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             erased
                                                             (coe
                                                                MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38
                                                                v20))
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46 v8 v10 v11
                      -> let v12
                               = coe du_'8621''45'map'45'inv_278 (coe v0) (coe v8) (coe v10) in
                         coe
                           (case coe v12 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                -> case coe v14 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                       -> let v17
                                                = coe
                                                    du_'8621''45'map'45'inv_278 (coe v13) (coe v1)
                                                    (coe v11) in
                                          coe
                                            (case coe v17 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                 -> case coe v19 of
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                        -> coe
                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
                                                                   v13 v16 v21))
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.↭-length
d_'8621''45'length_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8621''45'length_322 = erased
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++⁺ˡ
d_'43''43''8314''737'_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'43''43''8314''737'_344 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_'43''43''8314''737'_344 v2 v5
du_'43''43''8314''737'_344 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'43''43''8314''737'_344 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
             (coe du_'43''43''8314''737'_344 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++⁺ʳ
d_'43''43''8314''691'_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'43''43''8314''691'_360 ~v0 ~v1 v2 v3 v4 v5
  = du_'43''43''8314''691'_360 v2 v3 v4 v5
du_'43''43''8314''691'_360 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'43''43''8314''691'_360 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28 v7
        -> case coe v0 of
             (:) v8 v9
               -> case coe v1 of
                    (:) v10 v11
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                           (coe
                              du_'43''43''8314''691'_360 (coe v9) (coe v11) (coe v2) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v10 of
                    (:) v11 v12
                      -> case coe v1 of
                           (:) v13 v14
                             -> case coe v14 of
                                  (:) v15 v16
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38
                                         (coe
                                            du_'43''43''8314''691'_360 (coe v12) (coe v16) (coe v2)
                                            (coe v8))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46 v5 v7 v8
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v5) (coe v2))
             (coe
                du_'43''43''8314''691'_360 (coe v0) (coe v5) (coe v2) (coe v7))
             (coe
                du_'43''43''8314''691'_360 (coe v5) (coe v1) (coe v2) (coe v8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++⁺
d_'43''43''8314'_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'43''43''8314'_384 ~v0 ~v1 v2 v3 v4 ~v5 v6 v7
  = du_'43''43''8314'_384 v2 v3 v4 v6 v7
du_'43''43''8314'_384 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'43''43''8314'_384 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))
      (coe
         du_'43''43''8314''691'_360 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_'43''43''8314''737'_344 (coe v1) (coe v4))
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.zoom
d_zoom_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_zoom_398 ~v0 ~v1 v2 v3 v4 v5 v6 = du_zoom_398 v2 v3 v4 v5 v6
du_zoom_398 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_zoom_398 v0 v1 v2 v3 v4
  = coe
      du_'43''43''8314''737'_344 (coe v0)
      (coe
         du_'43''43''8314''691'_360 (coe v2) (coe v3) (coe v1) (coe v4))
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.inject
d_inject_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_inject_414 ~v0 ~v1 v2 v3 ~v4 v5 v6 v7 v8
  = du_inject_414 v2 v3 v5 v6 v7 v8
du_inject_414 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_inject_414 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v3)))
      (coe
         du_'43''43''8314''737'_344 (coe v1)
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
            v5))
      (coe
         du_'43''43''8314''691'_360 (coe v1) (coe v2)
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v3))
         (coe v4))
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.shift
d_shift_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_shift_428 ~v0 ~v1 v2 v3 v4 = du_shift_428 v2 v3 v4
du_shift_428 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_shift_428 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
      (:) v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v5 v6 v7 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32
                      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v0))
                      (coe v2))))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'prep_146
                (coe v3)
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2)))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'swap_166
                   (coe v3) (coe v0)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                         (coe
                            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                   (let v5
                          = \ v5 ->
                              coe
                                MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe v5))
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20))
                (coe du_shift_428 (coe v0) (coe v4) (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.drop-mid-≡
d_drop'45'mid'45''8801'_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_drop'45'mid'45''8801'_456 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7
  = du_drop'45'mid'45''8801'_456 v3 v4 v5 v6
du_drop'45'mid'45''8801'_456 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_drop'45'mid'45''8801'_456 v0 v1 v2 v3
  = case coe v0 of
      []
        -> case coe v1 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
             (:) v4 v5 -> coe du_shift_428 (coe v4) (coe v5) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v1 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v5)
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32
                             (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4))
                             (coe v2))))
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v2))
                    (coe du_shift_428 (coe v4) (coe v5) (coe v2))
             (:) v6 v7
               -> let v8
                        = coe
                            MAlonzo.Code.Data.List.Properties.du_'8759''45'injective_46 in
                  coe
                    (coe
                       seq (coe v8)
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                          (coe
                             du_drop'45'mid'45''8801'_456 (coe v5) (coe v7) (coe v2) (coe v3))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.drop-mid
d_drop'45'mid_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_drop'45'mid_510 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_drop'45'mid_510 v2 v3 v4 v5 v6 v7
du_drop'45'mid_510 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_drop'45'mid_510 v0 v1 v2 v3 v4 v5
  = coe
      du_drop'45'mid'8242'_538 (coe v0)
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v0))
            (coe v3)))
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v0))
            (coe v4)))
      (coe v5) (coe v1) (coe v2) (coe v3) (coe v4)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties._.drop-mid′
d_drop'45'mid'8242'_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_drop'45'mid'8242'_538 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
                        v11 v12 v13 v14 ~v15 ~v16
  = du_drop'45'mid'8242'_538 v2 v8 v9 v10 v11 v12 v13 v14
du_drop'45'mid'8242'_538 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_drop'45'mid'8242'_538 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
        -> coe
             du_drop'45'mid'45''8801'_456 (coe v4) (coe v5) (coe v6) (coe v7)
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28 v11
        -> case coe v1 of
             (:) v12 v13
               -> case coe v4 of
                    []
                      -> case coe v5 of
                           [] -> coe v11
                           (:) v14 v15
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v15)
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v12))
                                        (coe v7)))
                                  v11 (coe du_shift_428 (coe v12) (coe v15) (coe v7))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    (:) v14 v15
                      -> case coe v5 of
                           []
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v15)
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v12))
                                        (coe v6)))
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v15)
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                           (coe
                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                              (coe v12))
                                           (coe v6)))
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v12)
                                           (coe v15))
                                        (coe v6))
                                     (coe du_shift_428 (coe v12) (coe v15) (coe v6)))
                                  v11
                           (:) v16 v17
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                  (coe
                                     du_drop'45'mid'8242'_538 (coe v0)
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v15)
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                           (coe
                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v0))
                                           (coe v6)))
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v17)
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                           (coe
                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v0))
                                           (coe v7)))
                                     (coe v11) (coe v15) (coe v17) (coe v6) (coe v7))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38 v12
        -> case coe v1 of
             (:) v13 v14
               -> case coe v14 of
                    (:) v15 v16
                      -> case coe v2 of
                           (:) v17 v18
                             -> case coe v18 of
                                  (:) v19 v20
                                    -> case coe v4 of
                                         []
                                           -> case coe v5 of
                                                []
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                                       v12
                                                (:) v21 v22
                                                  -> case coe v22 of
                                                       []
                                                         -> coe
                                                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                                              v12
                                                       (:) v23 v24
                                                         -> coe
                                                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
                                                                 (coe
                                                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                    (coe v24)
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                                          (coe v13))
                                                                       (coe v7)))
                                                                 v12
                                                                 (coe
                                                                    du_shift_428 (coe v13) (coe v24)
                                                                    (coe v7)))
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         (:) v21 v22
                                           -> case coe v22 of
                                                []
                                                  -> case coe v5 of
                                                       []
                                                         -> coe
                                                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                                              v12
                                                       (:) v23 v24
                                                         -> case coe v24 of
                                                              []
                                                                -> coe
                                                                     MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                                                     v12
                                                              (:) v25 v26
                                                                -> coe
                                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                                                     (\ v27 v28 v29 ->
                                                                        coe
                                                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                                                          v29)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe v13) (coe v16))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe v15)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe v13)
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                              (coe v26) (coe v7))))
                                                                     (coe
                                                                        MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'prep_146
                                                                        (coe v13)
                                                                        (coe
                                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                           (coe v26)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe v15)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                 (coe v22)
                                                                                 (coe v7))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe v15)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe v13)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                 (coe v26)
                                                                                 (coe v7))))
                                                                        (coe
                                                                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'prep_146
                                                                           (coe v13)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe v15)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                 (coe v26)
                                                                                 (coe v7)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe v15)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe v13)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                    (coe v26)
                                                                                    (coe v7))))
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'swap_166
                                                                              (coe v13) (coe v15)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                 (coe v26) (coe v7))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe v15)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                       (coe v26)
                                                                                       (coe v7))))
                                                                              (let v27
                                                                                     = \ v27 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                                                       (coe v27))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                       (coe v15)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                          (coe v13)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                             (coe
                                                                                                v26)
                                                                                             (coe
                                                                                                v7))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20))
                                                                           (coe
                                                                              du_shift_428 (coe v15)
                                                                              (coe v26) (coe v7)))
                                                                        (coe v12))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                (:) v23 v24
                                                  -> case coe v5 of
                                                       []
                                                         -> coe
                                                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
                                                                 (coe
                                                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                    (coe v24)
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                                          (coe v15))
                                                                       (coe v6)))
                                                                 (coe
                                                                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                       (coe v24)
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                          (coe
                                                                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                                             (coe v15))
                                                                          (coe v6)))
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe v15) (coe v24))
                                                                       (coe v6))
                                                                    (coe
                                                                       du_shift_428 (coe v15)
                                                                       (coe v24) (coe v6)))
                                                                 v12)
                                                       (:) v25 v26
                                                         -> case coe v26 of
                                                              []
                                                                -> coe
                                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                                                     (\ v27 v28 v29 ->
                                                                        coe
                                                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                                                          v29)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe v13)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe v15)
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                              (coe v24) (coe v6))))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe v15) (coe v20))
                                                                     (coe
                                                                        MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'swap_166
                                                                        (coe v13) (coe v15)
                                                                        (coe
                                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                           (coe v24) (coe v6))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe v15) (coe v20))
                                                                        (coe
                                                                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'prep_146
                                                                           (coe v15)
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                              (coe v24)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe v13)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                    (coe v26)
                                                                                    (coe v6))))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe v15) (coe v20))
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'prep_146
                                                                              (coe v15) (coe v20)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe v15)
                                                                                 (coe v20))
                                                                              (let v27
                                                                                     = \ v27 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                                                       (coe v27))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                       (coe v15)
                                                                                       (coe v20))))
                                                                              (coe v12))
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                 (coe v24)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                       (coe v26)
                                                                                       (coe v6))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe v13)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                    (coe v24)
                                                                                    (coe v6)))
                                                                              (coe
                                                                                 du_shift_428
                                                                                 (coe v13) (coe v24)
                                                                                 (coe v6))))
                                                                        (coe
                                                                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20))
                                                              (:) v27 v28
                                                                -> coe
                                                                     MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38
                                                                     (coe
                                                                        du_drop'45'mid'8242'_538
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                           (coe v24)
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                                                 (coe v0))
                                                                              (coe v6)))
                                                                        (coe
                                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                           (coe v28)
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                                                 (coe v0))
                                                                              (coe v7)))
                                                                        (coe v12) (coe v24)
                                                                        (coe v28) (coe v6) (coe v7))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46 v9 v11 v12
        -> let v13
                 = coe
                     MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45''8707''43''43'_860
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                     (coe v9)
                     (coe
                        du_Any'45'resp'45''8621'_134
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                              (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v0))
                              (coe v6)))
                        (coe v9) (coe v11)
                        (coe
                           MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'insert_220
                           (coe v0) (coe v4))) in
           coe
             (case coe v13 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                  -> case coe v15 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                         -> case coe v17 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                -> let v20
                                         = seq
                                             (coe v19)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe v14)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) erased)) in
                                   coe
                                     (case coe v20 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                          -> case coe v22 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                 -> coe
                                                      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                         (coe v21) (coe v23))
                                                      (coe
                                                         du_drop'45'mid'8242'_538 (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                                  (coe v0))
                                                               (coe v6)))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                            (coe v21)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe v0) (coe v23)))
                                                         (coe v11) (coe v4) (coe v21) (coe v6)
                                                         (coe v23))
                                                      (coe
                                                         du_drop'45'mid'8242'_538 (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                            (coe v21)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe v0) (coe v23)))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                            (coe v5)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe v0) (coe v7)))
                                                         (coe v12) (coe v21) (coe v5) (coe v23)
                                                         (coe v7))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++-identityˡ
d_'43''43''45'identity'737'_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'43''43''45'identity'737'_730 ~v0 ~v1 ~v2
  = du_'43''43''45'identity'737'_730
du_'43''43''45'identity'737'_730 ::
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'43''43''45'identity'737'_730
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++-identityʳ
d_'43''43''45'identity'691'_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'43''43''45'identity'691'_734 ~v0 ~v1 ~v2
  = du_'43''43''45'identity'691'_734
du_'43''43''45'identity'691'_734 ::
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'43''43''45'identity'691'_734
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'reflexive_48
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++-identity
d_'43''43''45'identity_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''43''45'identity_738 ~v0 ~v1 = du_'43''43''45'identity_738
du_'43''43''45'identity_738 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'43''43''45'identity_738
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'43''43''45'identity'737'_730)
      (\ v0 -> coe du_'43''43''45'identity'691'_734)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++-assoc
d_'43''43''45'assoc_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'43''43''45'assoc_740 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'43''43''45'assoc_740
du_'43''43''45'assoc_740 ::
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'43''43''45'assoc_740
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'reflexive_48
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++-comm
d_'43''43''45'comm_748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'43''43''45'comm_748 ~v0 ~v1 v2 v3
  = du_'43''43''45'comm_748 v2 v3
du_'43''43''45'comm_748 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'43''43''45'comm_748 v0 v1
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v0))
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1))
             (coe du_'43''43''45'identity'691'_734)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v4 v5 v6 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3) (coe v1)))
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v0))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'prep_146
                (coe v2)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v0))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (\ v4 v5 v6 v7 v8 ->
                         coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                           v4 v5 v7 v8))
                   (coe
                      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56)
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v3)))
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v0))
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v0))
                   (let v4
                          = \ v4 ->
                              coe
                                MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe v4))
                         (coe
                            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v0))))
                   (coe du_shift_428 (coe v2) (coe v1) (coe v3)))
                (coe du_'43''43''45'comm_748 (coe v3) (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++-isMagma
d_'43''43''45'isMagma_762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'43''43''45'isMagma_762 ~v0 ~v1 = du_'43''43''45'isMagma_762
du_'43''43''45'isMagma_762 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'43''43''45'isMagma_762
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'isEquivalence_82)
      (\ v0 v1 v2 v3 v4 v5 -> coe du_'43''43''8314'_384 v0 v1 v2 v4 v5)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++-isSemigroup
d_'43''43''45'isSemigroup_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'43''43''45'isSemigroup_764 ~v0 ~v1
  = du_'43''43''45'isSemigroup_764
du_'43''43''45'isSemigroup_764 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'43''43''45'isSemigroup_764
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe du_'43''43''45'isMagma_762)
      (\ v0 v1 v2 -> coe du_'43''43''45'assoc_740)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++-isMonoid
d_'43''43''45'isMonoid_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''43''45'isMonoid_766 ~v0 ~v1 = du_'43''43''45'isMonoid_766
du_'43''43''45'isMonoid_766 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'43''43''45'isMonoid_766
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe du_'43''43''45'isSemigroup_764)
      (coe du_'43''43''45'identity_738)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++-isCommutativeMonoid
d_'43''43''45'isCommutativeMonoid_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''43''45'isCommutativeMonoid_768 ~v0 ~v1
  = du_'43''43''45'isCommutativeMonoid_768
du_'43''43''45'isCommutativeMonoid_768 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'43''43''45'isCommutativeMonoid_768
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe du_'43''43''45'isMonoid_766) (coe du_'43''43''45'comm_748)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties._.++-magma
d_'43''43''45'magma_778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Bundles.T_Magma_68
d_'43''43''45'magma_778 ~v0 ~v1 = du_'43''43''45'magma_778
du_'43''43''45'magma_778 :: MAlonzo.Code.Algebra.Bundles.T_Magma_68
du_'43''43''45'magma_778
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1279
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe du_'43''43''45'isMagma_762)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties._.++-semigroup
d_'43''43''45'semigroup_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_536
d_'43''43''45'semigroup_780 ~v0 ~v1 = du_'43''43''45'semigroup_780
du_'43''43''45'semigroup_780 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_536
du_'43''43''45'semigroup_780
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9793
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe du_'43''43''45'isSemigroup_764)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties._.++-monoid
d_'43''43''45'monoid_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_'43''43''45'monoid_782 ~v0 ~v1 = du_'43''43''45'monoid_782
du_'43''43''45'monoid_782 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
du_'43''43''45'monoid_782
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16157
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe du_'43''43''45'isMonoid_766)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties._.++-commutativeMonoid
d_'43''43''45'commutativeMonoid_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_'43''43''45'commutativeMonoid_784 ~v0 ~v1
  = du_'43''43''45'commutativeMonoid_784
du_'43''43''45'commutativeMonoid_784 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
du_'43''43''45'commutativeMonoid_784
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17931
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe du_'43''43''45'isCommutativeMonoid_768)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.shifts
d_shifts_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_shifts_792 ~v0 ~v1 v2 v3 v4 = du_shifts_792 v2 v3 v4
du_shifts_792 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_shifts_792 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (\ v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                 v3 v4 v6 v7))
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0)
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1))
            (coe v2))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v2)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (\ v3 v4 v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                    v3 v4 v6 v7))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1))
               (coe v2))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v0))
               (coe v2))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v2)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (\ v3 v4 v5 v6 v7 ->
                     coe
                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                       v3 v4 v6 v7))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v0))
                  (coe v2))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v2)))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v2)))
               (let v3
                      = \ v3 ->
                          coe
                            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v3))
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v2)))))
               (coe du_'43''43''45'assoc_740))
            (coe
               du_'43''43''8314''691'_360
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v0))
               (coe v2) (coe du_'43''43''45'comm_748 (coe v0) (coe v1))))
         (coe du_'43''43''45'assoc_740))
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.drop-∷
d_drop'45''8759'_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_drop'45''8759'_810 ~v0 ~v1 v2 v3 v4
  = du_drop'45''8759'_810 v2 v3 v4
du_drop'45''8759'_810 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_drop'45''8759'_810 v0 v1 v2
  = coe
      du_drop'45'mid_510 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)
      (coe v2)
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.∷↭∷ʳ
d_'8759''8621''8759''691'_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'8759''8621''8759''691'_816 ~v0 ~v1 v2 v3
  = du_'8759''8621''8759''691'_816 v2 v3
du_'8759''8621''8759''691'_816 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'8759''8621''8759''691'_816 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
      (coe
         MAlonzo.Code.Data.List.Base.du__'8759''691'__464 (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (\ v2 v3 v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                    v2 v3 v5 v6))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
               (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v2 v3 v4 v5 v6 -> v6)
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
               (let v2
                      = \ v2 ->
                          coe
                            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v2))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))))
               erased)
            (coe
               du_shift_428 (coe v0) (coe v1)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.++↭ʳ++
d_'43''43''8621''691''43''43'_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'43''43''8621''691''43''43'_830 ~v0 ~v1 v2 v3
  = du_'43''43''8621''691''43''43'_830 v2 v3
du_'43''43''8621''691''43''43'_830 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'43''43''8621''691''43''43'_830 v0 v1
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1))
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                   (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2))
                   (coe v1)))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32
                      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2))
                      (coe v1)))
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1))
                (coe du_shift_428 (coe v2) (coe v3) (coe v1)))
             (coe
                du_'43''43''8621''691''43''43'_830 (coe v3)
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.↭-reverse
d_'8621''45'reverse_842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'8621''45'reverse_842 ~v0 ~v1 v2 = du_'8621''45'reverse_842 v2
du_'8621''45'reverse_842 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'8621''45'reverse_842 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50
      (:) v1 v2
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v3 v4 v5 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
             (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v0) v0
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                (\ v3 v4 v5 v6 v7 -> v7)
                (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v0)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'8759''691'__464
                   (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v2) (coe v1))
                v0
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (\ v3 v4 v5 v6 v7 ->
                         coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                           v3 v4 v6 v7))
                   (coe
                      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'8759''691'__464
                      (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v2) (coe v1))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                      (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v2))
                   v0
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (\ v3 v4 v5 v6 v7 ->
                            coe
                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                              v3 v4 v6 v7))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                         (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v2))
                      v0 v0
                      (let v3
                             = \ v3 ->
                                 coe
                                   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                               (coe v3))
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                         (coe du_'8621''45'reverse_842 (coe v2))))
                   (coe
                      du_'8759''8621''8759''691'_816 (coe v1)
                      (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v2)))
                erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties._.merge-↭
d_merge'45''8621'_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_merge'45''8621'_868 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_merge'45''8621'_868 v4 v5 v6
du_merge'45''8621'_868 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_merge'45''8621'_868 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             seq (coe v2)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50)
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))
                    (coe
                       MAlonzo.Code.Data.List.Base.du_merge_192 (coe v0) (coe v1)
                       (coe v2))
                    (coe du_'43''43''45'identity'691'_734)
             (:) v5 v6
               -> let v7
                        = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                            (coe v0 v3 v5) in
                  coe
                    (let v8 = coe du_merge'45''8621'_868 (coe v0) (coe v4) (coe v2) in
                     coe
                       (let v9 = coe du_merge'45''8621'_868 (coe v0) (coe v1) (coe v6) in
                        coe
                          (if coe v7
                             then coe
                                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                    v8
                             else coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                    (\ v10 v11 v12 ->
                                       coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                         v12)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_merge_192 (coe v0) (coe v1)
                                          (coe v6)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                                          (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'prep_146
                                       (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                                             (coe v6)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                                             (coe v2)))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                             (\ v10 v11 v12 v13 v14 ->
                                                coe
                                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                                                  v10 v11 v13 v14))
                                          (coe
                                             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                   (coe v4) (coe v6))))
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
                                             (coe v2))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                (coe v4) (coe v2)))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                             (\ v10 v11 v12 v13 v14 -> v14)
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                (coe v1) (coe v2))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                   (coe v4) (coe v2)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                   (coe v4) (coe v2)))
                                             (let v10
                                                    = \ v10 ->
                                                        coe
                                                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                      (coe v10))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe v3)
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                         (coe v4) (coe v2)))))
                                             erased)
                                          (coe du_shift_428 (coe v5) (coe v1) (coe v6)))
                                       (coe v9)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.product-↭
d_product'45''8621'_914 ::
  [Integer] ->
  [Integer] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_product'45''8621'_914 = erased
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.catMaybes-↭
d_catMaybes'45''8621'_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [Maybe AgdaAny] ->
  [Maybe AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_catMaybes'45''8621'_940 ~v0 ~v1 v2 v3 v4
  = du_catMaybes'45''8621'_940 v2 v3 v4
du_catMaybes'45''8621'_940 ::
  [Maybe AgdaAny] ->
  [Maybe AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_catMaybes'45''8621'_940 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28 v6
        -> case coe v0 of
             (:) v7 v8
               -> case coe v1 of
                    (:) v9 v10
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v11
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                  (coe du_catMaybes'45''8621'_940 (coe v8) (coe v10) (coe v6))
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe du_catMaybes'45''8621'_940 (coe v8) (coe v10) (coe v6)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38 v7
        -> case coe v0 of
             (:) v8 v9
               -> case coe v9 of
                    (:) v10 v11
                      -> case coe v1 of
                           (:) v12 v13
                             -> case coe v13 of
                                  (:) v14 v15
                                    -> case coe v8 of
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                                           -> case coe v10 of
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38
                                                       (coe
                                                          du_catMaybes'45''8621'_940 (coe v11)
                                                          (coe v15) (coe v7))
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                                       (coe
                                                          du_catMaybes'45''8621'_940 (coe v11)
                                                          (coe v15) (coe v7))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                           -> case coe v10 of
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28
                                                       (coe
                                                          du_catMaybes'45''8621'_940 (coe v11)
                                                          (coe v15) (coe v7))
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  -> coe
                                                       du_catMaybes'45''8621'_940 (coe v11)
                                                       (coe v15) (coe v7)
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46 v4 v6 v7
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46
             (coe MAlonzo.Code.Data.List.Base.du_catMaybes_256 v4)
             (coe du_catMaybes'45''8621'_940 (coe v0) (coe v4) (coe v6))
             (coe du_catMaybes'45''8621'_940 (coe v4) (coe v1) (coe v7))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.Properties.mapMaybe-↭
d_mapMaybe'45''8621'_970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_mapMaybe'45''8621'_970 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_mapMaybe'45''8621'_970 v4 v5 v6 v7
du_mapMaybe'45''8621'_970 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_mapMaybe'45''8621'_970 v0 v1 v2 v3
  = coe
      du_catMaybes'45''8621'_940
      (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v2) (coe v0))
      (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v2) (coe v1))
      (coe du_map'8314'_256 (coe v2) (coe v0) (coe v1) (coe v3))
