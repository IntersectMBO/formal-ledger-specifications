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

module MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Consequences.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.∷-injectiveˡ
d_'8759''45'injective'737'_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''45'injective'737'_86 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.∷-injectiveʳ
d_'8759''45'injective'691'_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''45'injective'691'_96 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.∷ʳ-injective
d_'8759''691''45'injective_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''691''45'injective_102 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.length-mono-≤
d_length'45'mono'45''8804'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45'mono'45''8804'_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_length'45'mono'45''8804'_116 v6 v7 v8
du_length'45'mono'45''8804'_116 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45'mono'45''8804'_116 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v6
        -> case coe v1 of
             (:) v7 v8
               -> coe du_length'45'mono'45''8804'_116 (coe v0) (coe v8) (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                           (coe du_length'45'mono'45''8804'_116 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.fromPointwise
d_fromPointwise_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_fromPointwise_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_fromPointwise_126 v6 v7 v8
du_fromPointwise_126 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_fromPointwise_126 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                           v7 (coe du_fromPointwise_126 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.toPointwise
d_toPointwise_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_toPointwise_132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 v9
  = du_toPointwise_132 v6 v7 v9
du_toPointwise_132 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_toPointwise_132 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             seq (coe v2)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56)
      (:) v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                    erased
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v9 v10
               -> case coe v0 of
                    (:) v11 v12
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                           v9 (coe du_toPointwise_132 (coe v12) (coe v4) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.tail-Sublist
d_tail'45'Sublist_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_tail'45'Sublist_168 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_tail'45'Sublist_168 v6 v7 v8
du_tail'45'Sublist_168 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_tail'45'Sublist_168 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_nothing_32
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v6
        -> case coe v1 of
             (:) v7 v8
               -> coe
                    MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_map_60
                    (coe
                       (\ v9 ->
                          coe
                            MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36))
                    (coe MAlonzo.Code.Data.List.Base.du_tail_536 (coe v0))
                    (coe du_tail'45'Sublist_168 (coe v0) (coe v8) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v7 v8
        -> coe
             MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_just_30
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                v8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.take-Sublist
d_take'45'Sublist_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_take'45'Sublist_182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_take'45'Sublist_182 v6 v7 v8 v9
du_take'45'Sublist_182 ::
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_take'45'Sublist_182 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
              (coe v1) in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
           -> case coe v2 of
                0 -> coe
                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                       (coe v1)
                _ -> coe v3
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v8
           -> case coe v1 of
                (:) v9 v10
                  -> coe
                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                       (coe du_take'45'Sublist_182 (coe v0) (coe v10) (coe v2) (coe v8))
                _ -> coe v4
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v9 v10
           -> let v11
                    = case coe v2 of
                        0 -> coe
                               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                               (coe v1)
                        _ -> coe v4 in
              coe
                (case coe v0 of
                   (:) v12 v13
                     -> let v14
                              = case coe v2 of
                                  0 -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                                         (coe v1)
                                  _ -> coe v4 in
                        coe
                          (case coe v1 of
                             (:) v15 v16
                               -> case coe v2 of
                                    0 -> coe
                                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                                           (coe v1)
                                    _ -> let v17 = subInt (coe v2) (coe (1 :: Integer)) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                              v9
                                              (coe
                                                 du_take'45'Sublist_182 (coe v13) (coe v16)
                                                 (coe v17) (coe v10)))
                             _ -> coe v14)
                   _ -> coe v11)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.drop-Sublist
d_drop'45'Sublist_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'45'Sublist_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_drop'45'Sublist_202 v6 v7 v8 v9
du_drop'45'Sublist_202 ::
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'45'Sublist_202 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe seq (coe v0) (coe v3)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v7
        -> case coe v2 of
             (:) v8 v9
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                    (coe du_drop'45'Sublist_202 (coe v0) (coe v1) (coe v9) (coe v7))
             _ -> coe v3
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v8 v9
        -> let v10
                 = case coe v0 of
                     0 -> coe
                            MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                            v8 v9
                     _ -> coe v3 in
           coe
             (case coe v1 of
                (:) v11 v12
                  -> let v13
                           = case coe v0 of
                               0 -> coe
                                      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                      v8 v9
                               _ -> coe v3 in
                     coe
                       (case coe v2 of
                          (:) v14 v15
                            -> case coe v0 of
                                 0 -> coe
                                        MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                        v8 v9
                                 _ -> let v16 = subInt (coe v0) (coe (1 :: Integer)) in
                                      coe
                                        (coe
                                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                           (coe
                                              du_drop'45'Sublist_202 (coe v16) (coe v12) (coe v15)
                                              (coe v9)))
                          _ -> coe v13)
                _ -> coe v10)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.takeWhile-Sublist
d_takeWhile'45'Sublist_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'45'Sublist_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                           v10 v11
  = du_takeWhile'45'Sublist_238 v8 v9 v10 v11
du_takeWhile'45'Sublist_238 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'45'Sublist_238 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe v3
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v7
        -> case coe v2 of
             (:) v8 v9
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                    (coe
                       du_takeWhile'45'Sublist_238 (coe v0) (coe v1) (coe v9) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> let v14
                               = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                   (coe v0 v10) in
                         coe
                           (if coe v14
                              then coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                     v8
                                     (coe
                                        du_takeWhile'45'Sublist_238 (coe v0) (coe v11) (coe v13)
                                        (coe v9))
                              else coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                                     (coe v2))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.dropWhile-Sublist
d_dropWhile'45'Sublist_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_dropWhile'45'Sublist_272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                           v10 v11
  = du_dropWhile'45'Sublist_272 v8 v9 v10 v11
du_dropWhile'45'Sublist_272 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_dropWhile'45'Sublist_272 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe v3
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v7
        -> case coe v2 of
             (:) v8 v9
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                    (coe
                       du_dropWhile'45'Sublist_272 (coe v0) (coe v1) (coe v9) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> let v14
                               = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                   (coe v0 v10) in
                         coe
                           (if coe v14
                              then coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                     (coe
                                        du_dropWhile'45'Sublist_272 (coe v0) (coe v11) (coe v13)
                                        (coe v9))
                              else coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                     v8 v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.filter-Sublist
d_filter'45'Sublist_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'45'Sublist_306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
                        v11
  = du_filter'45'Sublist_306 v8 v9 v10 v11
du_filter'45'Sublist_306 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'45'Sublist_306 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe v3
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v7
        -> case coe v2 of
             (:) v8 v9
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                    (coe du_filter'45'Sublist_306 (coe v0) (coe v1) (coe v9) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> let v14
                               = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                   (coe v0 v10) in
                         coe
                           (if coe v14
                              then coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                     v8
                                     (coe
                                        du_filter'45'Sublist_306 (coe v0) (coe v11) (coe v13)
                                        (coe v9))
                              else coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                     (coe
                                        du_filter'45'Sublist_306 (coe v0) (coe v11) (coe v13)
                                        (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.∷ˡ⁻
d_'8759''737''8315'_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''737''8315'_352 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8759''737''8315'_352 v8 v9
du_'8759''737''8315'_352 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''737''8315'_352 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v5
        -> case coe v0 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                    (coe du_'8759''737''8315'_352 (coe v7) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v6 v7
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
             v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.∷ʳ⁻
d_'8759''691''8315'_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''691''8315'_362 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 v11
  = du_'8759''691''8315'_362 v11
du_'8759''691''8315'_362 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''691''8315'_362 v0
  = case coe v0 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v4
        -> coe v4
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v5 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.∷⁻
d_'8759''8315'_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''8315'_376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_'8759''8315'_376 v9 v10
du_'8759''8315'_376 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''8315'_376 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v5
        -> coe du_'8759''737''8315'_352 (coe v0) (coe v5)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v6 v7
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.map⁺
d_map'8314'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_map'8314'_406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11
                ~v12 ~v13 v14
  = du_map'8314'_406 v10 v11 v14
du_map'8314'_406 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_map'8314'_406 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe v2
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v6
        -> case coe v1 of
             (:) v7 v8
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                    (coe du_map'8314'_406 (coe v0) (coe v8) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                           v7 (coe du_map'8314'_406 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.map⁻
d_map'8315'_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_map'8315'_436 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11
                ~v12 ~v13 v14
  = du_map'8315'_436 v10 v11 v14
du_map'8315'_436 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_map'8315'_436 v0 v1 v2
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
             (coe v1)
      (:) v3 v4
        -> case coe v1 of
             (:) v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v10
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                           (coe du_map'8315'_436 (coe v0) (coe v6) (coe v10))
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v11 v12
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                           v11 (coe du_map'8315'_436 (coe v4) (coe v6) (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.++⁺
d_'43''43''8314'_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314'_488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 ~v9 v10 v11
  = du_'43''43''8314'_488 v6 v7 v10 v11
du_'43''43''8314'_488 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314'_488 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe v3
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v7
        -> case coe v1 of
             (:) v8 v9
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                    (coe du_'43''43''8314'_488 (coe v0) (coe v9) (coe v7) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v8 v9
        -> case coe v0 of
             (:) v10 v11
               -> case coe v1 of
                    (:) v12 v13
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                           v8
                           (coe du_'43''43''8314'_488 (coe v11) (coe v13) (coe v9) (coe v3))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.++⁻
d_'43''43''8315'_504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8315'_504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 v9 ~v10 v11
  = du_'43''43''8315'_504 v6 v7 v9 v11
du_'43''43''8315'_504 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8315'_504 v0 v1 v2 v3
  = case coe v0 of
      [] -> coe seq (coe v1) (coe v3)
      (:) v4 v5
        -> case coe v1 of
             (:) v6 v7
               -> coe
                    du_'43''43''8315'_504 (coe v5) (coe v7) (coe v2)
                    (coe
                       du_'8759''8315'_376
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7) (coe v2))
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.++ˡ
d_'43''43''737'_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''737'_524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'43''43''737'_524 v8
du_'43''43''737'_524 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''737'_524 v0
  = coe
      du_'43''43''8314'_488
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
         (coe v0))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.++ʳ
d_'43''43''691'_530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''691'_530 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_'43''43''691'_530 v6 v7 v8 v9
du_'43''43''691'_530 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''691'_530 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
             (coe v2)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v7
        -> case coe v1 of
             (:) v8 v9
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                    (coe du_'43''43''691'_530 (coe v0) (coe v9) (coe v2) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v8 v9
        -> case coe v0 of
             (:) v10 v11
               -> case coe v1 of
                    (:) v12 v13
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                           v8 (coe du_'43''43''691'_530 (coe v11) (coe v13) (coe v2) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.concat⁺
d_concat'8314'_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_concat'8314'_546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_concat'8314'_546 v6 v7 v8
du_concat'8314'_546 ::
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_concat'8314'_546 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe v2
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v6
        -> case coe v1 of
             (:) v7 v8
               -> coe
                    du_'43''43''737'_524 v7
                    (coe du_concat'8314'_546 (coe v0) (coe v8) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           du_'43''43''8314'_488 (coe v9) (coe v11) (coe v7)
                           (coe du_concat'8314'_546 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.take⁺
d_take'8314'_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_take'8314'_556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10 v11
  = du_take'8314'_556 v7 v8 v9 v10 v11
du_take'8314'_556 ::
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_take'8314'_556 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
             (coe MAlonzo.Code.Data.List.Base.du_take_546 (coe v0) (coe v2))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
        -> let v8 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56
                  -> coe
                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
                MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v13 v14
                  -> case coe v1 of
                       (:) v15 v16
                         -> case coe v2 of
                              (:) v17 v18
                                -> coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                     v13
                                     (coe
                                        du_take'8314'_556 (coe v8) (coe v16) (coe v18) (coe v7)
                                        (coe v14))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.drop⁺
d_drop'8314'_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314'_568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 v9 v10 v11
  = du_drop'8314'_568 v6 v8 v9 v10 v11
du_drop'8314'_568 ::
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314'_568 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe du_drop'45'Sublist_202 (coe v0) (coe v1) (coe v2) (coe v4)
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
        -> let v8 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
                  -> coe v4
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v12
                  -> case coe v2 of
                       (:) v13 v14
                         -> coe
                              du_drop'8314'_568 (coe v0) (coe v1) (coe v14) (coe v7) (coe v12)
                       _ -> MAlonzo.RTE.mazUnreachableError
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v13 v14
                  -> case coe v1 of
                       (:) v15 v16
                         -> case coe v2 of
                              (:) v17 v18
                                -> coe
                                     du_drop'8314'_568 (coe v8) (coe v16) (coe v18) (coe v7)
                                     (coe v14)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.drop⁺-≥
d_drop'8314''45''8805'_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314''45''8805'_588 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 v9 v10
                           v11
  = du_drop'8314''45''8805'_588 v6 v8 v9 v10 v11
du_drop'8314''45''8805'_588 ::
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314''45''8805'_588 v0 v1 v2 v3 v4
  = coe
      du_drop'8314'_568 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe du_fromPointwise_126 (coe v1) (coe v2) (coe v4))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.drop⁺-⊆
d_drop'8314''45''8838'_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314''45''8838'_596 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_drop'8314''45''8838'_596 v6 v7 v8
du_drop'8314''45''8838'_596 ::
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314''45''8838'_596 v0 v1 v2
  = coe
      du_drop'8314'_568 (coe v2) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2776 (coe v2))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.⊆-takeWhile-Sublist
d_'8838''45'takeWhile'45'Sublist_628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'takeWhile'45'Sublist_628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 v10 v11 v12 v13 ~v14 v15
  = du_'8838''45'takeWhile'45'Sublist_628 v10 v11 v12 v13 v15
du_'8838''45'takeWhile'45'Sublist_628 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'takeWhile'45'Sublist_628 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v9 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v3 of
                    (:) v13 v14
                      -> let v15 = coe v0 v11 in
                         coe
                           (let v16 = coe v1 v13 in
                            coe
                              (case coe v15 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                   -> if coe v17
                                        then case coe v16 of
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                 -> if coe v19
                                                      then coe
                                                             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                                             v9
                                                             (coe
                                                                du_'8838''45'takeWhile'45'Sublist_628
                                                                (coe v0) (coe v1) (coe v12)
                                                                (coe v14) (coe v10))
                                                      else coe
                                                             seq (coe v18)
                                                             (coe
                                                                seq (coe v20)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                   erased))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                                               (let v19
                                                      = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                                          (coe v16) in
                                                coe
                                                  (if coe v19
                                                     then coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_takeWhile_600
                                                               (coe v1) (coe v14))
                                                     else coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                 _ -> MAlonzo.RTE.mazUnreachableError))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.⊇-dropWhile-Sublist
d_'8839''45'dropWhile'45'Sublist_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8839''45'dropWhile'45'Sublist_700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 v10 v11 v12 v13 ~v14 v15
  = du_'8839''45'dropWhile'45'Sublist_700 v10 v11 v12 v13 v15
du_'8839''45'dropWhile'45'Sublist_700 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8839''45'dropWhile'45'Sublist_700 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v9 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v3 of
                    (:) v13 v14
                      -> let v15 = coe v0 v11 in
                         coe
                           (let v16 = coe v1 v13 in
                            coe
                              (case coe v15 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                   -> if coe v17
                                        then case coe v16 of
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                 -> if coe v19
                                                      then coe
                                                             du_'8839''45'dropWhile'45'Sublist_700
                                                             (coe v0) (coe v1) (coe v12) (coe v14)
                                                             (coe v10)
                                                      else coe
                                                             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                                             (coe
                                                                du_dropWhile'45'Sublist_272 (coe v0)
                                                                (coe v12) (coe v14)
                                                                (coe
                                                                   du_fromPointwise_126 (coe v12)
                                                                   (coe v14) (coe v10)))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else (case coe v16 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                  -> if coe v19
                                                       then coe
                                                              seq (coe v18)
                                                              (coe
                                                                 seq (coe v20)
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                    erased))
                                                       else coe
                                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                                              v9
                                                              (coe
                                                                 du_fromPointwise_126 (coe v12)
                                                                 (coe v14) (coe v10))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                 _ -> MAlonzo.RTE.mazUnreachableError))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.⊆-filter-Sublist
d_'8838''45'filter'45'Sublist_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'filter'45'Sublist_786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 ~v9 v10 v11 v12 v13 ~v14 v15
  = du_'8838''45'filter'45'Sublist_786 v10 v11 v12 v13 v15
du_'8838''45'filter'45'Sublist_786 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'filter'45'Sublist_786 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe v4
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v8
        -> case coe v3 of
             (:) v9 v10
               -> let v11
                        = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                            (coe v1 v9) in
                  coe
                    (if coe v11
                       then coe
                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                              (coe
                                 du_'8838''45'filter'45'Sublist_786 (coe v0) (coe v1) (coe v2)
                                 (coe v10) (coe v8))
                       else coe
                              du_'8838''45'filter'45'Sublist_786 (coe v0) (coe v1) (coe v2)
                              (coe v10) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v9 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v3 of
                    (:) v13 v14
                      -> let v15 = coe v0 v11 in
                         coe
                           (let v16 = coe v1 v13 in
                            coe
                              (case coe v15 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                   -> if coe v17
                                        then case coe v16 of
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                 -> if coe v19
                                                      then coe
                                                             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                                             v9
                                                             (coe
                                                                du_'8838''45'filter'45'Sublist_786
                                                                (coe v0) (coe v1) (coe v12)
                                                                (coe v14) (coe v10))
                                                      else coe
                                                             seq (coe v18)
                                                             (coe
                                                                seq (coe v20)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                   erased))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else (case coe v16 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                  -> if coe v19
                                                       then coe
                                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                                              (coe
                                                                 du_'8838''45'filter'45'Sublist_786
                                                                 (coe v0) (coe v1) (coe v12)
                                                                 (coe v14) (coe v10))
                                                       else coe
                                                              du_'8838''45'filter'45'Sublist_786
                                                              (coe v0) (coe v1) (coe v12) (coe v14)
                                                              (coe v10)
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                 _ -> MAlonzo.RTE.mazUnreachableError))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.takeWhile-filter
d_takeWhile'45'filter_906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'45'filter_906 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_takeWhile'45'filter_906 v6 v7 v8
du_takeWhile'45'filter_906 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'45'filter_906 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v7 v8
        -> case coe v1 of
             (:) v9 v10
               -> let v11
                        = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                            (coe v0 v9) in
                  coe
                    (if coe v11
                       then coe
                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                              v7 (coe du_takeWhile'45'filter_906 (coe v0) (coe v10) (coe v8))
                       else coe
                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                              (coe MAlonzo.Code.Data.List.Base.du_filter_664 (coe v0) (coe v10)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.filter-dropWhile
d_filter'45'dropWhile_936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'45'dropWhile_936 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_filter'45'dropWhile_936 v6 v7 v8
du_filter'45'dropWhile_936 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'45'dropWhile_936 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v7 v8
        -> case coe v1 of
             (:) v9 v10
               -> let v11
                        = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                            (coe v0 v9) in
                  coe
                    (if coe v11
                       then coe
                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                              v7
                              (coe
                                 du_filter'45'Sublist_306 (coe v0) (coe v10) (coe v10)
                                 (coe du_fromPointwise_126 (coe v10) (coe v10) (coe v8)))
                       else coe du_filter'45'dropWhile_936 (coe v0) (coe v10) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.reverseAcc⁺
d_reverseAcc'8314'_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverseAcc'8314'_978 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 ~v9 v10
                       v11
  = du_reverseAcc'8314'_978 v6 v7 v10 v11
du_reverseAcc'8314'_978 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverseAcc'8314'_978 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe v3
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v7
        -> case coe v1 of
             (:) v8 v9
               -> coe
                    du_reverseAcc'8314'_978 (coe v0) (coe v9) (coe v7)
                    (coe
                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                       v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v8 v9
        -> case coe v0 of
             (:) v10 v11
               -> case coe v1 of
                    (:) v12 v13
                      -> coe
                           du_reverseAcc'8314'_978 (coe v11) (coe v13) (coe v9)
                           (coe
                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                              v8 v3)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.ʳ++⁺
d_'691''43''43''8314'_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'691''43''43''8314'_994 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 ~v9
  = du_'691''43''43''8314'_994 v6 v7
du_'691''43''43''8314'_994 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'691''43''43''8314'_994 v0 v1
  = coe du_reverseAcc'8314'_978 (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.reverse⁺
d_reverse'8314'_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverse'8314'_996 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_reverse'8314'_996 v6 v7 v8
du_reverse'8314'_996 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverse'8314'_996 v0 v1 v2
  = coe
      du_reverseAcc'8314'_978 (coe v0) (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28)
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.reverse⁻
d_reverse'8315'_1000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverse'8315'_1000 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_reverse'8315'_1000 v6 v7 v8
du_reverse'8315'_1000 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverse'8315'_1000 v0 v1 v2
  = coe
      du_reverse'8314'_996
      (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v0)
      (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v1) (coe v2)
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._._.cast
d_cast_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_cast_1012 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_cast_1012 v9
du_cast_1012 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_cast_1012 v0 = coe v0
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.∷⁻¹
d_'8759''8315''185'_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8759''8315''185'_1026 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_'8759''8315''185'_1026 v9 v10
du_'8759''8315''185'_1026 ::
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8759''8315''185'_1026 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
         v1)
      (coe du_'8759''8315'_376 (coe v0))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.∷ʳ⁻¹
d_'8759''691''8315''185'_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8759''691''8315''185'_1032 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10
  = du_'8759''691''8315''185'_1032
du_'8759''691''8315''185'_1032 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8759''691''8315''185'_1032
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36)
      (coe du_'8759''691''8315'_362)
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.Sublist-[]-irrelevant
d_Sublist'45''91''93''45'irrelevant_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Sublist'45''91''93''45'irrelevant_1050 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.toAny-injective
d_toAny'45'injective_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toAny'45'injective_1064 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.fromAny-injective
d_fromAny'45'injective_1082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromAny'45'injective_1082 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.toAny∘fromAny≗id
d_toAny'8728'fromAny'8791'id_1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toAny'8728'fromAny'8791'id_1094 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.Sublist-[x]-bijection
d_Sublist'45''91'x'93''45'bijection_1100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Bijection_926
d_Sublist'45''91'x'93''45'bijection_1100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 v7
  = du_Sublist'45''91'x'93''45'bijection_1100 v7
du_Sublist'45''91'x'93''45'bijection_1100 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Bijection_926
du_Sublist'45''91'x'93''45'bijection_1100 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'10518'_2288
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_toAny_60
         (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
         (coe
            MAlonzo.Code.Function.Consequences.Propositional.du_strictlySurjective'8658'surjective_40
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_toAny_60
               (coe v0))
            (coe
               MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_fromAny_74
                  (coe v0))
               erased)))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Reflexivity.reflexive
d_reflexive_1112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reflexive_1112 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7
  = du_reflexive_1112 v4 v5
du_reflexive_1112 ::
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reflexive_1112 v0 v1
  = coe
      du_fromPointwise_126 (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_refl_30
         (coe v0) (coe v1))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Reflexivity.refl
d_refl_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_refl_1114 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_refl_1114 v4 v5
du_refl_1114 ::
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_refl_1114 v0 v1 = coe du_reflexive_1112 (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Transitivity.trans
d_trans_1138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_trans_1138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
             v13 v14 v15 v16 v17
  = du_trans_1138 v12 v13 v14 v15 v16 v17
du_trans_1138 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_trans_1138 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe seq (coe v4) (coe v5)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v9
        -> case coe v3 of
             (:) v10 v11
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                    (coe
                       du_trans_1138 (coe v0) (coe v1) (coe v2) (coe v11) (coe v4)
                       (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v3 of
                    (:) v14 v15
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v19
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                  (coe
                                     du_trans_1138 (coe v0) (coe v1) (coe v13) (coe v15) (coe v19)
                                     (coe v11))
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v20 v21
                             -> case coe v1 of
                                  (:) v22 v23
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                         (coe v0 v22 v12 v14 v20 v10)
                                         (coe
                                            du_trans_1138 (coe v0) (coe v23) (coe v13) (coe v15)
                                            (coe v21) (coe v11))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Antisymmetry.antisym
d_antisym_1182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_antisym_1182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11 v12
               v13 v14
  = du_antisym_1182 v10 v11 v12 v13 v14
du_antisym_1182 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_antisym_1182 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe
             seq (coe v4)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v8
        -> coe
             seq (coe v4)
             (coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v9 v10
        -> case coe v1 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v18
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                  erased
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v19 v20
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                  (coe v0 v11 v13 v9 v19)
                                  (coe
                                     du_antisym_1182 (coe v0) (coe v12) (coe v14) (coe v10)
                                     (coe v20))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.sublist?
d_sublist'63'_1260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sublist'63'_1260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_sublist'63'_1260 v6 v7 v8
du_sublist'63'_1260 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_sublist'63'_1260 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                   (coe v2)))
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             (:) v5 v6
               -> let v7 = coe v0 v3 v5 in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                         -> if coe v8
                              then coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
                                     (coe
                                        du_'8759''8315''185'_1026 (coe v6)
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38
                                           (coe v9)))
                                     (coe du_sublist'63'_1260 (coe v0) (coe v4) (coe v6))
                              else coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
                                     (coe du_'8759''691''8315''185'_1032)
                                     (coe du_sublist'63'_1260 (coe v0) (coe v1) (coe v6))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.isPreorder
d_isPreorder_1314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPreorder_1314 v6
du_isPreorder_1314 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_1314 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_isEquivalence_56
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe v0)))
      (coe
         (\ v1 v2 v3 ->
            coe
              du_fromPointwise_126 (coe v1) (coe v2)
              (coe
                 MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.du_map_120
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82 (coe v0))
                 (coe v1) (coe v2) (coe v3))))
      (coe
         du_trans_1138
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_84 (coe v0)))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.isPartialOrder
d_isPartialOrder_1356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_isPartialOrder_1356 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialOrder_1356 v6
du_isPartialOrder_1356 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_isPartialOrder_1356 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9853
      (coe
         du_isPreorder_1314
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182 (coe v0)))
      (coe
         du_antisym_1182
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_184 (coe v0)))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties._.isDecPartialOrder
d_isDecPartialOrder_1402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_224 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_224
d_isDecPartialOrder_1402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecPartialOrder_1402 v6
du_isDecPartialOrder_1402 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_224 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_224
du_isDecPartialOrder_1402 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecPartialOrder'46'constructor_11683
      (coe
         du_isPartialOrder_1356
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_234
            (coe v0)))
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_decidable_112
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__236 (coe v0)))
      (coe
         du_sublist'63'_1260
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__238
            (coe v0)))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.preorder
d_preorder_1460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_1460 ~v0 ~v1 ~v2 v3 = du_preorder_1460 v3
du_preorder_1460 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_1460 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2267
      (coe
         du_isPreorder_1314
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.poset
d_poset_1530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_poset_1530 ~v0 ~v1 ~v2 v3 = du_poset_1530 v3
du_poset_1530 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
du_poset_1530 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_6389
      (coe
         du_isPartialOrder_1356
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
            (coe v0)))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.decPoset
d_decPoset_1606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_406
d_decPoset_1606 ~v0 ~v1 ~v2 v3 = du_decPoset_1606 v3
du_decPoset_1606 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_406
du_decPoset_1606 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecPoset'46'constructor_8213
      (coe
         du_isDecPartialOrder_1402
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecPartialOrder_428
            (coe v0)))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness._⊆_
d__'8838'__1710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () -> (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__1710 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion→Disjoint
d_DisjointUnion'8594'Disjoint_1726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_DisjointUnion'8594'Disjoint_1726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                   v9 v10 v11 v12 v13
  = du_DisjointUnion'8594'Disjoint_1726 v6 v7 v8 v9 v10 v11 v12 v13
du_DisjointUnion'8594'Disjoint_1726 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_DisjointUnion'8594'Disjoint_1726 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_200
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218 v16
        -> case coe v2 of
             (:) v17 v18
               -> case coe v4 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v22
                      -> case coe v5 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v26
                             -> case coe v6 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v30
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                         (coe
                                            du_DisjointUnion'8594'Disjoint_1726 (coe v0) (coe v1)
                                            (coe v18) (coe v3) (coe v22) (coe v26) (coe v30)
                                            (coe v16))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240 v18
        -> case coe v0 of
             (:) v19 v20
               -> case coe v2 of
                    (:) v21 v22
                      -> case coe v3 of
                           (:) v23 v24
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v29 v30
                                    -> case coe v5 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v34
                                           -> case coe v6 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v39 v40
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164
                                                       (coe
                                                          du_DisjointUnion'8594'Disjoint_1726
                                                          (coe v20) (coe v1) (coe v22) (coe v24)
                                                          (coe v30) (coe v34) (coe v40) (coe v18))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262 v18
        -> case coe v1 of
             (:) v19 v20
               -> case coe v2 of
                    (:) v21 v22
                      -> case coe v3 of
                           (:) v23 v24
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v28
                                    -> case coe v5 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v33 v34
                                           -> case coe v6 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v39 v40
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182
                                                       (coe
                                                          du_DisjointUnion'8594'Disjoint_1726
                                                          (coe v0) (coe v20) (coe v22) (coe v24)
                                                          (coe v28) (coe v34) (coe v40) (coe v18))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.Disjoint→DisjointUnion
d_Disjoint'8594'DisjointUnion_1754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Disjoint'8594'DisjointUnion_1754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                   v9 v10 v11
  = du_Disjoint'8594'DisjointUnion_1754 v6 v7 v8 v9 v10 v11
du_Disjoint'8594'DisjointUnion_1754 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_Disjoint'8594'DisjointUnion_1754 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28)
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_200))
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146 v12
        -> case coe v2 of
             (:) v13 v14
               -> case coe v3 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v18
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v22
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1)
                                        (coe v14) (coe v18) (coe v22) (coe v12)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe
                                                 du_Disjoint'8594'DisjointUnion_1754 (coe v0)
                                                 (coe v1) (coe v14) (coe v18) (coe v22)
                                                 (coe v12)))))
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe
                                                 du_Disjoint'8594'DisjointUnion_1754 (coe v0)
                                                 (coe v1) (coe v14) (coe v18) (coe v22)
                                                 (coe v12))))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164 v14
        -> case coe v0 of
             (:) v15 v16
               -> case coe v2 of
                    (:) v17 v18
                      -> case coe v3 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v23 v24
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v28
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v15)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  du_Disjoint'8594'DisjointUnion_1754 (coe v16)
                                                  (coe v1) (coe v18) (coe v24) (coe v28)
                                                  (coe v14))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                               v23
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_Disjoint'8594'DisjointUnion_1754
                                                        (coe v16) (coe v1) (coe v18) (coe v24)
                                                        (coe v28) (coe v14)))))
                                            (coe
                                               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_Disjoint'8594'DisjointUnion_1754
                                                        (coe v16) (coe v1) (coe v18) (coe v24)
                                                        (coe v28) (coe v14))))))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182 v14
        -> case coe v1 of
             (:) v15 v16
               -> case coe v2 of
                    (:) v17 v18
                      -> case coe v3 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v22
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v27 v28
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v15)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  du_Disjoint'8594'DisjointUnion_1754 (coe v0)
                                                  (coe v16) (coe v18) (coe v22) (coe v28)
                                                  (coe v14))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                               v27
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_Disjoint'8594'DisjointUnion_1754 (coe v0)
                                                        (coe v16) (coe v18) (coe v22) (coe v28)
                                                        (coe v14)))))
                                            (coe
                                               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_Disjoint'8594'DisjointUnion_1754 (coe v0)
                                                        (coe v16) (coe v18) (coe v22) (coe v28)
                                                        (coe v14))))))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.⊆-disjoint?
