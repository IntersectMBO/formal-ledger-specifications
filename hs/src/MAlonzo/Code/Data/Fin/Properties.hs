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

module MAlonzo.Code.Data.Fin.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Definitions.RawMagma
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Functor
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Relation.Unary.Properties

-- Data.Fin.Properties.¬Fin0
d_'172'Fin0_24 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172'Fin0_24 = erased
-- Data.Fin.Properties.nonZeroIndex
d_nonZeroIndex_26 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZeroIndex_26 ~v0 ~v1 = du_nonZeroIndex_26
du_nonZeroIndex_26 :: MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZeroIndex_26
  = coe
      MAlonzo.Code.Data.Nat.Base.C_constructor_120
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Fin.Properties.0↔⊥
d_0'8596''8869'_28 :: MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_0'8596''8869'_28
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542 erased
      erased
-- Data.Fin.Properties.1↔⊤
d_1'8596''8868'_30 :: MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_1'8596''8868'_30
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         (\ v0 -> seq (coe v0) (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)))
-- Data.Fin.Properties..extendedlambda3
d_'46'extendedlambda3_38 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda3_38 = erased
-- Data.Fin.Properties.2↔Bool
d_2'8596'Bool_40 :: MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_2'8596'Bool_40
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe d_'46'extendedlambda4_42)
      (coe
         (\ v0 ->
            if coe v0
              then coe
                     MAlonzo.Code.Data.Fin.Base.C_suc_16
                     (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)
              else coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
-- Data.Fin.Properties..extendedlambda4
d_'46'extendedlambda4_42 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> Bool
d_'46'extendedlambda4_42 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v2
        -> coe seq (coe v2) (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties..extendedlambda7
d_'46'extendedlambda7_48 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda7_48 = erased
-- Data.Fin.Properties.0≢1+n
d_0'8802'1'43'n_50 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_0'8802'1'43'n_50 = erased
-- Data.Fin.Properties.suc-injective
d_suc'45'injective_52 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'injective_52 = erased
-- Data.Fin.Properties._≟_
d__'8799'__54 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__54 ~v0 v1 v2 = du__'8799'__54 v1 v2
du__'8799'__54 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__54 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    erased erased (coe du__'8799'__54 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.≡-irrelevant
d_'8801''45'irrelevant_64 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'irrelevant_64 = erased
-- Data.Fin.Properties.≟-≡
d_'8799''45''8801'_68 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8799''45''8801'_68 = erased
-- Data.Fin.Properties.≟-≡-refl
d_'8799''45''8801''45'refl_72 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8799''45''8801''45'refl_72 = erased
-- Data.Fin.Properties.≟-≢
d_'8799''45''8802'_76 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8799''45''8802'_76 = erased
-- Data.Fin.Properties.≡-isDecEquivalence
d_'8801''45'isDecEquivalence_78 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48
d_'8801''45'isDecEquivalence_78 ~v0
  = du_'8801''45'isDecEquivalence_78
du_'8801''45'isDecEquivalence_78 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48
du_'8801''45'isDecEquivalence_78
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_70
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (coe du__'8799'__54)
-- Data.Fin.Properties.≡-preorder
d_'8801''45'preorder_80 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8801''45'preorder_80 ~v0 = du_'8801''45'preorder_80
du_'8801''45'preorder_80 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'8801''45'preorder_80
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_preorder_414
-- Data.Fin.Properties.≡-setoid
d_'8801''45'setoid_84 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'8801''45'setoid_84 ~v0 = du_'8801''45'setoid_84
du_'8801''45'setoid_84 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_'8801''45'setoid_84
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Fin.Properties.≡-decSetoid
d_'8801''45'decSetoid_88 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
d_'8801''45'decSetoid_88 ~v0 = du_'8801''45'decSetoid_88
du_'8801''45'decSetoid_88 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
du_'8801''45'decSetoid_88
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_134
      (coe du_'8801''45'isDecEquivalence_78)
-- Data.Fin.Properties.toℕ-injective
d_toℕ'45'injective_92 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'injective_92 = erased
-- Data.Fin.Properties.toℕ-strengthen
d_toℕ'45'strengthen_108 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'strengthen_108 = erased
-- Data.Fin.Properties.toℕ-↑ˡ
d_toℕ'45''8593''737'_116 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45''8593''737'_116 = erased
-- Data.Fin.Properties.↑ˡ-injective
d_'8593''737''45'injective_130 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8593''737''45'injective_130 = erased
-- Data.Fin.Properties.toℕ-↑ʳ
d_toℕ'45''8593''691'_146 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45''8593''691'_146 = erased
-- Data.Fin.Properties.↑ʳ-injective
d_'8593''691''45'injective_160 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8593''691''45'injective_160 = erased
-- Data.Fin.Properties.toℕ<n
d_toℕ'60'n_174 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'60'n_174 ~v0 v1 = du_toℕ'60'n_174 v1
du_toℕ'60'n_174 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_toℕ'60'n_174 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_toℕ'60'n_174 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.toℕ≤pred[n]
d_toℕ'8804'pred'91'n'93'_180 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'8804'pred'91'n'93'_180 ~v0 v1
  = du_toℕ'8804'pred'91'n'93'_180 v1
du_toℕ'8804'pred'91'n'93'_180 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_toℕ'8804'pred'91'n'93'_180 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_toℕ'8804'pred'91'n'93'_180 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.toℕ≤n
d_toℕ'8804'n_188 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'8804'n_188 ~v0 v1 = du_toℕ'8804'n_188 v1
du_toℕ'8804'n_188 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_toℕ'8804'n_188 v0 = coe du_toℕ'8804'pred'91'n'93'_180 (coe v0)
-- Data.Fin.Properties.toℕ≤pred[n]′
d_toℕ'8804'pred'91'n'93''8242'_196 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'8804'pred'91'n'93''8242'_196 ~v0 v1
  = du_toℕ'8804'pred'91'n'93''8242'_196 v1
du_toℕ'8804'pred'91'n'93''8242'_196 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_toℕ'8804'pred'91'n'93''8242'_196 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'pred_6144
      (coe du_toℕ'60'n_174 (coe v0))
-- Data.Fin.Properties.toℕ-mono-<
d_toℕ'45'mono'45''60'_200 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'45'mono'45''60'_200 ~v0 ~v1 ~v2 v3
  = du_toℕ'45'mono'45''60'_200 v3
du_toℕ'45'mono'45''60'_200 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_toℕ'45'mono'45''60'_200 v0 = coe v0
-- Data.Fin.Properties.toℕ-mono-≤
d_toℕ'45'mono'45''8804'_204 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'45'mono'45''8804'_204 ~v0 ~v1 ~v2 v3
  = du_toℕ'45'mono'45''8804'_204 v3
du_toℕ'45'mono'45''8804'_204 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_toℕ'45'mono'45''8804'_204 v0 = coe v0
-- Data.Fin.Properties.toℕ-cancel-≤
d_toℕ'45'cancel'45''8804'_208 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'45'cancel'45''8804'_208 ~v0 ~v1 ~v2 v3
  = du_toℕ'45'cancel'45''8804'_208 v3
du_toℕ'45'cancel'45''8804'_208 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_toℕ'45'cancel'45''8804'_208 v0 = coe v0
-- Data.Fin.Properties.toℕ-cancel-<
d_toℕ'45'cancel'45''60'_212 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'45'cancel'45''60'_212 ~v0 ~v1 ~v2 v3
  = du_toℕ'45'cancel'45''60'_212 v3
du_toℕ'45'cancel'45''60'_212 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_toℕ'45'cancel'45''60'_212 v0 = coe v0
-- Data.Fin.Properties.toℕ-fromℕ
d_toℕ'45'fromℕ_218 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ_218 = erased
-- Data.Fin.Properties.fromℕ-toℕ
d_fromℕ'45'toℕ_224 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'toℕ_224 = erased
-- Data.Fin.Properties.≤fromℕ
d_'8804'fromℕ_230 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'fromℕ_230 ~v0 v1 = du_'8804'fromℕ_230 v1
du_'8804'fromℕ_230 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'fromℕ_230 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62
      (coe du_toℕ'60'n_174 (coe v0))
-- Data.Fin.Properties.fromℕ<-toℕ
d_fromℕ'60''45'toℕ_244 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'60''45'toℕ_244 = erased
-- Data.Fin.Properties.toℕ-fromℕ<
d_toℕ'45'fromℕ'60'_252 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ'60'_252 = erased
-- Data.Fin.Properties.fromℕ-def
d_fromℕ'45'def_260 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'def_260 = erased
-- Data.Fin.Properties.fromℕ<-cong
d_fromℕ'60''45'cong_274 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'60''45'cong_274 = erased
-- Data.Fin.Properties.fromℕ<-injective
d_fromℕ'60''45'injective_292 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'60''45'injective_292 = erased
-- Data.Fin.Properties.fromℕ<≡fromℕ<″
d_fromℕ'60''8801'fromℕ'60''8243'_304 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'60''8801'fromℕ'60''8243'_304 = erased
-- Data.Fin.Properties.toℕ-fromℕ<″
d_toℕ'45'fromℕ'60''8243'_314 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ'60''8243'_314 = erased
-- Data.Fin.Properties.toℕ-cast
d_toℕ'45'cast_330 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'cast_330 = erased
-- Data.Fin.Properties.cast-is-id
d_cast'45'is'45'id_346 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cast'45'is'45'id_346 = erased
-- Data.Fin.Properties.subst-is-cast
d_subst'45'is'45'cast_358 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_subst'45'is'45'cast_358 = erased
-- Data.Fin.Properties.cast-trans
d_cast'45'trans_368 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cast'45'trans_368 = erased
-- Data.Fin.Properties.cast-involutive
d_cast'45'involutive_386 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cast'45'involutive_386 = erased
-- Data.Fin.Properties.≤-reflexive
d_'8804''45'reflexive_394 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'reflexive_394 ~v0 v1 ~v2 ~v3
  = du_'8804''45'reflexive_394 v1
du_'8804''45'reflexive_394 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'reflexive_394 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v0))
-- Data.Fin.Properties.≤-refl
d_'8804''45'refl_396 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'refl_396 ~v0 v1 = du_'8804''45'refl_396 v1
du_'8804''45'refl_396 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'refl_396 v0 = coe du_'8804''45'reflexive_394 (coe v0)
-- Data.Fin.Properties.≤-trans
d_'8804''45'trans_398 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'trans_398 ~v0 ~v1 ~v2 ~v3 = du_'8804''45'trans_398
du_'8804''45'trans_398 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'trans_398
  = coe MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_3148
-- Data.Fin.Properties.≤-antisym
d_'8804''45'antisym_400 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_400 = erased
-- Data.Fin.Properties.≤-total
d_'8804''45'total_406 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_406 ~v0 v1 v2 = du_'8804''45'total_406 v1 v2
du_'8804''45'total_406 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8804''45'total_406 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_3168
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v0))
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1))
-- Data.Fin.Properties.≤-irrelevant
d_'8804''45'irrelevant_412 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_412 = erased
-- Data.Fin.Properties._≤?_
d__'8804''63'__414 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__414 ~v0 ~v1 v2 v3 = du__'8804''63'__414 v2 v3
du__'8804''63'__414 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__414 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__3160
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v0))
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1))
-- Data.Fin.Properties._<?_
d__'60''63'__420 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__420 ~v0 ~v1 v2 v3 = du__'60''63'__420 v2 v3
du__'60''63'__420 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__420 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__3160
      (coe
         addInt (coe (1 :: Integer))
         (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v0)))
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1))
-- Data.Fin.Properties.≤-isPreorder
d_'8804''45'isPreorder_426 ::
  Integer -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8804''45'isPreorder_426 ~v0 = du_'8804''45'isPreorder_426
