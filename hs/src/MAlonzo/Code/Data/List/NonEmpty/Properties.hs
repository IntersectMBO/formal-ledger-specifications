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

module MAlonzo.Code.Data.List.NonEmpty.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.List.NonEmpty.Properties.LMo._>>=_
d__'62''62''61'__44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__44 ~v0 ~v1 ~v2 v3 v4 = du__'62''62''61'__44 v3 v4
du__'62''62''61'__44 ::
  [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
du__'62''62''61'__44 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_concatMap_246 (coe v1) (coe v0)
-- Data.List.NonEmpty.Properties.L⁺Mo._>>=_
d__'62''62''61'__98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22
d__'62''62''61'__98 ~v0 ~v1 ~v2 v3 v4 = du__'62''62''61'__98 v3 v4
du__'62''62''61'__98 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22
du__'62''62''61'__98 v0 v1
  = coe MAlonzo.Code.Data.List.NonEmpty.Base.du_concatMap_208 v1 v0
-- Data.List.NonEmpty.Properties.η
d_η_128 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_η_128 = erased
-- Data.List.NonEmpty.Properties.toList-fromList
d_toList'45'fromList_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toList'45'fromList_134 = erased
-- Data.List.NonEmpty.Properties.toList-⁺++
d_toList'45''8314''43''43'_140 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toList'45''8314''43''43'_140 = erased
-- Data.List.NonEmpty.Properties.toList-⁺++⁺
d_toList'45''8314''43''43''8314'_146 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toList'45''8314''43''43''8314'_146 = erased
-- Data.List.NonEmpty.Properties.toList->>=
d_toList'45''62''62''61'_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toList'45''62''62''61'_152 = erased
-- Data.List.NonEmpty.Properties.∷→∷⁺
d_'8759''8594''8759''8314'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''8594''8759''8314'_168 = erased
-- Data.List.NonEmpty.Properties.∷⁺→∷
d_'8759''8314''8594''8759'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''8314''8594''8759'_178 = erased
-- Data.List.NonEmpty.Properties.length-⁺++⁺
d_length'45''8314''43''43''8314'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45''8314''43''43''8314'_184 = erased
-- Data.List.NonEmpty.Properties.length-⁺++⁺-comm
d_length'45''8314''43''43''8314''45'comm_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45''8314''43''43''8314''45'comm_198 = erased
-- Data.List.NonEmpty.Properties.length-⁺++⁺-≤ˡ
d_length'45''8314''43''43''8314''45''8804''737'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45''8314''43''43''8314''45''8804''737'_212 ~v0 ~v1 v2 v3
  = du_length'45''8314''43''43''8314''45''8804''737'_212 v2 v3
du_length'45''8314''43''43''8314''45''8804''737'_212 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45''8314''43''43''8314''45''8804''737'_212 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v2 v3
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe
                   MAlonzo.Code.Data.List.Properties.du_length'45''43''43''45''8804''737'_532
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Properties.length-⁺++⁺-≤ʳ
d_length'45''8314''43''43''8314''45''8804''691'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45''8314''43''43''8314''45''8804''691'_226 ~v0 ~v1 v2 v3
  = du_length'45''8314''43''43''8314''45''8804''691'_226 v2 v3
du_length'45''8314''43''43''8314''45''8804''691'_226 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45''8314''43''43''8314''45''8804''691'_226 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v4 v5
               -> coe
                    MAlonzo.Code.Data.List.Properties.du_length'45''43''43''45''8804''691'_542
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4) (coe v5))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Properties.map-⁺++⁺
d_map'45''8314''43''43''8314'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''8314''43''43''8314'_242 = erased
-- Data.List.NonEmpty.Properties._._.Associative
d_Associative_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22) ->
  ()
d_Associative_286 = erased
-- Data.List.NonEmpty.Properties._._.Cancellative
d_Cancellative_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22) ->
  ()
d_Cancellative_288 = erased
-- Data.List.NonEmpty.Properties._._.LeftCancellative
d_LeftCancellative_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22) ->
  ()
d_LeftCancellative_320 = erased
-- Data.List.NonEmpty.Properties._._.RightCancellative
d_RightCancellative_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22) ->
  ()
d_RightCancellative_350 = erased
-- Data.List.NonEmpty.Properties._.⁺++⁺-assoc
d_'8314''43''43''8314''45'assoc_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8314''43''43''8314''45'assoc_392 = erased
-- Data.List.NonEmpty.Properties._.⁺++⁺-cancelˡ
d_'8314''43''43''8314''45'cancel'737'_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8314''43''43''8314''45'cancel'737'_408 = erased
-- Data.List.NonEmpty.Properties._.⁺++⁺-cancelʳ
d_'8314''43''43''8314''45'cancel'691'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8314''43''43''8314''45'cancel'691'_424 = erased
-- Data.List.NonEmpty.Properties._.⁺++⁺-cancel
d_'8314''43''43''8314''45'cancel_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8314''43''43''8314''45'cancel_440 ~v0 ~v1
  = du_'8314''43''43''8314''45'cancel_440
