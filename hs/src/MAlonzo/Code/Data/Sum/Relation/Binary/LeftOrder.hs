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

module MAlonzo.Code.Data.Sum.Relation.Binary.LeftOrder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Sum.Relation.Binary.LeftOrder._⊎-<_
d__'8846''45''60'__26 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T__'8846''45''60'__26
  = C_'8321''8764''8322'_48 | C_'8321''8764''8321'_56 AgdaAny |
    C_'8322''8764''8322'_64 AgdaAny
-- Data.Sum.Relation.Binary.LeftOrder._.drop-inj₁
d_drop'45'inj'8321'_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T__'8846''45''60'__26 -> AgdaAny
d_drop'45'inj'8321'_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_drop'45'inj'8321'_90 v10
du_drop'45'inj'8321'_90 :: T__'8846''45''60'__26 -> AgdaAny
du_drop'45'inj'8321'_90 v0
  = case coe v0 of
      C_'8321''8764''8321'_56 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.drop-inj₂
d_drop'45'inj'8322'_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T__'8846''45''60'__26 -> AgdaAny
d_drop'45'inj'8322'_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_drop'45'inj'8322'_98 v10
du_drop'45'inj'8322'_98 :: T__'8846''45''60'__26 -> AgdaAny
du_drop'45'inj'8322'_98 v0
  = case coe v0 of
      C_'8322''8764''8322'_64 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-refl
d_'8846''45''60''45'refl_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T__'8846''45''60'__26
d_'8846''45''60''45'refl_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                             v10
  = du_'8846''45''60''45'refl_102 v8 v9 v10