du_'8804''45'isPreorder_426 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_'8804''45'isPreorder_426
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_394 v0)
      (\ v0 v1 v2 -> coe du_'8804''45'trans_398)
-- Data.Fin.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_428 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8804''45'isPartialOrder_428 ~v0
  = du_'8804''45'isPartialOrder_428
du_'8804''45'isPartialOrder_428 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
du_'8804''45'isPartialOrder_428
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe du_'8804''45'isPreorder_426) erased
-- Data.Fin.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_430 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_'8804''45'isTotalOrder_430 ~v0 = du_'8804''45'isTotalOrder_430
du_'8804''45'isTotalOrder_430 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
du_'8804''45'isTotalOrder_430
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_540
      (coe du_'8804''45'isPartialOrder_428) (coe du_'8804''45'total_406)
-- Data.Fin.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_432 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
d_'8804''45'isDecTotalOrder_432 ~v0
  = du_'8804''45'isDecTotalOrder_432
du_'8804''45'isDecTotalOrder_432 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
du_'8804''45'isDecTotalOrder_432
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_618
      (coe du_'8804''45'isTotalOrder_430) (coe du__'8799'__54)
      (coe du__'8804''63'__414)
-- Data.Fin.Properties.≤-preorder
d_'8804''45'preorder_434 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8804''45'preorder_434 ~v0 = du_'8804''45'preorder_434
du_'8804''45'preorder_434 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'8804''45'preorder_434
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      (coe du_'8804''45'isPreorder_426)
-- Data.Fin.Properties.≤-poset
d_'8804''45'poset_438 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_'8804''45'poset_438 ~v0 = du_'8804''45'poset_438
du_'8804''45'poset_438 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
du_'8804''45'poset_438
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_588
      (coe du_'8804''45'isPartialOrder_428)
-- Data.Fin.Properties.≤-totalOrder
d_'8804''45'totalOrder_442 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
d_'8804''45'totalOrder_442 ~v0 = du_'8804''45'totalOrder_442
du_'8804''45'totalOrder_442 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
du_'8804''45'totalOrder_442
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1090
      (coe du_'8804''45'isTotalOrder_430)
-- Data.Fin.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_446 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_'8804''45'decTotalOrder_446 ~v0 = du_'8804''45'decTotalOrder_446
du_'8804''45'decTotalOrder_446 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_'8804''45'decTotalOrder_446
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      (coe du_'8804''45'isDecTotalOrder_432)
-- Data.Fin.Properties.<-irrefl
d_'60''45'irrefl_450 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_450 = erased
-- Data.Fin.Properties.<-asym
d_'60''45'asym_452 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_452 = erased
-- Data.Fin.Properties.<-trans
d_'60''45'trans_454 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans_454 ~v0 ~v1 v2 ~v3 = du_'60''45'trans_454 v2
du_'60''45'trans_454 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45'trans_454 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans_3362
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v0))
-- Data.Fin.Properties.<-cmp
d_'60''45'cmp_456 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_456 ~v0 v1 v2 = du_'60''45'cmp_456 v1 v2
du_'60''45'cmp_456 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
du_'60''45'cmp_456 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> let v6 = coe du_'60''45'cmp_456 (coe v3) (coe v5) in
                  coe
                    (case coe v6 of
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v7
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7)
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v8
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v9
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.<-respˡ-≡
d_'60''45'resp'737''45''8801'_500 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'resp'737''45''8801'_500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'737''45''8801'_500 v6
du_'60''45'resp'737''45''8801'_500 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45'resp'737''45''8801'_500 v0 = coe v0
-- Data.Fin.Properties.<-respʳ-≡
d_'60''45'resp'691''45''8801'_504 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'resp'691''45''8801'_504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'691''45''8801'_504 v6
du_'60''45'resp'691''45''8801'_504 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45'resp'691''45''8801'_504 v0 = coe v0
-- Data.Fin.Properties.<-resp₂-≡
d_'60''45'resp'8322''45''8801'_508 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_508 ~v0
  = du_'60''45'resp'8322''45''8801'_508
du_'60''45'resp'8322''45''8801'_508 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'8322''45''8801'_508
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Fin.Properties.<-irrelevant
d_'60''45'irrelevant_510 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_510 = erased
-- Data.Fin.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_512 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_'60''45'isStrictPartialOrder_512 ~v0
  = du_'60''45'isStrictPartialOrder_512
du_'60''45'isStrictPartialOrder_512 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
du_'60''45'isStrictPartialOrder_512
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'60''45'trans_454 v1)
      (coe du_'60''45'resp'8322''45''8801'_508)
