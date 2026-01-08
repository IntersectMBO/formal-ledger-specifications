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

module MAlonzo.Code.Class.Decidable.WithoutK where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Class.Decidable.WithoutK.ifᵈ_then_else_
d_if'7496'_then_else__14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
d_if'7496'_then_else__14 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_if'7496'_then_else__14 v4 v5 v6
du_if'7496'_then_else__14 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
du_if'7496'_then_else__14 v0 v1 v2
  = let v3 = MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v0) in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then case coe v5 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6 -> coe v1 v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe seq (coe v5) (coe v2 erased)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.Decidable.WithoutK.Dec-⊎All
d_Dec'45''8846'All_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8846'All_42 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_Dec'45''8846'All_42 v8 v9 v10
du_Dec'45''8846'All_42 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8846'All_42 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                (coe MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56)
                (coe du_inj'8321''728'_56)
                (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v0 v3))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                (coe MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60)
                (coe du_inj'8322''728'_72)
                (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v1 v3))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.Decidable.WithoutK._.inj₁˘
d_inj'8321''728'_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44 -> AgdaAny
d_inj'8321''728'_56 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    ~v11 v12
  = du_inj'8321''728'_56 v12
du_inj'8321''728'_56 ::
  MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44 -> AgdaAny
du_inj'8321''728'_56 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Decidable.WithoutK._.inj₂˘
d_inj'8322''728'_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44 -> AgdaAny
d_inj'8322''728'_72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    ~v11 v12
  = du_inj'8322''728'_72 v12
du_inj'8322''728'_72 ::
  MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44 -> AgdaAny
du_inj'8322''728'_72 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
