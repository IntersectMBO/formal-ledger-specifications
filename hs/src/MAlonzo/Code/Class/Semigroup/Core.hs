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

module MAlonzo.Code.Class.Semigroup.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Setoid.Core
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Class.Semigroup.Core.Semigroup
d_Semigroup_10 a0 a1 = ()
newtype T_Semigroup_10
  = C_constructor_20 (AgdaAny -> AgdaAny -> AgdaAny)
-- Class.Semigroup.Core.Semigroup._◇_
d__'9671'__16 :: T_Semigroup_10 -> AgdaAny -> AgdaAny -> AgdaAny
d__'9671'__16 v0
  = case coe v0 of
      C_constructor_20 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Semigroup.Core.Semigroup._<>_
d__'60''62'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Semigroup_10 -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''62'__18 ~v0 ~v1 v2 = du__'60''62'__18 v2
du__'60''62'__18 :: T_Semigroup_10 -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''62'__18 v0 = coe d__'9671'__16 (coe v0)
-- Class.Semigroup.Core._._<>_
d__'60''62'__24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Semigroup_10 -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''62'__24 ~v0 ~v1 v2 = du__'60''62'__24 v2
du__'60''62'__24 :: T_Semigroup_10 -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''62'__24 v0 = coe du__'60''62'__18 (coe v0)
-- Class.Semigroup.Core._._◇_
d__'9671'__26 :: T_Semigroup_10 -> AgdaAny -> AgdaAny -> AgdaAny
d__'9671'__26 v0 = coe d__'9671'__16 (coe v0)
-- Class.Semigroup.Core._.SemigroupLaws
d_SemigroupLaws_42 a0 a1 a2 a3 a4 = ()
data T_SemigroupLaws_42
  = C_constructor_330 (AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Class.Semigroup.Core._._.Associative
d_Associative_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Semigroup_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_ISetoid_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_SetoidLaws_304 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_72 = erased
-- Class.Semigroup.Core._._.Commutative
d_Commutative_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Semigroup_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_ISetoid_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_SetoidLaws_304 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_76 = erased
-- Class.Semigroup.Core._.SemigroupLaws.◇-comm
d_'9671''45'comm_312 ::
  T_SemigroupLaws_42 -> AgdaAny -> AgdaAny -> AgdaAny
d_'9671''45'comm_312 v0
  = case coe v0 of
      C_constructor_330 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Semigroup.Core._.SemigroupLaws.◇-assocʳ
d_'9671''45'assoc'691'_314 ::
  T_SemigroupLaws_42 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'9671''45'assoc'691'_314 v0
  = case coe v0 of
      C_constructor_330 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Semigroup.Core._.SemigroupLaws.◇-assocˡ
d_'9671''45'assoc'737'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Semigroup_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_ISetoid_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_SetoidLaws_304 ->
  T_SemigroupLaws_42 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'9671''45'assoc'737'_322 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
  = du_'9671''45'assoc'737'_322 v2 v4 v5 v6 v7 v8
du_'9671''45'assoc'737'_322 ::
  T_Semigroup_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_SetoidLaws_304 ->
  T_SemigroupLaws_42 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'9671''45'assoc'737'_322 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Class.Setoid.Core.d_isEquivalence_312 (coe v1))
      (coe d__'9671'__16 v0 (coe d__'9671'__16 v0 v3 v4) v5)
      (coe d__'9671'__16 v0 v3 (coe d__'9671'__16 v0 v4 v5))
      (coe d_'9671''45'assoc'691'_314 v2 v3 v4 v5)
-- Class.Semigroup.Core._.SemigroupLaws≡
d_SemigroupLaws'8801'_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Semigroup_10 -> ()
d_SemigroupLaws'8801'_336 = erased
-- Class.Semigroup.Core._.◇-assocʳ
d_'9671''45'assoc'691'_340 ::
  T_SemigroupLaws_42 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'9671''45'assoc'691'_340 v0
  = coe d_'9671''45'assoc'691'_314 (coe v0)
-- Class.Semigroup.Core._.◇-assocˡ
d_'9671''45'assoc'737'_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Semigroup_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_ISetoid_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_SetoidLaws_304 ->
  T_SemigroupLaws_42 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'9671''45'assoc'737'_342 ~v0 ~v1 v2 ~v3 v4 v5
  = du_'9671''45'assoc'737'_342 v2 v4 v5
du_'9671''45'assoc'737'_342 ::
  T_Semigroup_10 ->
  MAlonzo.Code.Class.Setoid.Core.T_SetoidLaws_304 ->
  T_SemigroupLaws_42 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'9671''45'assoc'737'_342 v0 v1 v2
  = coe du_'9671''45'assoc'737'_322 (coe v0) (coe v1) (coe v2)
-- Class.Semigroup.Core._.◇-comm
d_'9671''45'comm_344 ::
  T_SemigroupLaws_42 -> AgdaAny -> AgdaAny -> AgdaAny
d_'9671''45'comm_344 v0 = coe d_'9671''45'comm_312 (coe v0)
-- Class.Semigroup.Core._._.◇-assocʳ
d_'9671''45'assoc'691'_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Semigroup_10 ->
  T_SemigroupLaws_42 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9671''45'assoc'691'_362 = erased
-- Class.Semigroup.Core._._.◇-assocˡ
d_'9671''45'assoc'737'_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Semigroup_10 ->
  T_SemigroupLaws_42 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9671''45'assoc'737'_364 = erased
-- Class.Semigroup.Core._._.◇-comm
d_'9671''45'comm_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Semigroup_10 ->
  T_SemigroupLaws_42 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9671''45'comm_366 = erased