-- Data.Fin.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_514 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''45'isStrictTotalOrder_514 ~v0
  = du_'60''45'isStrictTotalOrder_514
du_'60''45'isStrictTotalOrder_514 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
du_'60''45'isStrictTotalOrder_514
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_680
      (coe du_'60''45'isStrictPartialOrder_512) (coe du_'60''45'cmp_456)
-- Data.Fin.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_516 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
d_'60''45'strictPartialOrder_516 ~v0
  = du_'60''45'strictPartialOrder_516
du_'60''45'strictPartialOrder_516 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
du_'60''45'strictPartialOrder_516
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_842
      (coe du_'60''45'isStrictPartialOrder_512)
-- Data.Fin.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_520 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
d_'60''45'strictTotalOrder_520 ~v0
  = du_'60''45'strictTotalOrder_520
du_'60''45'strictTotalOrder_520 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
du_'60''45'strictTotalOrder_520
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1386
      (coe du_'60''45'isStrictTotalOrder_514)
-- Data.Fin.Properties.i<1+i
d_i'60'1'43'i_526 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_i'60'1'43'i_526 ~v0 v1 = du_i'60'1'43'i_526 v1
du_i'60'1'43'i_526 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_i'60'1'43'i_526 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_n'60'1'43'n_3460
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v0))
-- Data.Fin.Properties.<⇒≢
d_'60''8658''8802'_528 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_528 = erased
-- Data.Fin.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_532 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8743''8802''8658''60'_532 ~v0 v1 v2 ~v3 ~v4
  = du_'8804''8743''8802''8658''60'_532 v1 v2
du_'8804''8743''8802''8658''60'_532 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8743''8802''8658''60'_532 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
                    erased
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_'8804''8743''8802''8658''60'_532 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.toℕ-inject
d_toℕ'45'inject_550 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inject_550 = erased
-- Data.Fin.Properties.inject-<
d_inject'45''60'_562 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_inject'45''60'_562 ~v0 v1 v2 = du_inject'45''60'_562 v1 v2
du_inject'45''60'_562 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_inject'45''60'_562 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_inject'45''60'_562 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.fromℕ≢inject₁
d_fromℕ'8802'inject'8321'_570 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_fromℕ'8802'inject'8321'_570 = erased
-- Data.Fin.Properties.inject₁-injective
d_inject'8321''45'injective_576 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8321''45'injective_576 = erased
-- Data.Fin.Properties.toℕ-inject₁
d_toℕ'45'inject'8321'_588 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inject'8321'_588 = erased
-- Data.Fin.Properties.toℕ-inject₁-≢
d_toℕ'45'inject'8321''45''8802'_594 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_toℕ'45'inject'8321''45''8802'_594 = erased
-- Data.Fin.Properties.inject₁ℕ<
d_inject'8321'ℕ'60'_600 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_inject'8321'ℕ'60'_600 ~v0 v1 = du_inject'8321'ℕ'60'_600 v1
du_inject'8321'ℕ'60'_600 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_inject'8321'ℕ'60'_600 v0 = coe du_toℕ'60'n_174 (coe v0)
-- Data.Fin.Properties.inject₁ℕ≤
d_inject'8321'ℕ'8804'_610 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_inject'8321'ℕ'8804'_610 ~v0 v1 = du_inject'8321'ℕ'8804'_610 v1
du_inject'8321'ℕ'8804'_610 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_inject'8321'ℕ'8804'_610 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238
      (coe du_inject'8321'ℕ'60'_600 (coe v0))
-- Data.Fin.Properties.≤̄⇒inject₁<
d_'8804''772''8658'inject'8321''60'_612 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''772''8658'inject'8321''60'_612 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8804''772''8658'inject'8321''60'_612 v4
du_'8804''772''8658'inject'8321''60'_612 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''772''8658'inject'8321''60'_612 v0
  = coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v0
-- Data.Fin.Properties.ℕ<⇒inject₁<
d_ℕ'60''8658'inject'8321''60'_626 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_ℕ'60''8658'inject'8321''60'_626 ~v0 v1 ~v2 v3
  = du_ℕ'60''8658'inject'8321''60'_626 v1 v3
du_ℕ'60''8658'inject'8321''60'_626 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_ℕ'60''8658'inject'8321''60'_626 v0 v1
  = coe
      seq (coe v0)
      (coe
         du_'8804''772''8658'inject'8321''60'_612
         (coe
            MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v1)))
-- Data.Fin.Properties.i≤inject₁[j]⇒i≤1+j
d_i'8804'inject'8321''91'j'93''8658'i'8804'1'43'j_632 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_i'8804'inject'8321''91'j'93''8658'i'8804'1'43'j_632 ~v0 v1 ~v2 v3
                                                      v4
  = du_i'8804'inject'8321''91'j'93''8658'i'8804'1'43'j_632 v1 v3 v4
du_i'8804'inject'8321''91'j'93''8658'i'8804'1'43'j_632 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_i'8804'inject'8321''91'j'93''8658'i'8804'1'43'j_632 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe
                   MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.inject!-injective
d_inject'33''45'injective_644 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'33''45'injective_644 = erased
-- Data.Fin.Properties.inject!-<
d_inject'33''45''60'_664 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_inject'33''45''60'_664 ~v0 v1 v2
  = du_inject'33''45''60'_664 v1 v2
