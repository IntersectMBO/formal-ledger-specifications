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

module MAlonzo.Code.Class.Decidable.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Relation.Unary.All
import qualified MAlonzo.Code.Data.Vec.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Class.Decidable.Instances.DecEq⇒Dec
d_DecEq'8658'Dec_16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_DecEq'8658'Dec_16 ~v0 ~v1 v2 v3 v4
  = du_DecEq'8658'Dec_16 v2 v3 v4
du_DecEq'8658'Dec_16 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_DecEq'8658'Dec_16 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) (coe v1)
      (coe v2)
-- Class.Decidable.Instances.Dec-⊥
d_Dec'45''8869'_18 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8869'_18
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Class.Decidable.Instances.Dec-⊤
d_Dec'45''8868'_20 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8868'_20
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (coe
            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Class.Decidable.Instances.Dec-→
d_Dec'45''8594'_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8594'_22 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Dec'45''8594'_22 v4 v5
du_Dec'45''8594'_22 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8594'_22 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v0))
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v1)))
-- Class.Decidable.Instances.Dec-×
d_Dec'45''215'_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''215'_24 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45''215'_24 v4 v5
du_Dec'45''215'_24 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''215'_24 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v0))
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v1)))
-- Class.Decidable.Instances.Dec-⊎
d_Dec'45''8846'_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8846'_26 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Dec'45''8846'_26 v4 v5
du_Dec'45''8846'_26 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8846'_26 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v0))
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v1)))
-- Class.Decidable.Instances.Dec-⊎All
d_Dec'45''8846'All_28 ::
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
d_Dec'45''8846'All_28 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_Dec'45''8846'All_28 v8 v9 v10
du_Dec'45''8846'All_28 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8846'All_28 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                (coe MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56)
                (coe du_inj'8321''728'_40)
                (coe
                   MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42 (coe v0 v3))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                (coe MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60)
                (coe du_inj'8322''728'_54)
                (coe
                   MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42 (coe v1 v3))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.Decidable.Instances._.inj₁˘
d_inj'8321''728'_40 ::
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
  MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44 -> AgdaAny
d_inj'8321''728'_40 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_inj'8321''728'_40 v11
du_inj'8321''728'_40 ::
  MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44 -> AgdaAny
du_inj'8321''728'_40 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Decidable.Instances._.inj₂˘
d_inj'8322''728'_54 ::
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
d_inj'8322''728'_54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    ~v11 v12
  = du_inj'8322''728'_54 v12
du_inj'8322''728'_54 ::
  MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44 -> AgdaAny
du_inj'8322''728'_54 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Decidable.Instances.Dec-T
d_Dec'45'T_58 ::
  Bool -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'T_58 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66)
      (coe v0)
-- Class.Decidable.Instances.Dec-All
d_Dec'45'All_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All_60 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45'All_60 v4 v5
du_Dec'45'All_60 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'All_60 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_506
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-Any
d_Dec'45'Any_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any_62 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45'Any_62 v4 v5
du_Dec'45'Any_62 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'Any_62 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-AllPairs
d_Dec'45'AllPairs_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'AllPairs_64 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Dec'45'AllPairs_64 v4 v5
du_Dec'45'AllPairs_64 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'AllPairs_64 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.AllPairs.du_allPairs'63'_110
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_136 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-VAll
d_Dec'45'VAll_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'VAll_66 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_Dec'45'VAll_66 v5 v6
du_Dec'45'VAll_66 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'VAll_66 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         MAlonzo.Code.Data.Vec.Relation.Unary.All.du_all'63'_278
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-VAny
d_Dec'45'VAny_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'VAny_68 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_Dec'45'VAny_68 v5 v6
du_Dec'45'VAny_68 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'VAny_68 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         MAlonzo.Code.Data.Vec.Relation.Unary.Any.du_any'63'_124
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-MAll
d_Dec'45'MAll_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  Maybe AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'MAll_70 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45'MAll_70 v4 v5
du_Dec'45'MAll_70 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  Maybe AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'MAll_70 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-MAny
d_Dec'45'MAny_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  Maybe AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'MAny_72 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45'MAny_72 v4 v5
du_Dec'45'MAny_72 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  Maybe AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'MAny_72 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         MAlonzo.Code.Data.Maybe.Relation.Unary.Any.du_dec_136
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.ℕ-Dec-≤
d_ℕ'45'Dec'45''8804'_74 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℕ'45'Dec'45''8804'_74
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802)
-- Class.Decidable.Instances.ℕ-Dec-<
d_ℕ'45'Dec'45''60'_76 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℕ'45'Dec'45''60'_76
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe MAlonzo.Code.Data.Nat.Properties.d__'60''63'__3030)
-- Class.Decidable.Instances.ℤ-Dec-≤
d_ℤ'45'Dec'45''8804'_78 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℤ'45'Dec'45''8804'_78
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2772)
-- Class.Decidable.Instances.ℤ-Dec-<
d_ℤ'45'Dec'45''60'_80 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℤ'45'Dec'45''60'_80
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe MAlonzo.Code.Data.Integer.Properties.d__'60''63'__3082)
-- Class.Decidable.Instances.ℚ-Dec-≤
d_ℚ'45'Dec'45''8804'_82 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℚ'45'Dec'45''8804'_82
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3530)
-- Class.Decidable.Instances.ℚ-Dec-<
d_ℚ'45'Dec'45''60'_84 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℚ'45'Dec'45''60'_84
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe MAlonzo.Code.Data.Rational.Properties.d__'60''63'__3712)
