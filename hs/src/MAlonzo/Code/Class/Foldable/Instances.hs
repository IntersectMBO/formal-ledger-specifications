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

module MAlonzo.Code.Class.Foldable.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.Foldable.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Maybe.Base

-- Class.Foldable.Instances.Foldable-List
d_Foldable'45'List_6 ::
  MAlonzo.Code.Class.Foldable.Core.T_Foldable_10
d_Foldable'45'List_6
  = coe
      MAlonzo.Code.Class.Foldable.Core.C_constructor_30
      (coe
         (\ v0 v1 v2 v3 ->
            coe
              MAlonzo.Code.Data.List.Base.du_foldr_216
              (coe MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16 (coe v2))
              (coe MAlonzo.Code.Class.Monoid.Core.d_ε_20 (coe v3))))
-- Class.Foldable.Instances.Foldable-Maybe
d_Foldable'45'Maybe_8 ::
  MAlonzo.Code.Class.Foldable.Core.T_Foldable_10
d_Foldable'45'Maybe_8
  = coe
      MAlonzo.Code.Class.Foldable.Core.C_constructor_30
      (coe
         (\ v0 v1 v2 v3 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46
              (MAlonzo.Code.Class.Monoid.Core.d_ε_20 (coe v3))))
-- Class.Foldable.Instances.Foldable-List⁺
d_Foldable'45'List'8314'_10 ::
  MAlonzo.Code.Class.Foldable.Core.T_Foldable_10
d_Foldable'45'List'8314'_10
  = coe
      MAlonzo.Code.Class.Foldable.Core.C_constructor_30
      (coe
         (\ v0 v1 v2 v3 v4 ->
            case coe v4 of
              MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v5 v6
                -> coe
                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16 v2 v5
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16 (coe v2))
                        (coe MAlonzo.Code.Class.Monoid.Core.d_ε_20 (coe v3)) (coe v6))
              _ -> MAlonzo.RTE.mazUnreachableError))