du_'8846''45''60''45'refl_102 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T__'8846''45''60'__26
du_'8846''45''60''45'refl_102 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> coe C_'8321''8764''8321'_56 (coe v0 v3)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> coe C_'8322''8764''8322'_64 (coe v1 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-transitive
d_'8846''45''60''45'transitive_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T__'8846''45''60'__26 ->
  T__'8846''45''60'__26 -> T__'8846''45''60'__26
d_'8846''45''60''45'transitive_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   v8 v9 v10 v11 v12 v13 v14
  = du_'8846''45''60''45'transitive_116 v8 v9 v10 v11 v12 v13 v14
du_'8846''45''60''45'transitive_116 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T__'8846''45''60'__26 ->
  T__'8846''45''60'__26 -> T__'8846''45''60'__26
du_'8846''45''60''45'transitive_116 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      C_'8321''8764''8322'_48
        -> coe seq (coe v6) (coe C_'8321''8764''8322'_48)
      C_'8321''8764''8321'_56 v9
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                      -> case coe v6 of
                           C_'8321''8764''8322'_48 -> coe C_'8321''8764''8322'_48
                           C_'8321''8764''8321'_56 v14
                             -> case coe v4 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                    -> coe C_'8321''8764''8321'_56 (coe v0 v10 v11 v15 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C_'8322''8764''8322'_64 v9
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                      -> case coe v6 of
                           C_'8322''8764''8322'_64 v14
                             -> case coe v4 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                    -> coe C_'8322''8764''8322'_64 (coe v1 v10 v11 v15 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-asymmetric
d_'8846''45''60''45'asymmetric_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T__'8846''45''60'__26 ->
  T__'8846''45''60'__26 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8846''45''60''45'asymmetric_146 = erased
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-total
d_'8846''45''60''45'total_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8846''45''60''45'total_164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8846''45''60''45'total_164 v8 v9
du_'8846''45''60''45'total_164 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8846''45''60''45'total_164 v0 v1
  = coe du_total_174 (coe v0) (coe v1)
-- Data.Sum.Relation.Binary.LeftOrder._._.total
d_total_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11
  = du_total_174 v8 v9 v10 v11
du_total_174 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_174 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du_map_84 (coe C_'8321''8764''8321'_56)
                    (coe C_'8321''8764''8321'_56) (coe v0 v4 v5)
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                    (coe C_'8321''8764''8322'_48)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                    (coe C_'8321''8764''8322'_48)
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du_map_84 (coe C_'8322''8764''8322'_64)
                    (coe C_'8322''8764''8322'_64) (coe v1 v4 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-decidable
d_'8846''45''60''45'decidable_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8846''45''60''45'decidable_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  v8 v9 v10 v11
  = du_'8846''45''60''45'decidable_192 v8 v9 v10 v11
du_'8846''45''60''45'decidable_192 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8846''45''60''45'decidable_192 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_'8321''8764''8321'_56) (coe du_drop'45'inj'8321'_90)
                    (coe v0 v4 v5)
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe C_'8321''8764''8322'_48))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_'8322''8764''8322'_64) (coe du_drop'45'inj'8322'_98)
                    (coe v1 v4 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-wellFounded
d_'8846''45''60''45'wellFounded_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'8846''45''60''45'wellFounded_226 = erased
-- Data.Sum.Relation.Binary.LeftOrder._._.⊎-<-acc₁
d_'8846''45''60''45'acc'8321'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T__'8846''45''60'__26 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'8846''45''60''45'acc'8321'_240 = erased
-- Data.Sum.Relation.Binary.LeftOrder._._.⊎-<-acc₂
d_'8846''45''60''45'acc'8322'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T__'8846''45''60'__26 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'8846''45''60''45'acc'8322'_248 = erased
-- Data.Sum.Relation.Binary.LeftOrder._._.⊎-<-acc
d_'8846''45''60''45'acc_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T__'8846''45''60'__26 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'8846''45''60''45'acc_260 = erased
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-reflexive
d_'8846''45''60''45'reflexive_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  T__'8846''45''60'__26
d_'8846''45''60''45'reflexive_294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 ~v9 ~v10 ~v11 v12 v13 v14 v15 v16
  = du_'8846''45''60''45'reflexive_294 v12 v13 v14 v15 v16
du_'8846''45''60''45'reflexive_294 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  T__'8846''45''60'__26
du_'8846''45''60''45'reflexive_294 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                      -> coe C_'8321''8764''8321'_56 (coe v0 v8 v9 v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                      -> coe C_'8322''8764''8322'_64 (coe v1 v8 v9 v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-irreflexive
d_'8846''45''60''45'irreflexive_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  T__'8846''45''60'__26 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8846''45''60''45'irreflexive_308 = erased
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-antisymmetric
d_'8846''45''60''45'antisymmetric_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T__'8846''45''60'__26 ->
  T__'8846''45''60'__26 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
d_'8846''45''60''45'antisymmetric_326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13 v14 v15 v16 v17
  = du_'8846''45''60''45'antisymmetric_326 v12 v13 v14 v15 v16 v17
du_'8846''45''60''45'antisymmetric_326 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T__'8846''45''60'__26 ->
  T__'8846''45''60'__26 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
du_'8846''45''60''45'antisymmetric_326 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C_'8321''8764''8321'_56 v8
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                      -> case coe v5 of
                           C_'8321''8764''8321'_56 v13
                             -> coe
                                  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88
                                  (coe v0 v9 v10 v8 v13)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C_'8322''8764''8322'_64 v8
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                      -> case coe v5 of
                           C_'8322''8764''8322'_64 v13
                             -> coe
                                  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94
                                  (coe v1 v9 v10 v8 v13)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-respectsʳ
d_'8846''45''60''45'respects'691'_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  T__'8846''45''60'__26 -> T__'8846''45''60'__26
d_'8846''45''60''45'respects'691'_344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13 v14 v15 v16 v17 v18
  = du_'8846''45''60''45'respects'691'_344
      v12 v13 v14 v15 v16 v17 v18
du_'8846''45''60''45'respects'691'_344 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  T__'8846''45''60'__26 -> T__'8846''45''60'__26
du_'8846''45''60''45'respects'691'_344 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v9
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                      -> case coe v6 of
                           C_'8321''8764''8321'_56 v14
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                    -> coe C_'8321''8764''8321'_56 (coe v0 v15 v10 v11 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v9
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                      -> case coe v6 of
                           C_'8321''8764''8322'_48 -> coe C_'8321''8764''8322'_48
                           C_'8322''8764''8322'_64 v14
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                    -> coe C_'8322''8764''8322'_64 (coe v1 v15 v10 v11 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-respectsˡ
d_'8846''45''60''45'respects'737'_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  T__'8846''45''60'__26 -> T__'8846''45''60'__26
d_'8846''45''60''45'respects'737'_368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13 v14 v15 v16 v17 v18
  = du_'8846''45''60''45'respects'737'_368
      v12 v13 v14 v15 v16 v17 v18
du_'8846''45''60''45'respects'737'_368 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  T__'8846''45''60'__26 -> T__'8846''45''60'__26
du_'8846''45''60''45'respects'737'_368 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v9
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                      -> case coe v6 of
                           C_'8321''8764''8322'_48 -> coe C_'8321''8764''8322'_48
                           C_'8321''8764''8321'_56 v14
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                    -> coe C_'8321''8764''8321'_56 (coe v0 v15 v10 v11 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v9
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                      -> case coe v6 of
                           C_'8322''8764''8322'_64 v14
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                    -> coe C_'8322''8764''8322'_64 (coe v1 v15 v10 v11 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-respects₂
d_'8846''45''60''45'respects'8322'_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8846''45''60''45'respects'8322'_392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'8846''45''60''45'respects'8322'_392 v12 v13
du_'8846''45''60''45'respects'8322'_392 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8846''45''60''45'respects'8322'_392 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe du_'8846''45''60''45'respects'691'_344 (coe v2) (coe v4))
                    (coe du_'8846''45''60''45'respects'737'_368 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-trichotomous
d_'8846''45''60''45'trichotomous_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'8846''45''60''45'trichotomous_402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13 v14 v15
  = du_'8846''45''60''45'trichotomous_402 v12 v13 v14 v15
du_'8846''45''60''45'trichotomous_402 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
du_'8846''45''60''45'trichotomous_402 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
               -> let v6 = coe v0 v4 v5 in
                  coe
                    (case coe v6 of
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v7
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                              (coe C_'8321''8764''8321'_56 v7)
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v8
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                              (coe
                                 MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v8)
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v9
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                              (coe C_'8321''8764''8321'_56 v9)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                    (coe C_'8321''8764''8322'_48)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                    (coe C_'8321''8764''8322'_48)
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
               -> let v6 = coe v1 v4 v5 in
                  coe
                    (case coe v6 of
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v7
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                              (coe C_'8322''8764''8322'_64 v7)
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v8
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                              (coe
                                 MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v8)
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v9
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                              (coe C_'8322''8764''8322'_64 v9)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-isPreorder
d_'8846''45''60''45'isPreorder_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8846''45''60''45'isPreorder_556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'8846''45''60''45'isPreorder_556 v12 v13
du_'8846''45''60''45'isPreorder_556 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_'8846''45''60''45'isPreorder_556 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_'8846''45'isEquivalence_382
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
            (coe v1)))
      (coe
         du_'8846''45''60''45'reflexive_294
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88 (coe v1)))
      (coe
         du_'8846''45''60''45'transitive_116
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_90 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_90 (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-isPartialOrder
d_'8846''45''60''45'isPartialOrder_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8846''45''60''45'isPartialOrder_566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'8846''45''60''45'isPartialOrder_566 v12 v13
du_'8846''45''60''45'isPartialOrder_566 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
du_'8846''45''60''45'isPartialOrder_566 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe
         du_'8846''45''60''45'isPreorder_556
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256 (coe v1)))
      (coe
         du_'8846''45''60''45'antisymmetric_326
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_258 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_258 (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-isStrictPartialOrder
d_'8846''45''60''45'isStrictPartialOrder_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_'8846''45''60''45'isStrictPartialOrder_576 ~v0 ~v1 ~v2 ~v3 ~v4
                                             ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'8846''45''60''45'isStrictPartialOrder_576 v12 v13
du_'8846''45''60''45'isStrictPartialOrder_576 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
du_'8846''45''60''45'isStrictPartialOrder_576 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_'8846''45'isEquivalence_382
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_382
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_382
            (coe v1)))
      (coe
         du_'8846''45''60''45'transitive_116
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_386 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_386 (coe v1)))
      (coe
         du_'8846''45''60''45'respects'8322'_392
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_388
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_388
            (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-isTotalOrder
d_'8846''45''60''45'isTotalOrder_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_'8846''45''60''45'isTotalOrder_586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'8846''45''60''45'isTotalOrder_586 v12 v13
du_'8846''45''60''45'isTotalOrder_586 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
du_'8846''45''60''45'isTotalOrder_586 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_540
      (coe
         du_'8846''45''60''45'isPartialOrder_566
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
            (coe v1)))
      (coe
         du_'8846''45''60''45'total_164
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_498 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_498 (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-isDecTotalOrder
d_'8846''45''60''45'isDecTotalOrder_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
d_'8846''45''60''45'isDecTotalOrder_596 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'8846''45''60''45'isDecTotalOrder_596 v12 v13
du_'8846''45''60''45'isDecTotalOrder_596 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
du_'8846''45''60''45'isDecTotalOrder_596 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_618
      (coe
         du_'8846''45''60''45'isTotalOrder_586
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_556
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_556
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_'8846''45'decidable_212
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__558 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__558 (coe v1)))
      (coe
         du_'8846''45''60''45'decidable_192
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
            (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-isStrictTotalOrder
d_'8846''45''60''45'isStrictTotalOrder_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'8846''45''60''45'isStrictTotalOrder_606 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                           ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'8846''45''60''45'isStrictTotalOrder_606 v12 v13
du_'8846''45''60''45'isStrictTotalOrder_606 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
du_'8846''45''60''45'isStrictTotalOrder_606 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_680
      (coe
         du_'8846''45''60''45'isStrictPartialOrder_576
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_632
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_632
            (coe v1)))
      (coe
         du_'8846''45''60''45'trichotomous_402
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_634 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_634 (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-preorder
d_'8846''45''60''45'preorder_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8846''45''60''45'preorder_632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'8846''45''60''45'preorder_632 v6 v7
du_'8846''45''60''45'preorder_632 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'8846''45''60''45'preorder_632 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      (coe
         du_'8846''45''60''45'isPreorder_556
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-poset
d_'8846''45''60''45'poset_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_'8846''45''60''45'poset_642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'8846''45''60''45'poset_642 v6 v7
du_'8846''45''60''45'poset_642 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
du_'8846''45''60''45'poset_642 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_588
      (coe
         du_'8846''45''60''45'isPartialOrder_566
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_514 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_514
            (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-strictPartialOrder
d_'8846''45''60''45'strictPartialOrder_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
d_'8846''45''60''45'strictPartialOrder_652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                           v6 v7
  = du_'8846''45''60''45'strictPartialOrder_652 v6 v7
du_'8846''45''60''45'strictPartialOrder_652 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
du_'8846''45''60''45'strictPartialOrder_652 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_842
      (coe
         du_'8846''45''60''45'isStrictPartialOrder_576
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_782
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_782
            (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-totalOrder
d_'8846''45''60''45'totalOrder_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
d_'8846''45''60''45'totalOrder_662 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'8846''45''60''45'totalOrder_662 v6 v7
du_'8846''45''60''45'totalOrder_662 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
du_'8846''45''60''45'totalOrder_662 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1090
      (coe
         du_'8846''45''60''45'isTotalOrder_586
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008 (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-decTotalOrder
d_'8846''45''60''45'decTotalOrder_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_'8846''45''60''45'decTotalOrder_672 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'8846''45''60''45'decTotalOrder_672 v6 v7
du_'8846''45''60''45'decTotalOrder_672 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_'8846''45''60''45'decTotalOrder_672 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      (coe
         du_'8846''45''60''45'isDecTotalOrder_596
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
            (coe v1)))
-- Data.Sum.Relation.Binary.LeftOrder._.⊎-<-strictTotalOrder
d_'8846''45''60''45'strictTotalOrder_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
d_'8846''45''60''45'strictTotalOrder_682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
                                         v7
  = du_'8846''45''60''45'strictTotalOrder_682 v6 v7
du_'8846''45''60''45'strictTotalOrder_682 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
du_'8846''45''60''45'strictTotalOrder_682 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1386
      (coe
         du_'8846''45''60''45'isStrictTotalOrder_606
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_1302
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_1302
            (coe v1)))