d_'8838''45'disjoint'63'_1778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8838''45'disjoint'63'_1778 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
                              v10
  = du_'8838''45'disjoint'63'_1778 v6 v7 v8 v9 v10
du_'8838''45'disjoint'63'_1778 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8838''45'disjoint'63'_1778 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe
             seq (coe v4)
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe
                      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132)))
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v14
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                           (coe
                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146)
                           (coe du_'46'extendedlambda2_1824)
                           (coe
                              du_'8838''45'disjoint'63'_1778 (coe v0) (coe v1) (coe v10) (coe v8)
                              (coe v14))
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v15 v16
                      -> case coe v1 of
                           (:) v17 v18
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182)
                                  (coe du_'46'extendedlambda0_1798)
                                  (coe
                                     du_'8838''45'disjoint'63'_1778 (coe v0) (coe v18) (coe v10)
                                     (coe v8) (coe v16))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v9 v10
        -> case coe v0 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v18
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164)
                                  (coe du_'46'extendedlambda1_1812)
                                  (coe
                                     du_'8838''45'disjoint'63'_1778 (coe v12) (coe v1) (coe v14)
                                     (coe v10) (coe v18))
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v19 v20
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                  (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness..extendedlambda0
d_'46'extendedlambda0_1798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_'46'extendedlambda0_1798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 ~v12 ~v13 v14
  = du_'46'extendedlambda0_1798 v14
du_'46'extendedlambda0_1798 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_'46'extendedlambda0_1798 v0
  = case coe v0 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182 v9
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness..extendedlambda1
d_'46'extendedlambda1_1812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_'46'extendedlambda1_1812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 ~v12 ~v13 v14
  = du_'46'extendedlambda1_1812 v14
du_'46'extendedlambda1_1812 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_'46'extendedlambda1_1812 v0
  = case coe v0 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164 v9
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness..extendedlambda2
d_'46'extendedlambda2_1824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_'46'extendedlambda2_1824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 v12
  = du_'46'extendedlambda2_1824 v12
du_'46'extendedlambda2_1824 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_'46'extendedlambda2_1824 v0
  = case coe v0 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146 v7
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.Disjoint-irrelevant
d_Disjoint'45'irrelevant_1834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Disjoint'45'irrelevant_1834 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.Disjoint-irrefl′
d_Disjoint'45'irrefl'8242'_1866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_Disjoint'45'irrefl'8242'_1866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
                                v9
  = du_Disjoint'45'irrefl'8242'_1866 v7 v8 v9
du_Disjoint'45'irrefl'8242'_1866 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_Disjoint'45'irrefl'8242'_1866 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132
        -> coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146 v9
        -> case coe v0 of
             (:) v10 v11
               -> case coe v1 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v15
                      -> coe
                           du_Disjoint'45'irrefl'8242'_1866 (coe v11) (coe v15) (coe v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.Disjoint-irrefl
d_Disjoint'45'irrefl_1878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_Disjoint'45'irrefl_1878 = erased
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion-sym
d_DisjointUnion'45'sym_1902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45'sym_1902 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
                            v11 v12 v13
  = du_DisjointUnion'45'sym_1902 v6 v7 v8 v9 v10 v11 v12 v13
du_DisjointUnion'45'sym_1902 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45'sym_1902 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_200
        -> coe v7
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218 v16
        -> case coe v3 of
             (:) v17 v18
               -> case coe v4 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v22
                      -> case coe v5 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v26
                             -> case coe v6 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v30
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                                         (coe
                                            du_DisjointUnion'45'sym_1902 (coe v0) (coe v1) (coe v2)
                                            (coe v18) (coe v22) (coe v26) (coe v30) (coe v16))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240 v18
        -> case coe v0 of
             (:) v19 v20
               -> case coe v2 of
                    (:) v21 v22
                      -> case coe v3 of
                           (:) v23 v24
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v29 v30
                                    -> case coe v5 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v34
                                           -> case coe v6 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v39 v40
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                                                       (coe
                                                          du_DisjointUnion'45'sym_1902 (coe v20)
                                                          (coe v1) (coe v22) (coe v24) (coe v30)
                                                          (coe v34) (coe v40) (coe v18))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262 v18
        -> case coe v1 of
             (:) v19 v20
               -> case coe v2 of
                    (:) v21 v22
                      -> case coe v3 of
                           (:) v23 v24
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v28
                                    -> case coe v5 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v33 v34
                                           -> case coe v6 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v39 v40
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240
                                                       (coe
                                                          du_DisjointUnion'45'sym_1902 (coe v0)
                                                          (coe v20) (coe v22) (coe v24) (coe v28)
                                                          (coe v34) (coe v40) (coe v18))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.Disjoint-sym
d_Disjoint'45'sym_1926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_Disjoint'45'sym_1926 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_Disjoint'45'sym_1926 v6 v7 v8 v9 v10 v11
du_Disjoint'45'sym_1926 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_Disjoint'45'sym_1926 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132
        -> coe v5
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146 v12
        -> case coe v2 of
             (:) v13 v14
               -> case coe v3 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v18
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v22
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                  (coe
                                     du_Disjoint'45'sym_1926 (coe v0) (coe v1) (coe v14) (coe v18)
                                     (coe v22) (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164 v14
        -> case coe v0 of
             (:) v15 v16
               -> case coe v2 of
                    (:) v17 v18
                      -> case coe v3 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v23 v24
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v28
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182
                                         (coe
                                            du_Disjoint'45'sym_1926 (coe v16) (coe v1) (coe v18)
                                            (coe v24) (coe v28) (coe v14))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182 v14
        -> case coe v1 of
             (:) v15 v16
               -> case coe v2 of
                    (:) v17 v18
                      -> case coe v3 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v22
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v27 v28
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164
                                         (coe
                                            du_Disjoint'45'sym_1926 (coe v0) (coe v16) (coe v18)
                                            (coe v22) (coe v28) (coe v14))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion-[]ˡ
d_DisjointUnion'45''91''93''737'_1948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45''91''93''737'_1948 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                      v8 v9
  = du_DisjointUnion'45''91''93''737'_1948 v6 v7 v8 v9
du_DisjointUnion'45''91''93''737'_1948 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45''91''93''737'_1948 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe
             seq (coe v3)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_200)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v7
        -> case coe v1 of
             (:) v8 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v13
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                           (coe
                              du_DisjointUnion'45''91''93''737'_1948 (coe v0) (coe v9) (coe v7)
                              (coe v13))
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v14 v15
                      -> case coe v0 of
                           (:) v16 v17
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                                  (coe
                                     du_DisjointUnion'45''91''93''737'_1948 (coe v17) (coe v9)
                                     (coe v7) (coe v15))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion-[]ʳ
d_DisjointUnion'45''91''93''691'_1972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45''91''93''691'_1972 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                      v8 v9
  = du_DisjointUnion'45''91''93''691'_1972 v6 v7 v8 v9
du_DisjointUnion'45''91''93''691'_1972 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45''91''93''691'_1972 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe
             seq (coe v3)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_200)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v7
        -> case coe v1 of
             (:) v8 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v13
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                           (coe
                              du_DisjointUnion'45''91''93''691'_1972 (coe v0) (coe v9) (coe v7)
                              (coe v13))
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v14 v15
                      -> case coe v0 of
                           (:) v16 v17
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240
                                  (coe
                                     du_DisjointUnion'45''91''93''691'_1972 (coe v17) (coe v9)
                                     (coe v7) (coe v15))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion-fromAny∘toAny-∷ˡ⁻
d_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_1996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_1996 ~v0
                                                                ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_1996
      v7 v8 v9
du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_1996 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_1996 v0
                                                                 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v6
        -> case coe v1 of
             (:) v7 v8
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                    (coe
                       du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_1996
                       (coe v0) (coe v8) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v7 v8
        -> case coe v1 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240
                    (coe
                       du_DisjointUnion'45''91''93''737'_1948 (coe v0) (coe v10)
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                          (coe v10))
                       (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion³
d_DisjointUnion'179'_2032 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
                          a13 a14 a15 a16 a17 a18
  = ()
data T_DisjointUnion'179'_2032
  = C_DisjointUnion'179''46'constructor_1410777 [AgdaAny]
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion³.union³
d_union'179'_2070 :: T_DisjointUnion'179'_2032 -> [AgdaAny]
d_union'179'_2070 v0
  = case coe v0 of
      C_DisjointUnion'179''46'constructor_1410777 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion³.sub³
d_sub'179'_2072 ::
  T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_sub'179'_2072 v0
  = case coe v0 of
      C_DisjointUnion'179''46'constructor_1410777 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion³.join₁
d_join'8321'_2074 ::
  T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8321'_2074 v0
  = case coe v0 of
      C_DisjointUnion'179''46'constructor_1410777 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion³.join₂
d_join'8322'_2076 ::
  T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8322'_2076 v0
  = case coe v0 of
      C_DisjointUnion'179''46'constructor_1410777 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.DisjointUnion³.join₃
d_join'8323'_2078 ::
  T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8323'_2078 v0
  = case coe v0 of
      C_DisjointUnion'179''46'constructor_1410777 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness._∷ʳ-DisjointUnion³_
d__'8759''691''45'DisjointUnion'179'__2108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny -> T_DisjointUnion'179'_2032 -> T_DisjointUnion'179'_2032
d__'8759''691''45'DisjointUnion'179'__2108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                           ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17
                                           ~v18 ~v19 v20
  = du__'8759''691''45'DisjointUnion'179'__2108 v20
du__'8759''691''45'DisjointUnion'179'__2108 ::
  T_DisjointUnion'179'_2032 -> T_DisjointUnion'179'_2032
du__'8759''691''45'DisjointUnion'179'__2108 v0
  = case coe v0 of
      C_DisjointUnion'179''46'constructor_1410777 v1 v2 v3 v4 v5
        -> coe
             C_DisjointUnion'179''46'constructor_1410777 (coe v1)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                v2)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                v3)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                v4)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness._∷₁-DisjointUnion³_
d__'8759''8321''45'DisjointUnion'179'__2152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> T_DisjointUnion'179'_2032 -> T_DisjointUnion'179'_2032
d__'8759''8321''45'DisjointUnion'179'__2152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                            ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17
                                            ~v18 v19 ~v20 v21 v22
  = du__'8759''8321''45'DisjointUnion'179'__2152 v19 v21 v22
du__'8759''8321''45'DisjointUnion'179'__2152 ::
  AgdaAny ->
  AgdaAny -> T_DisjointUnion'179'_2032 -> T_DisjointUnion'179'_2032
du__'8759''8321''45'DisjointUnion'179'__2152 v0 v1 v2
  = case coe v2 of
      C_DisjointUnion'179''46'constructor_1410777 v3 v4 v5 v6 v7
        -> coe
             C_DisjointUnion'179''46'constructor_1410777
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v3))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                v1 v4)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240
                v5)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                v6)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                v7)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness._∷₂-DisjointUnion³_
