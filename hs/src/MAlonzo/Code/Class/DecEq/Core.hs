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

module MAlonzo.Code.Class.DecEq.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Class.DecEq.Core.DecEq
d_DecEq_10 a0 a1 = ()
newtype T_DecEq_10
  = C_constructor_26 (AgdaAny ->
                      AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Class.DecEq.Core.DecEq._≟_
d__'8799'__16 ::
  T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__16 v0
  = case coe v0 of
      C_constructor_26 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.DecEq.Core.DecEq._==_
d__'61''61'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
d__'61''61'__18 ~v0 ~v1 v2 = du__'61''61'__18 v2
du__'61''61'__18 :: T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
du__'61''61'__18 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28 (coe v3)))
      (coe d__'8799'__16 (coe v0))
-- Class.DecEq.Core.DecEq._≠_
d__'8800'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
d__'8800'__20 ~v0 ~v1 v2 = du__'8800'__20 v2
du__'8800'__20 :: T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
du__'8800'__20 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> MAlonzo.Code.Data.Bool.Base.d_not_22))
      (coe du__'61''61'__18 (coe v0))
-- Class.DecEq.Core.DecEq._≡ᵇ_
d__'8801''7495'__22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
d__'8801''7495'__22 ~v0 ~v1 v2 = du__'8801''7495'__22 v2
du__'8801''7495'__22 :: T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
du__'8801''7495'__22 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 ->
            coe MAlonzo.Code.Relation.Nullary.Decidable.Core.du_isYes_132))
      (coe d__'8799'__16 (coe v0))
-- Class.DecEq.Core.DecEq._≢ᵇ_
d__'8802''7495'__24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
d__'8802''7495'__24 ~v0 ~v1 v2 = du__'8802''7495'__24 v2
du__'8802''7495'__24 :: T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
du__'8802''7495'__24 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> MAlonzo.Code.Data.Bool.Base.d_not_22))
      (coe du__'8801''7495'__22 (coe v0))
-- Class.DecEq.Core._._==_
d__'61''61'__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
d__'61''61'__30 ~v0 ~v1 v2 = du__'61''61'__30 v2
du__'61''61'__30 :: T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
du__'61''61'__30 v0 = coe du__'61''61'__18 (coe v0)
-- Class.DecEq.Core._._≟_
d__'8799'__32 ::
  T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__32 v0 = coe d__'8799'__16 (coe v0)
-- Class.DecEq.Core._._≠_
d__'8800'__34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
d__'8800'__34 ~v0 ~v1 v2 = du__'8800'__34 v2
du__'8800'__34 :: T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
du__'8800'__34 v0 = coe du__'8800'__20 (coe v0)
-- Class.DecEq.Core._._≡ᵇ_
d__'8801''7495'__36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
d__'8801''7495'__36 ~v0 ~v1 v2 = du__'8801''7495'__36 v2
du__'8801''7495'__36 :: T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
du__'8801''7495'__36 v0 = coe du__'8801''7495'__22 (coe v0)
-- Class.DecEq.Core._._≢ᵇ_
d__'8802''7495'__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
d__'8802''7495'__38 ~v0 ~v1 v2 = du__'8802''7495'__38 v2
du__'8802''7495'__38 :: T_DecEq_10 -> AgdaAny -> AgdaAny -> Bool
du__'8802''7495'__38 v0 = coe du__'8802''7495'__24 (coe v0)
-- Class.DecEq.Core.DecEq¹
d_DecEq'185'_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> (AgdaAny -> ()) -> ()
d_DecEq'185'_40 = erased
-- Class.DecEq.Core.DecEq²
d_DecEq'178'_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> ()
d_DecEq'178'_42 = erased
-- Class.DecEq.Core.DecEq³
d_DecEq'179'_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) -> ()
d_DecEq'179'_44 = erased
-- Class.DecEq.Core.Irrelevant⇒DecEq
d_Irrelevant'8658'DecEq_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_DecEq_10
d_Irrelevant'8658'DecEq_46 ~v0 ~v1 v2
  = du_Irrelevant'8658'DecEq_46 v2
du_Irrelevant'8658'DecEq_46 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_DecEq_10
du_Irrelevant'8658'DecEq_46 v0
  = coe
      C_constructor_26
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 v3 ->
               coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                 (coe
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 (coe v3))))
         (coe v0))