du_inject'33''45''60'_664 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_inject'33''45''60'_664 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_inject'33''45''60'_664 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.toℕ-lower₁
d_toℕ'45'lower'8321'_680 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'lower'8321'_680 = erased
-- Data.Fin.Properties.lower₁-injective
d_lower'8321''45'injective_698 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lower'8321''45'injective_698 = erased
-- Data.Fin.Properties.inject₁-lower₁
d_inject'8321''45'lower'8321'_722 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8321''45'lower'8321'_722 = erased
-- Data.Fin.Properties.lower₁-inject₁′
d_lower'8321''45'inject'8321''8242'_738 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lower'8321''45'inject'8321''8242'_738 = erased
-- Data.Fin.Properties.lower₁-inject₁
d_lower'8321''45'inject'8321'_746 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lower'8321''45'inject'8321'_746 = erased
-- Data.Fin.Properties.lower₁-irrelevant
d_lower'8321''45'irrelevant_756 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lower'8321''45'irrelevant_756 = erased
-- Data.Fin.Properties.inject₁≡⇒lower₁≡
d_inject'8321''8801''8658'lower'8321''8801'_772 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8321''8801''8658'lower'8321''8801'_772 = erased
-- Data.Fin.Properties.lower-injective
d_lower'45'injective_786 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lower'45'injective_786 = erased
-- Data.Fin.Properties.toℕ-inject≤
d_toℕ'45'inject'8804'_804 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inject'8804'_804 = erased
-- Data.Fin.Properties.inject≤-refl
d_inject'8804''45'refl_816 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8804''45'refl_816 = erased
-- Data.Fin.Properties.inject≤-idempotent
d_inject'8804''45'idempotent_832 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8804''45'idempotent_832 = erased
-- Data.Fin.Properties.inject≤-trans
d_inject'8804''45'trans_850 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8804''45'trans_850 = erased
-- Data.Fin.Properties.inject≤-injective
d_inject'8804''45'injective_862 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8804''45'injective_862 = erased
-- Data.Fin.Properties.inject≤-irrelevant
d_inject'8804''45'irrelevant_878 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8804''45'irrelevant_878 = erased
-- Data.Fin.Properties.pred<
d_pred'60'_884 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'60'_884 ~v0 v1 ~v2 = du_pred'60'_884 v1
du_pred'60'_884 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_pred'60'_884 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe
             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
             erased
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v2
        -> coe
             du_'8804''772''8658'inject'8321''60'_612
             (coe
                MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140
                (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.splitAt-↑ˡ
d_splitAt'45''8593''737'_896 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45''8593''737'_896 = erased
-- Data.Fin.Properties.splitAt⁻¹-↑ˡ
d_splitAt'8315''185''45''8593''737'_920 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'8315''185''45''8593''737'_920 = erased
-- Data.Fin.Properties.splitAt-↑ʳ
d_splitAt'45''8593''691'_954 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45''8593''691'_954 = erased
-- Data.Fin.Properties.splitAt⁻¹-↑ʳ
d_splitAt'8315''185''45''8593''691'_978 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'8315''185''45''8593''691'_978 = erased
-- Data.Fin.Properties.splitAt-join
d_splitAt'45'join_1014 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45'join_1014 = erased
-- Data.Fin.Properties.join-splitAt
d_join'45'splitAt_1034 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_join'45'splitAt_1034 = erased
-- Data.Fin.Properties.splitAt-<
d_splitAt'45''60'_1074 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45''60'_1074 = erased
-- Data.Fin.Properties.splitAt-≥
d_splitAt'45''8805'_1092 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45''8805'_1092 = erased
-- Data.Fin.Properties.+↔⊎
d_'43''8596''8846'_1102 ::
  Integer -> Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'43''8596''8846'_1102 v0 ~v1 = du_'43''8596''8846'_1102 v0
du_'43''8596''8846'_1102 ::
  Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'43''8596''8846'_1102 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe MAlonzo.Code.Data.Fin.Base.du_splitAt_188 (coe v0))
      (coe MAlonzo.Code.Data.Fin.Base.du_join_202 (coe v0))
-- Data.Fin.Properties.remQuot-combine
d_remQuot'45'combine_1116 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_remQuot'45'combine_1116 = erased
-- Data.Fin.Properties.combine-remQuot
d_combine'45'remQuot_1146 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_combine'45'remQuot_1146 = erased
-- Data.Fin.Properties.toℕ-combine
d_toℕ'45'combine_1190 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'combine_1190 = erased
-- Data.Fin.Properties.combine-monoˡ-<
d_combine'45'mono'737''45''60'_1232 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_combine'45'mono'737''45''60'_1232 ~v0 v1 v2 v3 v4 v5 v6
  = du_combine'45'mono'737''45''60'_1232 v1 v2 v3 v4 v5 v6
du_combine'45'mono'737''45''60'_1232 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_combine'45'mono'737''45''60'_1232 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
      (coe
         MAlonzo.Code.Data.Fin.Base.du_toℕ_18
         (coe
            MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v1)
            (coe v3)))
      (coe
         MAlonzo.Code.Data.Fin.Base.du_toℕ_18
         (coe
            MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
            (coe v4)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v6 v7 v8 v9 v10 -> v10)
         (coe
            MAlonzo.Code.Data.Fin.Base.du_toℕ_18
            (coe
               MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v1)
               (coe v3)))
         (addInt
            (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v3))
            (coe
               mulInt (coe v0)
               (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1))))
         (coe
            MAlonzo.Code.Data.Fin.Base.du_toℕ_18
            (coe
               MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
               (coe v4)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (\ v6 v7 v8 v9 v10 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans_3362 v7 v9 v10)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
               (\ v6 v7 v8 v9 v10 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_3374 v9
                    v10))
            (addInt
               (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v3))
               (coe
                  mulInt (coe v0)
                  (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1))))
            (addInt
               (coe
                  mulInt (coe v0)
                  (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1)))
               (coe v0))
            (coe
               MAlonzo.Code.Data.Fin.Base.du_toℕ_18
               (coe
                  MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                  (coe v4)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
               (\ v6 v7 v8 v9 v10 -> v10)
               (addInt
                  (coe
                     mulInt (coe v0)
                     (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1)))
                  (coe v0))
               (addInt
                  (coe
                     mulInt (coe v0)
                     (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1)))
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                  (coe
                     MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                     (coe v4)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                  (\ v6 v7 v8 v9 v10 -> v10)
                  (addInt
                     (coe
                        mulInt (coe v0)
                        (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1)))
                     (coe v0))
                  (addInt
                     (coe
                        mulInt (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1))
                        (coe v0))
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                     (coe
                        MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                        (coe v4)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                     (\ v6 v7 v8 v9 v10 -> v10)
                     (addInt
                        (coe
                           mulInt (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1))
                           (coe v0))
                        (coe v0))
                     (mulInt
                        (coe v0)
                        (coe
                           addInt (coe (1 :: Integer))
                           (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1))))
                     (coe
                        MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                        (coe
                           MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                           (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                           (\ v6 v7 v8 v9 v10 ->
                              coe
                                MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368 v9
                                v10))
                        (mulInt
                           (coe v0)
                           (coe
                              addInt (coe (1 :: Integer))
                              (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1))))
                        (mulInt
                           (coe v0) (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v2)))
                        (coe
                           MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                           (coe
                              MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                              (coe v4)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                              (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                              (\ v6 v7 v8 v9 v10 ->
                                 coe
                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368
                                   v9 v10))
                           (mulInt
                              (coe v0) (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v2)))
                           (addInt
                              (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v4))
                              (coe
                                 mulInt (coe v0)
                                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v2))))
                           (coe
                              MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                              (coe
                                 MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                                 (coe v4)))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                              (\ v6 v7 v8 v9 v10 -> v10)
                              (addInt
                                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v4))
                                 (coe
                                    mulInt (coe v0)
                                    (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v2))))
                              (coe
                                 MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                                 (coe
                                    MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                                    (coe v4)))
                              (coe
                                 MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                                 (coe
                                    MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                                    (coe v4)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190))
                                 (coe
                                    MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                                    (coe
                                       MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                                       (coe v4))))
                              erased)
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3864
                              (coe
                                 mulInt (coe v0)
                                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v2)))))
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'42''45'mono'691''45''8804'_4474
                           v0
                           (addInt
                              (coe (1 :: Integer))
                              (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1)))
                           (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v2)) v5))
                     erased)
                  erased)
               erased)
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''60'_3954
               (coe
                  mulInt (coe v0)
                  (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1)))
               (coe du_toℕ'60'n_174 (coe v3))))
         erased)
-- Data.Fin.Properties.combine-injectiveˡ
d_combine'45'injective'737'_1262 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_combine'45'injective'737'_1262 = erased
-- Data.Fin.Properties.combine-injectiveʳ
d_combine'45'injective'691'_1322 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_combine'45'injective'691'_1322 = erased
-- Data.Fin.Properties.combine-injective
d_combine'45'injective_1354 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_combine'45'injective_1354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_combine'45'injective_1354
du_combine'45'injective_1354 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_combine'45'injective_1354
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Fin.Properties.combine-surjective
d_combine'45'surjective_1372 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_combine'45'surjective_1372 ~v0 v1 v2
  = du_combine'45'surjective_1372 v1 v2
du_combine'45'surjective_1372 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_combine'45'surjective_1372 v0 v1
  = let v2
          = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Fin.Base.du_quotRem_214 (coe v0) (coe v1)) in
    coe
      (let v3
             = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    MAlonzo.Code.Data.Fin.Base.du_quotRem_214 (coe v0) (coe v1)) in
       coe
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                  (\ v4 v5 v6 -> v6)
                  (coe
                     MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                     (coe v3))
                  v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                     erased
                     (coe
                        MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0) (coe v2)
                        (coe v3))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_uncurry_244
                        (coe MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0))
                        (coe MAlonzo.Code.Data.Fin.Base.du_remQuot_226 (coe v0) (coe v1)))
                     v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                        erased
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_uncurry_244
                           (coe MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0))
                           (coe MAlonzo.Code.Data.Fin.Base.du_remQuot_226 (coe v0) (coe v1)))
                        v1 v1
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494 erased
                           (coe v1))
                        erased)
                     erased)))))
-- Data.Fin.Properties.*↔×
d_'42''8596''215'_1394 ::
  Integer -> Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'42''8596''215'_1394 ~v0 v1 = du_'42''8596''215'_1394 v1
du_'42''8596''215'_1394 ::
  Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'42''8596''215'_1394 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe MAlonzo.Code.Data.Fin.Base.du_remQuot_226 (coe v0))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Data.Fin.Base.du_combine_244 (coe v0)))
-- Data.Fin.Properties.funToFin-finToFin
d_funToFin'45'finToFin_1400 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_funToFin'45'finToFin_1400 = erased
-- Data.Fin.Properties.finToFun-funToFin
d_finToFun'45'funToFin_1416 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_finToFun'45'funToFin_1416 = erased
-- Data.Fin.Properties.^↔→
d_'94''8596''8594'_1442 ::
  Integer ->
  Integer ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'94''8596''8594'_1442 v0 v1 ~v2 = du_'94''8596''8594'_1442 v0 v1