du_'8314''43''43''8314''45'cancel_440 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8314''43''43''8314''45'cancel_440
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.List.NonEmpty.Properties.length-++⁺
d_length'45''43''43''8314'_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45''43''43''8314'_446 = erased
-- Data.List.NonEmpty.Properties.length-++⁺-tail
d_length'45''43''43''8314''45'tail_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45''43''43''8314''45'tail_464 = erased
-- Data.List.NonEmpty.Properties.++-++⁺
d_'43''43''45''43''43''8314'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''45''43''43''8314'_484 = erased
-- Data.List.NonEmpty.Properties.++⁺-cancelˡ′
d_'43''43''8314''45'cancel'737''8242'_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''8314''45'cancel'737''8242'_500 = erased
-- Data.List.NonEmpty.Properties.++⁺-cancelˡ
d_'43''43''8314''45'cancel'737'_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''43''8314''45'cancel'737'_524 = erased
-- Data.List.NonEmpty.Properties.drop-+-++⁺
d_drop'45''43''45''43''43''8314'_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45''43''45''43''43''8314'_534 = erased
-- Data.List.NonEmpty.Properties.map-++⁺
d_map'45''43''43''8314'_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''43''43''8314'_550 = erased
-- Data.List.NonEmpty.Properties.length-map
d_length'45'map_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'map_570 = erased
-- Data.List.NonEmpty.Properties.map-cong
d_map'45'cong_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'cong_580 = erased
-- Data.List.NonEmpty.Properties.map-∘
d_map'45''8728'_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''8728'_592 = erased
-- Data.List.NonEmpty.Properties.map-id
d_map'45'id_600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'id_600 = erased
-- Data.List.NonEmpty.Properties.toList-inits
d_toList'45'inits_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toList'45'inits_608 = erased
-- Data.List.NonEmpty.Properties.toList-tails
d_toList'45'tails_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toList'45'tails_610 = erased
-- Data.List.NonEmpty.Properties._.groupSeqs-groups
d_groupSeqs'45'groups_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_groupSeqs'45'groups_626 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_groupSeqs'45'groups_626 v4 v5
du_groupSeqs'45'groups_626 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_groupSeqs'45'groups_626 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           coe
             (let v5
                    = coe
                        MAlonzo.Code.Data.List.NonEmpty.Base.du_groupSeqs'7495'_342
                        (coe
                           (\ v5 ->
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                (coe v0 v5)))
                        (coe v3) in
              coe
                (let v6 = coe du_groupSeqs'45'groups_626 (coe v0) (coe v3) in
                 coe
                   (case coe v4 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                        -> if coe v7
                             then case coe v8 of
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                      -> case coe v5 of
                                           []
                                             -> coe
                                                  MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                  (coe
                                                     MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56
                                                     (coe
                                                        MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All.C__'8759'__42
                                                        v9
                                                        (coe
                                                           MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)))
                                                  v6
                                           (:) v10 v11
                                             -> case coe v10 of
                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                    -> case coe v6 of
                                                         MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v15 v16
                                                           -> case coe v15 of
                                                                MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56 v18
                                                                  -> coe
                                                                       MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                                       (coe
                                                                          MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56
                                                                          (coe
                                                                             MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All.C__'8759'__42
                                                                             v9
                                                                             (coe
                                                                                MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All.du_toList'8314'_46
                                                                                (coe v18))))
                                                                       v16
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                    -> case coe v6 of
                                                         MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v15 v16
                                                           -> case coe v15 of
                                                                MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60 v18
                                                                  -> coe
                                                                       MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                                       (coe
                                                                          MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56
                                                                          (coe
                                                                             MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All.C__'8759'__42
                                                                             v9
                                                                             (coe
                                                                                MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)))
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                                          (coe
                                                                             MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60
                                                                             v18)
                                                                          v16)
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             else coe
                                    seq (coe v8)
                                    (case coe v5 of
                                       []
                                         -> coe
                                              MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                              (coe
                                                 MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60
                                                 (coe
                                                    MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All.C__'8759'__42
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)))
                                              v6
                                       (:) v9 v10
                                         -> case coe v9 of
                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                                -> case coe v6 of
                                                     MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v14 v15
                                                       -> case coe v14 of
                                                            MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56 v17
                                                              -> coe
                                                                   MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All.C__'8759'__42
                                                                         erased
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)))
                                                                   (coe
                                                                      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                                      (coe
                                                                         MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56
                                                                         v17)
                                                                      v15)
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                                -> case coe v6 of
                                                     MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v14 v15
                                                       -> case coe v14 of
                                                            MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60 v17
                                                              -> coe
                                                                   MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All.C__'8759'__42
                                                                         erased
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All.du_toList'8314'_46
                                                                            (coe v17))))
                                                                   v15
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              _ -> MAlonzo.RTE.mazUnreachableError
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                      _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Properties._.ungroupSeqs-groupSeqs
d_ungroupSeqs'45'groupSeqs_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ungroupSeqs'45'groupSeqs_710 = erased
-- Data.List.NonEmpty.Properties.map-compose
d_map'45'compose_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'compose_768 = erased
-- Data.List.NonEmpty.Properties.map-++⁺-commute
d_map'45''43''43''8314''45'commute_770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''43''43''8314''45'commute_770 = erased