d__'8759''8322''45'DisjointUnion'179'__2196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> T_DisjointUnion'179'_2032 -> T_DisjointUnion'179'_2032
d__'8759''8322''45'DisjointUnion'179'__2196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                            ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17
                                            ~v18 v19 ~v20 v21 v22
  = du__'8759''8322''45'DisjointUnion'179'__2196 v19 v21 v22
du__'8759''8322''45'DisjointUnion'179'__2196 ::
  AgdaAny ->
  AgdaAny -> T_DisjointUnion'179'_2032 -> T_DisjointUnion'179'_2032
du__'8759''8322''45'DisjointUnion'179'__2196 v0 v1 v2
  = case coe v2 of
      C_DisjointUnion'179''46'constructor_1410777 v3 v4 v5 v6 v7
        -> coe
             C_DisjointUnion'179''46'constructor_1410777
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v3))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                v1 v4)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                v5)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240
                v6)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                v7)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness._∷₃-DisjointUnion³_
d__'8759''8323''45'DisjointUnion'179'__2240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> T_DisjointUnion'179'_2032 -> T_DisjointUnion'179'_2032
d__'8759''8323''45'DisjointUnion'179'__2240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                            ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17
                                            ~v18 v19 ~v20 v21 v22
  = du__'8759''8323''45'DisjointUnion'179'__2240 v19 v21 v22