du_'94''8596''8594'_1442 ::
  Integer -> Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'94''8596''8594'_1442 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe MAlonzo.Code.Data.Fin.Base.d_finToFun_260 (coe v0) (coe v1))
      (coe MAlonzo.Code.Data.Fin.Base.d_funToFin_276 (coe v1) (coe v0))
-- Data.Fin.Properties.lift-injective
d_lift'45'injective_1454 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lift'45'injective_1454 = erased
-- Data.Fin.Properties.<⇒≤pred
d_'60''8658''8804'pred_1478 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8658''8804'pred_1478 ~v0 v1 ~v2 v3 v4
  = du_'60''8658''8804'pred_1478 v1 v3 v4
du_'60''8658''8804'pred_1478 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8658''8804'pred_1478 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe
             seq (coe v1)
             (case coe v2 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
                  -> coe seq (coe v6) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
        -> coe
             seq (coe v1)
             (case coe v2 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7 -> coe v7
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.toℕ‿ℕ-
d_toℕ'8255'ℕ'45'_1496 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'8255'ℕ'45'_1496 = erased
-- Data.Fin.Properties.ℕ-ℕ≡toℕ‿ℕ-
d_ℕ'45'ℕ'8801'toℕ'8255'ℕ'45'_1508 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'45'ℕ'8801'toℕ'8255'ℕ'45'_1508 = erased
-- Data.Fin.Properties.nℕ-ℕi≤n
d_nℕ'45'ℕi'8804'n_1520 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_nℕ'45'ℕi'8804'n_1520 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe
             MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140
             (coe
                MAlonzo.Code.Data.Fin.Base.d__ℕ'45'ℕ__394 (coe v0)
                (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                   (\ v5 v6 v7 ->
                      coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238 v7))
                (MAlonzo.Code.Data.Fin.Base.d__ℕ'45'ℕ__394
                   (coe v0) (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3))
                v0
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                      (\ v5 v6 v7 v8 v9 ->
                         coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368 v8
                           v9))
                   (MAlonzo.Code.Data.Fin.Base.d__ℕ'45'ℕ__394 (coe v4) (coe v3)) v4 v0
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                         (\ v5 v6 v7 v8 v9 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368 v8
                              v9))
                      v4 v0 v0
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190))
                         (coe v0))
                      (MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_3228 (coe v4)))
                   (d_nℕ'45'ℕi'8804'n_1520 (coe v4) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.punchIn-injective
d_punchIn'45'injective_1538 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchIn'45'injective_1538 = erased
-- Data.Fin.Properties.punchInᵢ≢i
d_punchIn'7522''8802'i_1554 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_punchIn'7522''8802'i_1554 = erased
-- Data.Fin.Properties.punchIn-mono-≤
d_punchIn'45'mono'45''8804'_1566 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_punchIn'45'mono'45''8804'_1566 ~v0 v1 v2 v3 v4
  = du_punchIn'45'mono'45''8804'_1566 v1 v2 v3 v4
du_punchIn'45'mono'45''8804'_1566 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_punchIn'45'mono'45''8804'_1566 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe seq (coe v3) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Fin.Base.C_suc_16 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12
                             -> coe
                                  MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                  (coe
                                     du_punchIn'45'mono'45''8804'_1566 (coe v5) (coe v7) (coe v9)
                                     (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.punchIn-cancel-≤
d_punchIn'45'cancel'45''8804'_1584 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_punchIn'45'cancel'45''8804'_1584 ~v0 v1 v2 v3 v4
  = du_punchIn'45'cancel'45''8804'_1584 v1 v2 v3 v4
du_punchIn'45'cancel'45''8804'_1584 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_punchIn'45'cancel'45''8804'_1584 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7 -> coe v7
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe seq (coe v3) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Fin.Base.C_suc_16 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12
                             -> coe
                                  MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                  (coe
                                     du_punchIn'45'cancel'45''8804'_1584 (coe v5) (coe v7) (coe v9)
                                     (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.punchOut-cong
d_punchOut'45'cong_1606 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchOut'45'cong_1606 = erased
-- Data.Fin.Properties.punchOut-cong′
d_punchOut'45'cong'8242'_1640 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchOut'45'cong'8242'_1640 = erased
-- Data.Fin.Properties.punchOut-injective
d_punchOut'45'injective_1656 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchOut'45'injective_1656 = erased
-- Data.Fin.Properties.punchOut-mono-≤
d_punchOut'45'mono'45''8804'_1696 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_punchOut'45'mono'45''8804'_1696 ~v0 v1 v2 v3 ~v4 ~v5 v6
  = du_punchOut'45'mono'45''8804'_1696 v1 v2 v3 v6
du_punchOut'45'mono'45''8804'_1696 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_punchOut'45'mono'45''8804'_1696 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    seq (coe v3)
                    (coe
                       MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
                       erased)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v6
               -> coe
                    seq (coe v2)
                    (case coe v3 of
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9 -> coe v9
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe seq (coe v3) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Fin.Base.C_suc_16 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12
                             -> coe
                                  MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                  (coe
                                     du_punchOut'45'mono'45''8804'_1696 (coe v5) (coe v7) (coe v9)
                                     (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.punchOut-cancel-≤
d_punchOut'45'cancel'45''8804'_1718 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_punchOut'45'cancel'45''8804'_1718 ~v0 v1 v2 v3 ~v4 ~v5 v6
  = du_punchOut'45'cancel'45''8804'_1718 v1 v2 v3 v6
du_punchOut'45'cancel'45''8804'_1718 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_punchOut'45'cancel'45''8804'_1718 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
                    erased
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Fin.Base.C_zero_12
                      -> coe
                           MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
                           erased
                    MAlonzo.Code.Data.Fin.Base.C_suc_16 v8
                      -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Fin.Base.C_suc_16 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12
                             -> coe
                                  MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                  (coe
                                     du_punchOut'45'cancel'45''8804'_1718 (coe v5) (coe v7) (coe v9)
                                     (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.punchIn-punchOut
d_punchIn'45'punchOut_1738 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchIn'45'punchOut_1738 = erased
-- Data.Fin.Properties.punchOut-punchIn
d_punchOut'45'punchIn_1762 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchOut'45'punchIn_1762 = erased
-- Data.Fin.Properties.pinch-surjective
d_pinch'45'surjective_1778 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pinch'45'surjective_1778 ~v0 v1 v2
  = du_pinch'45'surjective_1778 v1 v2
du_pinch'45'surjective_1778 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pinch'45'surjective_1778 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Data.Fin.Base.C_zero_12) erased
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> case coe v0 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Data.Fin.Base.C_suc_16
                       (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3))
                    erased
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Data.Product.Base.du_map_128
                    (coe MAlonzo.Code.Data.Fin.Base.C_suc_16) erased
                    (coe du_pinch'45'surjective_1778 (coe v5) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties..extendedlambda8
d_'46'extendedlambda8_1780 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda8_1780 = erased
-- Data.Fin.Properties..extendedlambda9
d_'46'extendedlambda9_1784 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda9_1784 = erased
-- Data.Fin.Properties..extendedlambda10
d_'46'extendedlambda10_1790 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda10_1790 = erased
-- Data.Fin.Properties.pinch-mono-≤
d_pinch'45'mono'45''8804'_1796 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pinch'45'mono'45''8804'_1796 ~v0 v1 v2 v3 v4
  = du_pinch'45'mono'45''8804'_1796 v1 v2 v3 v4
du_pinch'45'mono'45''8804'_1796 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_pinch'45'mono'45''8804'_1796 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v6
               -> coe
                    seq (coe v2)
                    (coe MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Fin.Base.C_suc_16 v9
                      -> coe
                           MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                           (coe
                              du_pinch'45'mono'45''8804'_1796 (coe v5) (coe v7) (coe v9)
                              (coe
                                 MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v3)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.pinch-injective
d_pinch'45'injective_1828 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pinch'45'injective_1828 = erased
-- Data.Fin.Properties._.∀-cons
d_'8704''45'cons_1872 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  AgdaAny ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
d_'8704''45'cons_1872 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8704''45'cons_1872 v3 v4 v5
du_'8704''45'cons_1872 ::
  AgdaAny ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
du_'8704''45'cons_1872 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12 -> coe v0
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v4 -> coe v1 v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties._.∀-cons-⇔
d_'8704''45'cons'45''8660'_1884 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8704''45'cons'45''8660'_1884 ~v0 ~v1 ~v2
  = du_'8704''45'cons'45''8660'_1884
du_'8704''45'cons'45''8660'_1884 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8704''45'cons'45''8660'_1884
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe du_'8704''45'cons_1872))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
         (coe (\ v0 -> coe v0 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)))
         (coe
            (\ v0 v1 -> coe v0 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v1))))
-- Data.Fin.Properties._.∃-here
d_'8707''45'here_1890 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707''45'here_1890 ~v0 ~v1 ~v2 v3 = du_'8707''45'here_1890 v3
du_'8707''45'here_1890 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707''45'here_1890 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Data.Fin.Base.C_zero_12) (coe v0)
-- Data.Fin.Properties._.∃-there
d_'8707''45'there_1894 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707''45'there_1894 ~v0 ~v1 ~v2 = du_'8707''45'there_1894
du_'8707''45'there_1894 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707''45'there_1894
  = coe
      MAlonzo.Code.Data.Product.Base.du_map_128
      (coe MAlonzo.Code.Data.Fin.Base.C_suc_16) (coe (\ v0 v1 -> v1))
-- Data.Fin.Properties._.∃-toSum
d_'8707''45'toSum_1896 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8707''45'toSum_1896 ~v0 ~v1 ~v2 v3 = du_'8707''45'toSum_1896 v3
du_'8707''45'toSum_1896 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8707''45'toSum_1896 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v2)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties._.⊎⇔∃
d_'8846''8660''8707'_1904 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8846''8660''8707'_1904 ~v0 ~v1 ~v2 = du_'8846''8660''8707'_1904
du_'8846''8660''8707'_1904 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8846''8660''8707'_1904
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
         (coe du_'8707''45'here_1890) (coe du_'8707''45'there_1894))
      (coe du_'8707''45'toSum_1896)
-- Data.Fin.Properties.any?
d_any'63'_1908 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_1908 v0 ~v1 ~v2 v3 = du_any'63'_1908 v0 v3
du_any'63'_1908 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_any'63'_1908 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
                (coe du_'8846''8660''8707'_1904)
                (coe
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''63'__96
                   (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
                   (coe
                      du_any'63'_1908 (coe v2)
                      (coe
                         (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3))))))
-- Data.Fin.Properties.all?
d_all'63'_1920 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_1920 v0 ~v1 ~v2 v3 = du_all'63'_1920 v0 v3
du_all'63'_1920 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_all'63'_1920 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
                (coe du_'8704''45'cons'45''8660'_1884)
                (coe
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''63'__84
                   (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
                   (coe
                      du_all'63'_1920 (coe v2)
                      (coe
                         (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3))))))
-- Data.Fin.Properties.Least⟨_⟩
d_Least'10216'_'10217'_1942 a0 a1 a2 = ()
data T_Least'10216'_'10217'_1942
  = C_least_1962 MAlonzo.Code.Data.Fin.Base.T_Fin_10 AgdaAny
-- Data.Fin.Properties.Least⟨_⟩.witness
d_witness_1954 ::
  T_Least'10216'_'10217'_1942 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_witness_1954 v0
  = case coe v0 of
      C_least_1962 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.Least⟨_⟩.example
d_example_1956 :: T_Least'10216'_'10217'_1942 -> AgdaAny
d_example_1956 v0
  = case coe v0 of
      C_least_1962 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.Least⟨_⟩.minimal
d_minimal_1960 ::
  T_Least'10216'_'10217'_1942 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_minimal_1960 = erased
-- Data.Fin.Properties.search-least⟨_⟩
d_search'45'least'10216'_'10217'_1966 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_search'45'least'10216'_'10217'_1966 v0 ~v1 ~v2 v3
  = du_search'45'least'10216'_'10217'_1966 v0 v3
du_search'45'least'10216'_'10217'_1966 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_search'45'least'10216'_'10217'_1966 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (let v3 = coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12) in
              coe
                (case coe v3 of
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                     -> if coe v4
                          then case coe v5 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                   -> coe
                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                        (coe
                                           C_least_1962 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)
                                           v6)
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          else coe
                                 seq (coe v5)
                                 (coe
                                    MAlonzo.Code.Data.Sum.Base.du_map_84
                                    (coe du_'8704''45'cons_1872 erased) (coe du_lemma_1994)
                                    (coe
                                       du_search'45'least'10216'_'10217'_1966 (coe v2)
                                       (coe
                                          (\ v6 ->
                                             coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v6)))))
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Fin.Properties._.lemma
d_lemma_1994 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_Least'10216'_'10217'_1942 -> T_Least'10216'_'10217'_1942
d_lemma_1994 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_lemma_1994 v5
du_lemma_1994 ::
  T_Least'10216'_'10217'_1942 -> T_Least'10216'_'10217'_1942
du_lemma_1994 v0
  = case coe v0 of
      C_least_1962 v1 v2
        -> coe C_least_1962 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v1) v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties._..extendedlambda12
d_'46'extendedlambda12_2002 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  AgdaAny ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'46'extendedlambda12_2002 = erased
-- Data.Fin.Properties.search-least⟨¬_⟩
d_search'45'least'10216''172'_'10217'_2008 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_search'45'least'10216''172'_'10217'_2008 v0 ~v1 ~v2 v3
  = du_search'45'least'10216''172'_'10217'_2008 v0 v3
du_search'45'least'10216''172'_'10217'_2008 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_search'45'least'10216''172'_'10217'_2008 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du_map'8321'_90
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_decidable'45'stable_198
           (coe v1 v3))
      (coe
         du_search'45'least'10216'_'10217'_1966 (coe v0)
         (coe
            MAlonzo.Code.Relation.Unary.Properties.du_'8705''63'_508 (coe v1)))
