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

module MAlonzo.Code.Class.Semigroup.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Vec.Base

-- Class.Semigroup.Instances.Semigroup-List
d_Semigroup'45'List_6 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'List_6 ~v0 ~v1 = du_Semigroup'45'List_6
du_Semigroup'45'List_6 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
du_Semigroup'45'List_6
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
-- Class.Semigroup.Instances.Semigroup-List⁺
d_Semigroup'45'List'8314'_8 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'List'8314'_8 ~v0 ~v1 = du_Semigroup'45'List'8314'_8
du_Semigroup'45'List'8314'_8 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
du_Semigroup'45'List'8314'_8
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe
         MAlonzo.Code.Data.List.NonEmpty.Base.du__'8314''43''43''8314'__178)
-- Class.Semigroup.Instances.Semigroup-∃Vec
d_Semigroup'45''8707'Vec_10 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45''8707'Vec_10 ~v0 ~v1 = du_Semigroup'45''8707'Vec_10
du_Semigroup'45''8707'Vec_10 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
du_Semigroup'45''8707'Vec_10
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                            -> coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe addInt (coe v1) (coe v4))
                                 (coe
                                    MAlonzo.Code.Data.Vec.Base.du__'43''43'__188 (coe v2) (coe v5))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.Semigroup.Instances.Semigroup-String
d_Semigroup'45'String_20 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'String_20
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe MAlonzo.Code.Data.String.Base.d__'43''43'__20)
-- Class.Semigroup.Instances.Semigroup-Maybe
d_Semigroup'45'Maybe_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'Maybe_26 ~v0 ~v1 v2 = du_Semigroup'45'Maybe_26 v2
du_Semigroup'45'Maybe_26 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
du_Semigroup'45'Maybe_26 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe
         (\ v1 v2 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
                -> case coe v2 of
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                            (coe MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16 v0 v3 v4)
                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
                     _ -> MAlonzo.RTE.mazUnreachableError
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v2
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.Semigroup.Instances.SemigroupLaws-Maybe
d_SemigroupLaws'45'Maybe_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Semigroup.Core.T_SemigroupLaws_40 ->
  MAlonzo.Code.Class.Semigroup.Core.T_SemigroupLaws_40
d_SemigroupLaws'45'Maybe_40 ~v0 ~v1 ~v2 ~v3
  = du_SemigroupLaws'45'Maybe_40
du_SemigroupLaws'45'Maybe_40 ::
  MAlonzo.Code.Class.Semigroup.Core.T_SemigroupLaws_40
du_SemigroupLaws'45'Maybe_40
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_SemigroupLaws'46'constructor_2189
      erased erased
-- Class.Semigroup.Instances._.Semigroup-ℕ-+
d_Semigroup'45'ℕ'45''43'_62 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'ℕ'45''43'_62
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe addInt)
-- Class.Semigroup.Instances._.SemigroupLaws-ℕ-+
d_SemigroupLaws'45'ℕ'45''43'_66 ::
  MAlonzo.Code.Class.Semigroup.Core.T_SemigroupLaws_40
d_SemigroupLaws'45'ℕ'45''43'_66
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_SemigroupLaws'46'constructor_2189
      erased erased
-- Class.Semigroup.Instances._.Semigroup-ℕ-*
d_Semigroup'45'ℕ'45''42'_74 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'ℕ'45''42'_74
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe mulInt)
-- Class.Semigroup.Instances._.SemigroupLaws-ℕ-*
d_SemigroupLaws'45'ℕ'45''42'_78 ::
  MAlonzo.Code.Class.Semigroup.Core.T_SemigroupLaws_40
d_SemigroupLaws'45'ℕ'45''42'_78
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_SemigroupLaws'46'constructor_2189
      erased erased
-- Class.Semigroup.Instances._.Semigroup-ℤ-+
d_Semigroup'45'ℤ'45''43'_90 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'ℤ'45''43'_90
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe MAlonzo.Code.Data.Integer.Base.d__'43'__276)
-- Class.Semigroup.Instances._.SemigroupLaws-ℤ-+
d_SemigroupLaws'45'ℤ'45''43'_94 ::
  MAlonzo.Code.Class.Semigroup.Core.T_SemigroupLaws_40
d_SemigroupLaws'45'ℤ'45''43'_94
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_SemigroupLaws'46'constructor_2189
      erased erased
-- Class.Semigroup.Instances._.Semigroup-ℤ-*
d_Semigroup'45'ℤ'45''42'_102 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'ℤ'45''42'_102
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe MAlonzo.Code.Data.Integer.Base.d__'42'__308)
-- Class.Semigroup.Instances._.SemigroupLaws-ℤ-*
d_SemigroupLaws'45'ℤ'45''42'_106 ::
  MAlonzo.Code.Class.Semigroup.Core.T_SemigroupLaws_40
d_SemigroupLaws'45'ℤ'45''42'_106
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_SemigroupLaws'46'constructor_2189
      erased erased
