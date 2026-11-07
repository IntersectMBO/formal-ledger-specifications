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

module MAlonzo.Code.Data.Fin.Permutation.Components where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Fin.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.Fin.Permutation.Components.transpose
d_transpose_10 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_transpose_10 ~v0 v1 v2 v3 = du_transpose_10 v1 v2 v3
du_transpose_10 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
du_transpose_10 v0 v1 v2
  = let v3
          = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
              (coe
                 MAlonzo.Code.Data.Fin.Properties.du__'8799'__54 (coe v2)
                 (coe v0)) in
    coe
      (if coe v3
         then coe v1
         else (let v4
                     = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                         (coe
                            MAlonzo.Code.Data.Fin.Properties.du__'8799'__54 (coe v2)
                            (coe v1)) in
               coe (if coe v4 then coe v0 else coe v2)))
-- Data.Fin.Permutation.Components.transpose[i,i,j]≡j
d_transpose'91'i'44'i'44'j'93''8801'j_56 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_transpose'91'i'44'i'44'j'93''8801'j_56 = erased
-- Data.Fin.Permutation.Components.transpose[i,j,j]≡i
d_transpose'91'i'44'j'44'j'93''8801'i_88 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_transpose'91'i'44'j'44'j'93''8801'i_88 = erased
-- Data.Fin.Permutation.Components.transpose[i,j,i]≡j
d_transpose'91'i'44'j'44'i'93''8801'j_118 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_transpose'91'i'44'j'44'i'93''8801'j_118 = erased
-- Data.Fin.Permutation.Components.transpose-transpose
d_transpose'45'transpose_138 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_transpose'45'transpose_138 = erased
-- Data.Fin.Permutation.Components.transpose-inverse
d_transpose'45'inverse_256 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_transpose'45'inverse_256 = erased
-- Data.Fin.Permutation.Components.reverse
d_reverse_262 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_reverse_262 = coe MAlonzo.Code.Data.Fin.Base.d_opposite_406
-- Data.Fin.Permutation.Components.reverse-prop
d_reverse'45'prop_264 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45'prop_264 = erased
-- Data.Fin.Permutation.Components.reverse-involutive
d_reverse'45'involutive_266 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45'involutive_266 = erased
-- Data.Fin.Permutation.Components.reverse-suc
d_reverse'45'suc_272 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reverse'45'suc_272 = erased