-- Data.Fin.Properties.¬∀⇒∃¬-smallest
d_'172''8704''8658''8707''172''45'smallest_2030 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ((MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'172''8704''8658''8707''172''45'smallest_2030 v0 ~v1 ~v2 v3 ~v4
  = du_'172''8704''8658''8707''172''45'smallest_2030 v0 v3
du_'172''8704''8658''8707''172''45'smallest_2030 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'172''8704''8658''8707''172''45'smallest_2030 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
      (\ v2 ->
         coe
           MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction'8242'_74)
      (coe du_lemma_2048 (coe v1))
      (coe du_search'45'least'10216''172'_'10217'_2008 (coe v0) (coe v1))
-- Data.Fin.Properties._.lemma
d_lemma_2048 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ((MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_Least'10216'_'10217'_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lemma_2048 ~v0 ~v1 ~v2 v3 ~v4 v5 = du_lemma_2048 v3 v5
du_lemma_2048 ::
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_Least'10216'_'10217'_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lemma_2048 v0 v1
  = case coe v1 of
      C_least_1962 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                (coe
                   (\ v5 ->
                      coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_decidable'45'stable_198
                        (coe
                           v0
                           (coe
                              MAlonzo.Code.Data.Fin.Base.du_inject_126 (coe v2) (coe v5))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.¬∀⇒∃¬
d_'172''8704''8658''8707''172'_2068 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ((MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'172''8704''8658''8707''172'_2068 v0 ~v1 ~v2 v3 ~v4
  = du_'172''8704''8658''8707''172'_2068 v0 v3
du_'172''8704''8658''8707''172'_2068 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'172''8704''8658''8707''172'_2068 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
      (\ v2 ->
         coe
           MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction'8242'_74)
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_witness_1954 (coe v2)) (coe d_example_1956 (coe v2))))
      (coe du_search'45'least'10216''172'_'10217'_2008 (coe v0) (coe v1))
-- Data.Fin.Properties.decFinSubset
d_decFinSubset_2088 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_decFinSubset_2088 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_decFinSubset_2088 v0 v1 v2 v5 v6
du_decFinSubset_2088 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_decFinSubset_2088 v0 v1 v2 v3 v4
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
      _ -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_dec'91'Q'8838'P'93'_2122 (coe v5) (coe v1) (coe v2) (coe v3)
                (coe v4))
-- Data.Fin.Properties.DecFinSubset.Q⊆₀P
d_Q'8838''8320'P_2104 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ()
d_Q'8838''8320'P_2104 = erased
-- Data.Fin.Properties.DecFinSubset.Q⊆ₛP
d_Q'8838''8347'P_2106 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ()
d_Q'8838''8347'P_2106 = erased
-- Data.Fin.Properties.DecFinSubset.cons
d_cons_2108 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> AgdaAny
d_cons_2108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_cons_2108 v7 v8 v9
du_cons_2108 ::
  (AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> AgdaAny
du_cons_2108 v0 v1 v2
  = coe
      du_'8704''45'cons_1872 (coe v0) (coe (\ v3 -> coe v1 v3)) (coe v2)
-- Data.Fin.Properties.DecFinSubset.ih
d_ih_2114 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ih_2114 v0 v1 v2 ~v3 ~v4 v5 v6 = du_ih_2114 v0 v1 v2 v5 v6
du_ih_2114 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_ih_2114 v0 v1 v2 v3 v4
  = coe
      du_decFinSubset_2088 (coe v0) (coe v1) (coe v2)
      (coe (\ v5 -> coe v3 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v5)))
      (coe (\ v5 -> coe v4 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v5)))
-- Data.Fin.Properties.DecFinSubset.Q⊆P⇒Q⊆ₛP
d_Q'8838'P'8658'Q'8838''8347'P_2116 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> AgdaAny
d_Q'8838'P'8658'Q'8838''8347'P_2116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8
  = du_Q'8838'P'8658'Q'8838''8347'P_2116 v7 v8
du_Q'8838'P'8658'Q'8838''8347'P_2116 ::
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> AgdaAny
du_Q'8838'P'8658'Q'8838''8347'P_2116 v0 v1
  = coe v0 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v1)
-- Data.Fin.Properties.DecFinSubset.dec[Q⊆P]
d_dec'91'Q'8838'P'93'_2122 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'91'Q'8838'P'93'_2122 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_dec'91'Q'8838'P'93'_2122 v0 v1 v2 v5 v6
du_dec'91'Q'8838'P'93'_2122 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec'91'Q'8838'P'93'_2122 v0 v1 v2 v3 v4
  = let v5 = coe v3 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_uncurry_244
                                 (coe (\ v9 -> coe du_cons_2108 (coe (\ v10 -> v9)))))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
                                 (coe
                                    (\ v9 -> coe v9 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12) v8))
                                 (coe du_Q'8838'P'8658'Q'8838''8347'P_2116))
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''63'__84
                                 (coe v4 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12) v8)
                                 (coe du_ih_2114 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                          (coe
                             du_cons_2108
                             (\ v8 ->
                                coe
                                  MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction'8242'_74))
                          (coe du_Q'8838'P'8658'Q'8838''8347'P_2116)
                          (coe du_ih_2114 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Properties.pigeonhole
d_pigeonhole_2140 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pigeonhole_2140 ~v0 v1 v2 v3 = du_pigeonhole_2140 v1 v2 v3
du_pigeonhole_2140 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pigeonhole_2140 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
               -> let v9 = subInt (coe v0) (coe (2 :: Integer)) in
                  coe
                    (let v10
                           = coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_to_1868
                                  (coe du_'8846''8660''8707'_1904))
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe du_'8846''8660''8707'_1904))
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''63'__96
                                  (coe
                                     du__'8799'__54
                                     (coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
                                     (coe
                                        v2
                                        (coe
                                           MAlonzo.Code.Data.Fin.Base.C_suc_16
                                           (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))))
                                  (coe
                                     du_any'63'_1908 (coe v9)
                                     (coe
                                        (\ v10 ->
                                           coe
                                             du__'8799'__54
                                             (coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
                                             (coe
                                                v2
                                                (coe
                                                   MAlonzo.Code.Data.Fin.Base.C_suc_16
                                                   (coe
                                                      MAlonzo.Code.Data.Fin.Base.C_suc_16
                                                      v10))))))) in
                     coe
                       (case coe v10 of
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                            -> if coe v11
                                 then case coe v12 of
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                          -> case coe v13 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Data.Fin.Base.C_suc_16 v14)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
                                                            (coe v15)))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 else coe
                                        seq (coe v12)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Data.Fin.Base.C_suc_16
                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    du_pigeonhole_2140
                                                    (coe subInt (coe v0) (coe (1 :: Integer)))
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8)
                                                    (coe
                                                       (\ v13 ->
                                                          coe
                                                            MAlonzo.Code.Data.Fin.Base.du_punchOut_418
                                                            (coe
                                                               v2
                                                               (coe
                                                                  MAlonzo.Code.Data.Fin.Base.C_zero_12))
                                                            (coe
                                                               v2
                                                               (coe
                                                                  MAlonzo.Code.Data.Fin.Base.C_suc_16
                                                                  v13)))))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Data.Fin.Base.C_suc_16
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          du_pigeonhole_2140
                                                          (coe subInt (coe v0) (coe (1 :: Integer)))
                                                          (coe
                                                             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                                             v8)
                                                          (coe
                                                             (\ v13 ->
                                                                coe
                                                                  MAlonzo.Code.Data.Fin.Base.du_punchOut_418
                                                                  (coe
                                                                     v2
                                                                     (coe
                                                                        MAlonzo.Code.Data.Fin.Base.C_zero_12))
                                                                  (coe
                                                                     v2
                                                                     (coe
                                                                        MAlonzo.Code.Data.Fin.Base.C_suc_16
                                                                        v13))))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe
                                                                du_pigeonhole_2140
                                                                (coe
                                                                   subInt (coe v0)
                                                                   (coe (1 :: Integer)))
                                                                (coe
                                                                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                                                   v8)
                                                                (coe
                                                                   (\ v13 ->
                                                                      coe
                                                                        MAlonzo.Code.Data.Fin.Base.du_punchOut_418
                                                                        (coe
                                                                           v2
                                                                           (coe
                                                                              MAlonzo.Code.Data.Fin.Base.C_zero_12))
                                                                        (coe
                                                                           v2
                                                                           (coe
                                                                              MAlonzo.Code.Data.Fin.Base.C_suc_16
                                                                              v13)))))))))
                                                 erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.<⇒notInjective
