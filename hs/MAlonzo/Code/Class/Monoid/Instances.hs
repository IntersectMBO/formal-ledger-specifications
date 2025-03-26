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

module MAlonzo.Code.Class.Monoid.Instances where

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
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Vec.Base

-- Class.Monoid.Instances.Monoid-List
d_Monoid'45'List_6 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'List_6 ~v0 ~v1 = du_Monoid'45'List_6
du_Monoid'45'List_6 :: MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
du_Monoid'45'List_6
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Class.Monoid.Instances.MonoidLaws-List
d_MonoidLaws'45'List_8 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42
d_MonoidLaws'45'List_8 ~v0 ~v1 = du_MonoidLaws'45'List_8
du_MonoidLaws'45'List_8 ::
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42
du_MonoidLaws'45'List_8
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_MonoidLaws'46'constructor_2613
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- Class.Monoid.Instances.Monoid-Vec
d_Monoid'45'Vec_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'Vec_14 ~v0 ~v1 = du_Monoid'45'Vec_14
du_Monoid'45'Vec_14 :: MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
du_Monoid'45'Vec_14
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
         (coe MAlonzo.Code.Data.Vec.Base.C_'91''93'_32))
-- Class.Monoid.Instances.Monoid-String
d_Monoid'45'String_16 :: MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'String_16
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe ("" :: Data.Text.Text))
-- Class.Monoid.Instances._.Monoid-Maybe
d_Monoid'45'Maybe_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'Maybe_28 ~v0 ~v1 ~v2 ~v3 = du_Monoid'45'Maybe_28
du_Monoid'45'Maybe_28 :: MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
du_Monoid'45'Maybe_28
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
-- Class.Monoid.Instances._.MonoidLaws-Maybe
d_MonoidLaws'45'Maybe_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42 ->
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42
d_MonoidLaws'45'Maybe_30 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_MonoidLaws'45'Maybe_30
du_MonoidLaws'45'Maybe_30 ::
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42
du_MonoidLaws'45'Maybe_30
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_MonoidLaws'46'constructor_2613
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- Class.Monoid.Instances._._.p
d_p_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42 ->
  Maybe AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p_36 = erased
-- Class.Monoid.Instances._._.q
d_q_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42 ->
  Maybe AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_q_40 = erased
-- Class.Monoid.Instances._._.Monoid-ℕ-+
d_Monoid'45'ℕ'45''43'_54 ::
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'ℕ'45''43'_54
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe (0 :: Integer))
-- Class.Monoid.Instances._._.MonoidLaws-ℕ-+
d_MonoidLaws'45'ℕ'45''43'_60 ::
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42
d_MonoidLaws'45'ℕ'45''43'_60
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_MonoidLaws'46'constructor_2613
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- Class.Monoid.Instances._._.Monoid-ℕ-*
d_Monoid'45'ℕ'45''42'_68 ::
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'ℕ'45''42'_68
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe (1 :: Integer))
-- Class.Monoid.Instances._._.MonoidLaws-ℕ-*
d_MonoidLaws'45'ℕ'45''42'_74 ::
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42
d_MonoidLaws'45'ℕ'45''42'_74
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_MonoidLaws'46'constructor_2613
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- Class.Monoid.Instances._._.Monoid-ℤ-+
d_Monoid'45'ℤ'45''43'_86 ::
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'ℤ'45''43'_86
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)
-- Class.Monoid.Instances._._.MonoidLaws-ℤ-+
d_MonoidLaws'45'ℤ'45''43'_92 ::
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42
d_MonoidLaws'45'ℤ'45''43'_92
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_MonoidLaws'46'constructor_2613
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- Class.Monoid.Instances._._.Monoid-ℤ-*
d_Monoid'45'ℤ'45''42'_100 ::
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'ℤ'45''42'_100
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)
-- Class.Monoid.Instances._._.MonoidLaws-ℤ-*
d_MonoidLaws'45'ℤ'45''42'_106 ::
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42
d_MonoidLaws'45'ℤ'45''42'_106
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_MonoidLaws'46'constructor_2613
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- Class.Monoid.Instances._.just-◇ˡ
d_just'45''9671''737'_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42 ->
  AgdaAny ->
  Maybe AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_just'45''9671''737'_124 = erased
-- Class.Monoid.Instances._.just-◇ʳ
d_just'45''9671''691'_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_MonoidLaws_42 ->
  AgdaAny ->
  Maybe AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_just'45''9671''691'_130 = erased
