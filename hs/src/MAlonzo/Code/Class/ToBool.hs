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

module MAlonzo.Code.Class.ToBool where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Polymorphic.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Class.ToBool.ToBool′
d_ToBool'8242'_20 a0 a1 a2 a3 a4 a5 = ()
newtype T_ToBool'8242'_20
  = C_ToBool'8242''46'constructor_201 (AgdaAny ->
                                       AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Class.ToBool.ToBool′.decide
d_decide_36 ::
  T_ToBool'8242'_20 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_decide_36 v0
  = case coe v0 of
      C_ToBool'8242''46'constructor_201 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.ToBool.ToBool′.if_then_else_
d_if_then_else__42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T_ToBool'8242'_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny
d_if_then_else__42 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9 v10 v11
                   v12
  = du_if_then_else__42 v6 v9 v10 v11 v12
du_if_then_else__42 ::
  T_ToBool'8242'_20 ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny
du_if_then_else__42 v0 v1 v2 v3 v4
  = let v5 = coe d_decide_36 v0 v1 v2 in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6 -> coe v3 v6
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6 -> coe v4 v6
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.ToBool.ToBool′.toBool
d_toBool_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> T_ToBool'8242'_20 -> AgdaAny -> AgdaAny -> Bool
d_toBool_60 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_toBool_60 v6 v7 v8
du_toBool_60 :: T_ToBool'8242'_20 -> AgdaAny -> AgdaAny -> Bool
du_toBool_60 v0 v1 v2
  = coe
      du_if_then_else__42 (coe v0) (coe v1) (coe v2)
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Class.ToBool._.decide
d_decide_66 ::
  T_ToBool'8242'_20 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_decide_66 v0 = coe d_decide_36 (coe v0)
-- Class.ToBool._.if_then_else_
d_if_then_else__68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T_ToBool'8242'_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny
d_if_then_else__68 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_if_then_else__68 v6
du_if_then_else__68 ::
  T_ToBool'8242'_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny
du_if_then_else__68 v0 v1 v2 v3 v4 v5 v6
  = coe du_if_then_else__42 (coe v0) v3 v4 v5 v6
-- Class.ToBool._.toBool
d_toBool_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> T_ToBool'8242'_20 -> AgdaAny -> AgdaAny -> Bool
d_toBool_70 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_toBool_70 v6
du_toBool_70 :: T_ToBool'8242'_20 -> AgdaAny -> AgdaAny -> Bool
du_toBool_70 v0 = coe du_toBool_60 (coe v0)
-- Class.ToBool.ToBool
d_ToBool_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d_ToBool_78 = erased
-- Class.ToBool.ToBool-Bool
d_ToBool'45'Bool_90 :: T_ToBool'8242'_20
d_ToBool'45'Bool_90
  = coe
      C_ToBool'8242''46'constructor_201
      (coe
         (\ v0 v1 ->
            if coe v0
              then coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
              else coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased))
-- Class.ToBool.ToBool-Dec
d_ToBool'45'Dec_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_ToBool'8242'_20
d_ToBool'45'Dec_94 ~v0 ~v1 = du_ToBool'45'Dec_94
du_ToBool'45'Dec_94 :: T_ToBool'8242'_20
du_ToBool'45'Dec_94
  = coe
      C_ToBool'8242''46'constructor_201
      (coe
         (\ v0 v1 ->
            case coe v0 of
              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
                -> if coe v2
                     then case coe v3 of
                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v4
                              -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v4)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     else coe
                            seq (coe v3) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.ToBool.ToBool-Maybe
d_ToBool'45'Maybe_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_ToBool'8242'_20
d_ToBool'45'Maybe_102 ~v0 ~v1 = du_ToBool'45'Maybe_102
du_ToBool'45'Maybe_102 :: T_ToBool'8242'_20
du_ToBool'45'Maybe_102
  = coe
      C_ToBool'8242''46'constructor_201
      (coe
         (\ v0 v1 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
                -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v2)
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                -> coe
                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                     (coe MAlonzo.Code.Data.Unit.Polymorphic.Base.du_tt_16)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.ToBool.ToBool-⁇
d_ToBool'45''8263'_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_ToBool'8242'_20
d_ToBool'45''8263'_108 ~v0 = du_ToBool'45''8263'_108
du_ToBool'45''8263'_108 :: T_ToBool'8242'_20
du_ToBool'45''8263'_108
  = coe
      C_ToBool'8242''46'constructor_201
      (coe
         (\ v0 v1 ->
            let v2 = MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v1) in
            coe
              (case coe v2 of
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
                   -> if coe v3
                        then case coe v4 of
                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v5
                                 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v5)
                               _ -> MAlonzo.RTE.mazUnreachableError
                        else coe
                               seq (coe v4) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