d_'60''8658'notInjective_2184 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658'notInjective_2184 = erased
-- Data.Fin.Properties.notInjective-Fin[1+n]→Fin[n]
d_notInjective'45'Fin'91'1'43'n'93''8594'Fin'91'n'93'_2202 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_notInjective'45'Fin'91'1'43'n'93''8594'Fin'91'n'93'_2202 = erased
-- Data.Fin.Properties.injective⇒≤
d_injective'8658''8804'_2208 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_injective'8658''8804'_2208 v0 v1 ~v2 ~v3
  = du_injective'8658''8804'_2208 v0 v1
du_injective'8658''8804'_2208 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_injective'8658''8804'_2208 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_3284
      (coe v1) (coe v0)
-- Data.Fin.Properties.ℕ→Fin-notInjective
d_ℕ'8594'Fin'45'notInjective_2212 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ℕ'8594'Fin'45'notInjective_2212 = erased
-- Data.Fin.Properties.cantor-schröder-bernstein
d_cantor'45'schröder'45'bernstein_2220 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cantor'45'schröder'45'bernstein_2220 = erased
-- Data.Fin.Properties.injective⇒existsPivot
d_injective'8658'existsPivot_2232 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_injective'8658'existsPivot_2232 v0 ~v1 v2 ~v3 v4
  = du_injective'8658'existsPivot_2232 v0 v2 v4
du_injective'8658'existsPivot_2232 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_injective'8658'existsPivot_2232 v0 v1 v2
  = let v3
          = coe
              du_any'63'_1908 (coe v0)
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''63'__84
                      (coe du__'8804''63'__414 (coe v3) (coe v2))
                      (coe du__'8804''63'__414 (coe v2) (coe v1 v3)))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then case coe v5 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v5)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction'8242'_74)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Properties._.fj<i
