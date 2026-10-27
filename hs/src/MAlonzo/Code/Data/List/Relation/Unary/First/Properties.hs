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

module MAlonzo.Code.Data.List.Relation.Unary.First.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.First
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.List.Relation.Unary.First.Properties._.map⁺
d_map'8314'_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
d_map'8314'_34 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_map'8314'_34 v9 v10
du_map'8314'_34 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
du_map'8314'_34 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32 v4
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32 v4
      MAlonzo.Code.Data.List.Relation.Unary.First.C__'8759'__38 v4 v5
        -> case coe v0 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.First.C__'8759'__38 v4
                    (coe du_map'8314'_34 (coe v7) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First.Properties._.map⁻
d_map'8315'_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
d_map'8315'_44 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_map'8315'_44 v9 v10
du_map'8315'_44 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
du_map'8315'_44 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32 v6
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32 v6
             MAlonzo.Code.Data.List.Relation.Unary.First.C__'8759'__38 v6 v7
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.First.C__'8759'__38 v6
                    (coe du_map'8315'_44 (coe v3) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First.Properties._.++⁺
d_'43''43''8314'_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
d_'43''43''8314'_84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 v9
  = du_'43''43''8314'_84 v6 v8 v9
du_'43''43''8314'_84 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
du_'43''43''8314'_84 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50 -> coe v2
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v5 v6
        -> case coe v0 of
             (:) v7 v8
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.First.C__'8759'__38 v5
                    (coe du_'43''43''8314'_84 (coe v8) (coe v6) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First.Properties._.⁺++
d_'8314''43''43'_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
d_'8314''43''43'_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8
  = du_'8314''43''43'_98 v6 v7
du_'8314''43''43'_98 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
du_'8314''43''43'_98 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32 v4
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32 v4
      MAlonzo.Code.Data.List.Relation.Unary.First.C__'8759'__38 v4 v5
        -> case coe v0 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.First.C__'8759'__38 v4
                    (coe du_'8314''43''43'_98 (coe v7) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First.Properties._.All⇒¬First
d_All'8658''172'First_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_All'8658''172'First_126 = erased
-- Data.List.Relation.Unary.First.Properties._.First⇒¬All
d_First'8658''172'All_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_First'8658''172'All_142 = erased
-- Data.List.Relation.Unary.First.Properties._.¬First⇒All
d_'172'First'8658'All_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  [AgdaAny] ->
  (MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'172'First'8658'All_158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_'172'First'8658'All_158 v6 v7 v8
du_'172'First'8658'All_158 ::
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  [AgdaAny] ->
  (MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_'172'First'8658'All_158 v0 v1 v2
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50
      (:) v3 v4
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
             (coe
                v0 v3
                (\ v5 ->
                   coe
                     v2
                     (coe
                        MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32 v5)))
             (coe du_'172'First'8658'All_158 (coe v0) (coe v4) erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First.Properties._.¬All⇒First
d_'172'All'8658'First_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  [AgdaAny] ->
  (MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
d_'172'All'8658'First_174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 ~v9
  = du_'172'All'8658'First_174 v6 v7 v8
du_'172'All'8658'First_174 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
du_'172'All'8658'First_174 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      (:) v3 v4
        -> let v5 = coe v0 v3 in
           coe
             (case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                  -> if coe v6
                       then coe
                              MAlonzo.Code.Data.List.Relation.Unary.First.C__'8759'__38
                              (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v7))
                              (coe du_'172'All'8658'First_174 (coe v0) (coe v1) (coe v4))
                       else coe
                              MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32
                              (coe
                                 v1 v3
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v7)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First.Properties._.unique-index
d_unique'45'index_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'45'index_230 = erased
-- Data.List.Relation.Unary.First.Properties._.irrelevant
d_irrelevant_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_irrelevant_252 = erased
-- Data.List.Relation.Unary.First.Properties._.first?
d_first'63'_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_first'63'_310 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_first'63'_310 v4 v5
du_first'63'_310 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_first'63'_310 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_fromSum_126
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map'8322'_94 erased
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.First.du_first_198
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_toSum_120
                    (coe v0 v2)))
            (coe v1)))
-- Data.List.Relation.Unary.First.Properties._.cofirst?
d_cofirst'63'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_cofirst'63'_314 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_cofirst'63'_314 v4 v5
du_cofirst'63'_314 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_cofirst'63'_314 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_fromSum_126
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map'8322'_94 erased
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.First.du_first_198
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Sum.Base.du_swap_78
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_toSum_120
                       (coe v0 v2))))
            (coe v1)))
-- Data.List.Relation.Unary.First.Properties._.fromAny∘toAny≗id
d_fromAny'8728'toAny'8791'id_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromAny'8728'toAny'8791'id_332 = erased
-- Data.List.Relation.Unary.First.Properties._.toAny∘fromAny≗id
d_toAny'8728'fromAny'8791'id_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toAny'8728'fromAny'8791'id_344 = erased
-- Data.List.Relation.Unary.First.Properties._.toView
d_toView_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_FirstView_40
d_toView_368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_toView_368 v6 v7
du_toView_368 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_FirstView_40
du_toView_368 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32 v4
        -> case coe v0 of
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.First.C__'43''43'_'8759'__48
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v5)
                    (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
                    (coe v4) (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Unary.First.C__'8759'__38 v4 v5
        -> case coe v0 of
             (:) v6 v7
               -> let v8 = coe du_toView_368 (coe v7) (coe v5) in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Data.List.Relation.Unary.First.C__'43''43'_'8759'__48 v9 v10 v11 v12 v13
                         -> coe
                              MAlonzo.Code.Data.List.Relation.Unary.First.C__'43''43'_'8759'__48
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6) (coe v9))
                              (coe v10)
                              (coe
                                 MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v4 v11)
                              (coe v12) (coe v13)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First.Properties._.fromView
d_fromView_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_FirstView_40 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
d_fromView_392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_fromView_392 v7
du_fromView_392 ::
  MAlonzo.Code.Data.List.Relation.Unary.First.T_FirstView_40 ->
  MAlonzo.Code.Data.List.Relation.Unary.First.T_First_26
du_fromView_392 v0
  = case coe v0 of
      MAlonzo.Code.Data.List.Relation.Unary.First.C__'43''43'_'8759'__48 v1 v2 v3 v4 v5
        -> coe
             du_'43''43''8314'_84 (coe v1) (coe v3)
             (coe MAlonzo.Code.Data.List.Relation.Unary.First.C_'91'_'93'_32 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