du__'8759''8323''45'DisjointUnion'179'__2240 ::
  AgdaAny ->
  AgdaAny -> T_DisjointUnion'179'_2032 -> T_DisjointUnion'179'_2032
du__'8759''8323''45'DisjointUnion'179'__2240 v0 v1 v2
  = case coe v2 of
      C_DisjointUnion'179''46'constructor_1410777 v3 v4 v5 v6 v7
        -> coe
             C_DisjointUnion'179''46'constructor_1410777
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v3))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                v1 v4)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                v5)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                v6)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240
                v7)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.disjointUnion³
d_disjointUnion'179'_2278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  T_DisjointUnion'179'_2032
d_disjointUnion'179'_2278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
                          v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
  = du_disjointUnion'179'_2278
      v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
du_disjointUnion'179'_2278 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  T_DisjointUnion'179'_2032
du_disjointUnion'179'_2278 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
                           v12 v13 v14 v15
  = case coe v13 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_200
        -> coe
             seq (coe v14)
             (coe
                seq (coe v15)
                (coe
                   C_DisjointUnion'179''46'constructor_1410777
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                   (coe
                      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28)
                   (coe v13) (coe v13) (coe v13)))
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218 v24
        -> case coe v3 of
             (:) v25 v26
               -> case coe v4 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v30
                      -> case coe v5 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v34
                             -> case coe v10 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v38
                                    -> case coe v14 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218 v47
                                           -> case coe v6 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v51
                                                  -> case coe v11 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v55
                                                         -> case coe v15 of
                                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218 v64
                                                                -> case coe v12 of
                                                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v68
                                                                       -> coe
                                                                            du__'8759''691''45'DisjointUnion'179'__2108
                                                                            (coe
                                                                               du_disjointUnion'179'_2278
                                                                               (coe v0) (coe v1)
                                                                               (coe v2) (coe v26)
                                                                               (coe v30) (coe v34)
                                                                               (coe v51) (coe v7)
                                                                               (coe v8) (coe v9)
                                                                               (coe v38) (coe v55)
                                                                               (coe v68) (coe v24)
                                                                               (coe v47) (coe v64))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262 v49
                                           -> case coe v2 of
                                                (:) v50 v51
                                                  -> case coe v6 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v56 v57
                                                         -> case coe v8 of
                                                              (:) v58 v59
                                                                -> case coe v11 of
                                                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v64 v65
                                                                       -> case coe v15 of
                                                                            MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262 v76
                                                                              -> case coe v9 of
                                                                                   (:) v77 v78
                                                                                     -> case coe
                                                                                               v12 of
                                                                                          MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v83 v84
                                                                                            -> coe
                                                                                                 du__'8759''8323''45'DisjointUnion'179'__2240
                                                                                                 (coe
                                                                                                    v50)
                                                                                                 (coe
                                                                                                    v56)
                                                                                                 (coe
                                                                                                    du_disjointUnion'179'_2278
                                                                                                    (coe
                                                                                                       v0)
                                                                                                    (coe
                                                                                                       v1)
                                                                                                    (coe
                                                                                                       v51)
                                                                                                    (coe
                                                                                                       v26)
                                                                                                    (coe
                                                                                                       v30)
                                                                                                    (coe
                                                                                                       v34)
                                                                                                    (coe
                                                                                                       v57)
                                                                                                    (coe
                                                                                                       v7)
                                                                                                    (coe
                                                                                                       v59)
                                                                                                    (coe
                                                                                                       v78)
                                                                                                    (coe
                                                                                                       v38)
                                                                                                    (coe
                                                                                                       v65)
                                                                                                    (coe
                                                                                                       v84)
                                                                                                    (coe
                                                                                                       v24)
                                                                                                    (coe
                                                                                                       v49)
                                                                                                    (coe
                                                                                                       v76))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240 v26
        -> case coe v0 of
             (:) v27 v28
               -> case coe v3 of
                    (:) v29 v30
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v35 v36
                             -> case coe v5 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v40
                                    -> case coe v7 of
                                         (:) v41 v42
                                           -> case coe v10 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v47 v48
                                                  -> case coe v14 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240 v59
                                                         -> case coe v6 of
                                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v63
                                                                -> case coe v8 of
                                                                     (:) v64 v65
                                                                       -> case coe v11 of
                                                                            MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v70 v71
                                                                              -> case coe v15 of
                                                                                   MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218 v80
                                                                                     -> case coe
                                                                                               v12 of
                                                                                          MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v84
                                                                                            -> coe
                                                                                                 du__'8759''8321''45'DisjointUnion'179'__2152
                                                                                                 (coe
                                                                                                    v27)
                                                                                                 (coe
                                                                                                    v35)
                                                                                                 (coe
                                                                                                    du_disjointUnion'179'_2278
                                                                                                    (coe
                                                                                                       v28)
                                                                                                    (coe
                                                                                                       v1)
                                                                                                    (coe
                                                                                                       v2)
                                                                                                    (coe
                                                                                                       v30)
                                                                                                    (coe
                                                                                                       v36)
                                                                                                    (coe
                                                                                                       v40)
                                                                                                    (coe
                                                                                                       v63)
                                                                                                    (coe
                                                                                                       v42)
                                                                                                    (coe
                                                                                                       v65)
                                                                                                    (coe
                                                                                                       v9)
                                                                                                    (coe
                                                                                                       v48)
                                                                                                    (coe
                                                                                                       v71)
                                                                                                    (coe
                                                                                                       v84)
                                                                                                    (coe
                                                                                                       v26)
                                                                                                    (coe
                                                                                                       v59)
                                                                                                    (coe
                                                                                                       v80))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262 v26
        -> case coe v1 of
             (:) v27 v28
               -> case coe v3 of
                    (:) v29 v30
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v34
                             -> case coe v5 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v39 v40
                                    -> case coe v7 of
                                         (:) v41 v42
                                           -> case coe v10 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v47 v48
                                                  -> case coe v14 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218 v57
                                                         -> case coe v6 of
                                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v61
                                                                -> case coe v11 of
                                                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v65
                                                                       -> case coe v15 of
                                                                            MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240 v76
                                                                              -> case coe v9 of
                                                                                   (:) v77 v78
                                                                                     -> case coe
                                                                                               v12 of
                                                                                          MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v83 v84
                                                                                            -> coe
                                                                                                 du__'8759''8322''45'DisjointUnion'179'__2196
                                                                                                 (coe
                                                                                                    v27)
                                                                                                 (coe
                                                                                                    v39)
                                                                                                 (coe
                                                                                                    du_disjointUnion'179'_2278
                                                                                                    (coe
                                                                                                       v0)
                                                                                                    (coe
                                                                                                       v28)
                                                                                                    (coe
                                                                                                       v2)
                                                                                                    (coe
                                                                                                       v30)
                                                                                                    (coe
                                                                                                       v34)
                                                                                                    (coe
                                                                                                       v40)
                                                                                                    (coe
                                                                                                       v61)
                                                                                                    (coe
                                                                                                       v42)
                                                                                                    (coe
                                                                                                       v8)
                                                                                                    (coe
                                                                                                       v78)
                                                                                                    (coe
                                                                                                       v48)
                                                                                                    (coe
                                                                                                       v65)
                                                                                                    (coe
                                                                                                       v84)
                                                                                                    (coe
                                                                                                       v26)
                                                                                                    (coe
                                                                                                       v57)
                                                                                                    (coe
                                                                                                       v76))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.Disjointness.disjoint⇒disjoint-to-union