d_fj'60'i_2268 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_fj'60'i_2268 ~v0 ~v1 v2 v3 ~v4 ~v5 v6 = du_fj'60'i_2268 v2 v3 v6
du_fj'60'i_2268 ::
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_fj'60'i_2268 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              (\ v3 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_3094
                   (coe
                      addInt (coe (1 :: Integer))
                      (coe
                         MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                         (coe
                            v0
                            (coe
                               MAlonzo.Code.Data.Fin.Base.du_inject'33'_136
                               (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v1) (coe v2))))))
              (coe
                 MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_3106)
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                 (coe
                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                    (coe
                       addInt (coe (1 :: Integer))
                       (coe
                          MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                          (coe
                             v0
                             (coe
                                MAlonzo.Code.Data.Fin.Base.du_inject'33'_136
                                (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v1) (coe v2)))))
                    (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v1)))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then case coe v5 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v5)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Properties._.f∘inject!
d_f'8728'inject'33'_2284 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_f'8728'inject'33'_2284 ~v0 ~v1 v2 v3 ~v4 ~v5 v6
  = du_f'8728'inject'33'_2284 v2 v3 v6
du_f'8728'inject'33'_2284 ::
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
du_f'8728'inject'33'_2284 v0 v1 v2
  = coe
      v0
      (coe
         MAlonzo.Code.Data.Fin.Base.du_inject'33'_136
         (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v1) (coe v2))
-- Data.Fin.Properties._.f∘inject!-injective
d_f'8728'inject'33''45'injective_2288 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_f'8728'inject'33''45'injective_2288 = erased
-- Data.Fin.Properties._.sequence
d_sequence_2342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
d_sequence_2342 ~v0 ~v1 v2 v3 ~v4 v5 = du_sequence_2342 v2 v3 v5
du_sequence_2342 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
du_sequence_2342 v0 v1 v2
  = case coe v1 of
      0 -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased erased
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Effect.Applicative.d__'60''42''62'__34 v0 erased
                erased
                (coe
                   MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                   (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                   erased (coe du_'8704''45'cons_1872)
                   (coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)))
                (coe
                   du_sequence_2342 (coe v0) (coe v3)
                   (coe
                      (\ v4 -> coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v4)))))
-- Data.Fin.Properties._.sequence⁻¹
d_sequence'8315''185'_2378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  MAlonzo.Code.Effect.Functor.T_RawFunctor_24 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sequence'8315''185'_2378 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_sequence'8315''185'_2378 v2 v5 v6
du_sequence'8315''185'_2378 ::
  MAlonzo.Code.Effect.Functor.T_RawFunctor_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sequence'8315''185'_2378 v0 v1 v2
  = coe
      MAlonzo.Code.Effect.Functor.d__'60''36''62'__30 v0 erased erased
      (\ v3 -> coe v3 v2) v1
-- Data.Fin.Properties._._._≈_
d__'8776'__2402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2402 = erased
-- Data.Fin.Properties._.inj⇒≟
d_inj'8658''8799'_2424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_inj'8658''8799'_2424 ~v0 ~v1 ~v2 ~v3 v4
  = du_inj'8658''8799'_2424 v4
du_inj'8658''8799'_2424 ::
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_inj'8658''8799'_2424 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_via'45'injection_180
      (coe v0) (coe du__'8799'__54)
-- Data.Fin.Properties._.inj⇒decSetoid
d_inj'8658'decSetoid_2426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
d_inj'8658'decSetoid_2426 ~v0 ~v1 ~v2 v3 v4
  = du_inj'8658'decSetoid_2426 v3 v4
du_inj'8658'decSetoid_2426 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
du_inj'8658'decSetoid_2426 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_134
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_constructor_70
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
         (coe du_inj'8658''8799'_2424 (coe v1)))
-- Data.Fin.Properties.opposite-prop
d_opposite'45'prop_2430 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'45'prop_2430 = erased
-- Data.Fin.Properties.opposite-involutive
d_opposite'45'involutive_2442 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'45'involutive_2442 = erased
-- Data.Fin.Properties.opposite-suc
d_opposite'45'suc_2456 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'45'suc_2456 = erased
-- Data.Fin.Properties.inject+-raise-splitAt
d_inject'43''45'raise'45'splitAt_2466 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'43''45'raise'45'splitAt_2466 = erased
-- Data.Fin.Properties.toℕ-raise
d_toℕ'45'raise_2468 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'raise_2468 = erased
-- Data.Fin.Properties.toℕ-inject+
d_toℕ'45'inject'43'_2476 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inject'43'_2476 = erased
-- Data.Fin.Properties.splitAt-inject+
d_splitAt'45'inject'43'_2488 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45'inject'43'_2488 = erased
-- Data.Fin.Properties.splitAt-raise
d_splitAt'45'raise_2502 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45'raise_2502 = erased
-- Data.Fin.Properties.Fin0↔⊥
d_Fin0'8596''8869'_2504 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_Fin0'8596''8869'_2504 = coe d_0'8596''8869'_28
-- Data.Fin.Properties.eq?
d_eq'63'_2506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_eq'63'_2506 ~v0 ~v1 ~v2 = du_eq'63'_2506
du_eq'63'_2506 ::
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_eq'63'_2506 = coe du_inj'8658''8799'_2424
-- Data.Fin.Properties.z≺s
d_z'8826's_2510 ::
  Integer -> MAlonzo.Code.Data.Fin.Base.T__'8826'__570
d_z'8826's_2510 ~v0 = du_z'8826's_2510
du_z'8826's_2510 :: MAlonzo.Code.Data.Fin.Base.T__'8826'__570
du_z'8826's_2510
  = coe
      MAlonzo.Code.Data.Fin.Base.C__'8827'toℕ__576
      (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)
-- Data.Fin.Properties.s≺s
d_s'8826's_2516 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570 ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570
d_s'8826's_2516 ~v0 ~v1 v2 = du_s'8826's_2516 v2
du_s'8826's_2516 ::
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570 ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570
du_s'8826's_2516 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C__'8827'toℕ__576 v2
        -> coe
             MAlonzo.Code.Data.Fin.Base.C__'8827'toℕ__576
             (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.<⇒≺
d_'60''8658''8826'_2522 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570
d_'60''8658''8826'_2522 v0 ~v1 v2 = du_'60''8658''8826'_2522 v0 v2
du_'60''8658''8826'_2522 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570
du_'60''8658''8826'_2522 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
               -> coe seq (coe v4) (coe du_z'8826's_2510)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe
                       du_s'8826's_2516 (coe du_'60''8658''8826'_2522 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Properties.≺⇒<
d_'8826''8658''60'_2528 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8826''8658''60'_2528 ~v0 ~v1 v2 = du_'8826''8658''60'_2528 v2
du_'8826''8658''60'_2528 ::
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8826''8658''60'_2528 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C__'8827'toℕ__576 v2
        -> coe du_toℕ'60'n_174 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.≺⇒<′
d_'8826''8658''60''8242'_2534 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_'8826''8658''60''8242'_2534 ~v0 v1 v2
  = du_'8826''8658''60''8242'_2534 v1 v2
du_'8826''8658''60''8242'_2534 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
du_'8826''8658''60''8242'_2534 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'60''8658''60''8242'_6620
      (coe v0) (coe du_'8826''8658''60'_2528 (coe v1))
-- Data.Fin.Properties.<′⇒≺
d_'60''8242''8658''8826'_2538 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570
d_'60''8242''8658''8826'_2538 v0 ~v1 v2
  = du_'60''8242''8658''8826'_2538 v0 v2
du_'60''8242''8658''8826'_2538 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__570
du_'60''8242''8658''8826'_2538 v0 v1
  = coe
      du_'60''8658''8826'_2522 (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Properties.du_'60''8242''8658''60'_6624
         (coe v0) (coe v1))
-- Data.Fin.Properties.¬∀⟶∃¬-smallest
d_'172''8704''10230''8707''172''45'smallest_2542 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ((MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'172''8704''10230''8707''172''45'smallest_2542 v0 v1 v2 v3 v4
  = coe du_'172''8704''8658''8707''172''45'smallest_2030 v0 v3
-- Data.Fin.Properties.¬∀⟶∃¬
d_'172''8704''10230''8707''172'_2544 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ((MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'172''8704''10230''8707''172'_2544 v0 v1 v2 v3 v4
  = coe du_'172''8704''8658''8707''172'_2068 v0 v3