d_disjoint'8658'disjoint'45'to'45'union_2344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_disjoint'8658'disjoint'45'to'45'union_2344 ~v0 ~v1 ~v2 ~v3 ~v4
                                             ~v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
  = du_disjoint'8658'disjoint'45'to'45'union_2344
      v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
du_disjoint'8658'disjoint'45'to'45'union_2344 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_disjoint'8658'disjoint'45'to'45'union_2344 v0 v1 v2 v3 v4 v5 v6
                                              v7 v8 v9 v10 v11
  = coe
      du_DisjointUnion'8594'Disjoint_1726 (coe v0) (coe v3) (coe v4)
      (coe
         d_union'179'_2070
         (coe
            du_disjointUnion'179'_2278 (coe v0) (coe v1) (coe v2) (coe v4)
            (coe v5) (coe v6) (coe v7)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1) (coe v4)
                  (coe v5) (coe v6) (coe v9)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v2) (coe v4)
                  (coe v5) (coe v7) (coe v10)))
            (coe v3)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1) (coe v4)
                     (coe v5) (coe v6) (coe v9))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v2) (coe v4)
                     (coe v5) (coe v7) (coe v10))))
            (coe v8)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1) (coe v4)
                     (coe v5) (coe v6) (coe v9))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v2) (coe v4)
                     (coe v5) (coe v7) (coe v10))))
            (coe v11)))
      (coe v5) (coe v8)
      (coe
         d_sub'179'_2072
         (coe
            du_disjointUnion'179'_2278 (coe v0) (coe v1) (coe v2) (coe v4)
            (coe v5) (coe v6) (coe v7)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1) (coe v4)
                  (coe v5) (coe v6) (coe v9)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v2) (coe v4)
                  (coe v5) (coe v7) (coe v10)))
            (coe v3)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1) (coe v4)
                     (coe v5) (coe v6) (coe v9))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v2) (coe v4)
                     (coe v5) (coe v7) (coe v10))))
            (coe v8)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1) (coe v4)
                     (coe v5) (coe v6) (coe v9))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v2) (coe v4)
                     (coe v5) (coe v7) (coe v10))))
            (coe v11)))
      (coe
         d_join'8321'_2074
         (coe
            du_disjointUnion'179'_2278 (coe v0) (coe v1) (coe v2) (coe v4)
            (coe v5) (coe v6) (coe v7)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1) (coe v4)
                  (coe v5) (coe v6) (coe v9)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v2) (coe v4)
                  (coe v5) (coe v7) (coe v10)))
            (coe v3)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1) (coe v4)
                     (coe v5) (coe v6) (coe v9))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v2) (coe v4)
                     (coe v5) (coe v7) (coe v10))))
            (coe v8)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v1) (coe v4)
                     (coe v5) (coe v6) (coe v9))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_Disjoint'8594'DisjointUnion_1754 (coe v0) (coe v2) (coe v4)
                     (coe v5) (coe v7) (coe v10))))
            (coe v11)))
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.DisjointnessMonotonicity.weakenDisjointUnion
d_weakenDisjointUnion_2396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_weakenDisjointUnion_2396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 ~v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
  = du_weakenDisjointUnion_2396
      v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
du_weakenDisjointUnion_2396 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_weakenDisjointUnion_2396 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe
             seq (coe v9)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_200)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v13
        -> case coe v4 of
             (:) v14 v15
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                    (coe
                       du_weakenDisjointUnion_2396 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v15) (coe v5) (coe v6) (coe v7) (coe v13) (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v14 v15
        -> case coe v3 of
             (:) v16 v17
               -> case coe v4 of
                    (:) v18 v19
                      -> case coe v9 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218 v28
                             -> case coe v5 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v32
                                    -> case coe v6 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v36
                                           -> case coe v7 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v40
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__218
                                                       (coe
                                                          du_weakenDisjointUnion_2396 (coe v0)
                                                          (coe v1) (coe v2) (coe v17) (coe v19)
                                                          (coe v32) (coe v36) (coe v40) (coe v15)
                                                          (coe v28))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240 v30
                             -> case coe v0 of
                                  (:) v31 v32
                                    -> case coe v2 of
                                         (:) v33 v34
                                           -> case coe v5 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v39 v40
                                                  -> case coe v6 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v44
                                                         -> case coe v7 of
                                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v49 v50
                                                                -> coe
                                                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__240
                                                                     (coe
                                                                        du_weakenDisjointUnion_2396
                                                                        (coe v32) (coe v1) (coe v34)
                                                                        (coe v17) (coe v19)
                                                                        (coe v40) (coe v44)
                                                                        (coe v50) (coe v15)
                                                                        (coe v30))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262 v30
                             -> case coe v1 of
                                  (:) v31 v32
                                    -> case coe v2 of
                                         (:) v33 v34
                                           -> case coe v5 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v38
                                                  -> case coe v6 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v43 v44
                                                         -> case coe v7 of
                                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v49 v50
                                                                -> coe
                                                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__262
                                                                     (coe
                                                                        du_weakenDisjointUnion_2396
                                                                        (coe v0) (coe v32) (coe v34)
                                                                        (coe v17) (coe v19)
                                                                        (coe v38) (coe v44)
                                                                        (coe v50) (coe v15)
                                                                        (coe v30))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.DisjointnessMonotonicity.weakenDisjoint
d_weakenDisjoint_2440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_weakenDisjoint_2440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 ~v12 v13 v14 v15 v16 v17 v18 v19 v20
  = du_weakenDisjoint_2440 v13 v14 v15 v16 v17 v18 v19 v20
du_weakenDisjoint_2440 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_weakenDisjoint_2440 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v6 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe
             seq (coe v7)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v11
        -> case coe v3 of
             (:) v12 v13
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                    (coe
                       du_weakenDisjoint_2440 (coe v0) (coe v1) (coe v2) (coe v13)
                       (coe v4) (coe v5) (coe v11) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v12 v13
        -> case coe v2 of
             (:) v14 v15
               -> case coe v3 of
                    (:) v16 v17
                      -> case coe v7 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146 v24
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v28
                                    -> case coe v5 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v32
                                           -> coe
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                                (coe
                                                   du_weakenDisjoint_2440 (coe v0) (coe v1)
                                                   (coe v15) (coe v17) (coe v28) (coe v32) (coe v13)
                                                   (coe v24))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164 v26
                             -> case coe v0 of
                                  (:) v27 v28
                                    -> case coe v4 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v33 v34
                                           -> case coe v5 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v38
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164
                                                       (coe
                                                          du_weakenDisjoint_2440 (coe v28) (coe v1)
                                                          (coe v15) (coe v17) (coe v34) (coe v38)
                                                          (coe v13) (coe v26))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182 v26
                             -> case coe v1 of
                                  (:) v27 v28
                                    -> case coe v4 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v32
                                           -> case coe v5 of
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v37 v38
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182
                                                       (coe
                                                          du_weakenDisjoint_2440 (coe v0) (coe v28)
                                                          (coe v15) (coe v17) (coe v32) (coe v38)
                                                          (coe v13) (coe v26))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.DisjointnessMonotonicity.shrinkDisjoint
d_shrinkDisjoint_2488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_shrinkDisjoint_2488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 ~v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
  = du_shrinkDisjoint_2488 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
du_shrinkDisjoint_2488 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_shrinkDisjoint_2488 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132
        -> coe seq (coe v5) (coe seq (coe v7) (coe v9))
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146 v16
        -> case coe v4 of
             (:) v17 v18
               -> case coe v6 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v22
                      -> case coe v8 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v26
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                  (coe
                                     du_shrinkDisjoint_2488 (coe v0) (coe v1) (coe v2) (coe v3)
                                     (coe v18) (coe v5) (coe v22) (coe v7) (coe v26) (coe v16))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164 v18
        -> case coe v2 of
             (:) v19 v20
               -> case coe v4 of
                    (:) v21 v22
                      -> case coe v6 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v27 v28
                             -> case coe v8 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v32
                                    -> case coe v5 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v36
                                           -> coe
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                                (coe
                                                   du_shrinkDisjoint_2488 (coe v0) (coe v1)
                                                   (coe v20) (coe v3) (coe v22) (coe v36) (coe v28)
                                                   (coe v7) (coe v32) (coe v18))
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v37 v38
                                           -> case coe v0 of
                                                (:) v39 v40
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164
                                                       (coe
                                                          du_shrinkDisjoint_2488 (coe v40) (coe v1)
                                                          (coe v20) (coe v3) (coe v22) (coe v38)
                                                          (coe v28) (coe v7) (coe v32) (coe v18))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182 v18
        -> case coe v3 of
             (:) v19 v20
               -> case coe v4 of
                    (:) v21 v22
                      -> case coe v6 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v26
                             -> case coe v8 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v31 v32
                                    -> case coe v7 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v36
                                           -> coe
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                                (coe
                                                   du_shrinkDisjoint_2488 (coe v0) (coe v1) (coe v2)
                                                   (coe v20) (coe v22) (coe v5) (coe v26) (coe v36)
                                                   (coe v32) (coe v18))
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v37 v38
                                           -> case coe v1 of
                                                (:) v39 v40
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182
                                                       (coe
                                                          du_shrinkDisjoint_2488 (coe v0) (coe v40)
                                                          (coe v2) (coe v20) (coe v22) (coe v5)
                                                          (coe v26) (coe v38) (coe v32) (coe v18))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
