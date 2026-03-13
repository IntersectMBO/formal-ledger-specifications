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

module MAlonzo.Code.Ledger.Prelude where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Prelude._._≢ᵐ_
d__'8802''7504'__6 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8802''7504'__6 = erased
-- Ledger.Prelude.dec-de-morgan
d_dec'45'de'45'morgan_12 ::
  () ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_dec'45'de'45'morgan_12 ~v0 ~v1 v2 v3
  = du_dec'45'de'45'morgan_12 v2 v3
du_dec'45'de'45'morgan_12 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_dec'45'de'45'morgan_12 v0 v1
  = case coe v0 of
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30 v2
        -> case coe v2 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
               -> if coe v3
                    then case coe v4 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v5
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe
                                     (\ v6 ->
                                        coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                             (coe v6))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v4) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.≡ᵉ-getCoin
d_'8801''7497''45'getCoin_32 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''7497''45'getCoin_32 = erased
-- Ledger.Prelude.setToMap
d_setToMap_48 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_setToMap_48 ~v0 ~v1 v2 v3 = du_setToMap_48 v2 v3
du_setToMap_48 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_setToMap_48 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe v0) (coe v1)
-- Ledger.Prelude._/₀_
d__'47''8320'__50 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__50 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Prelude._÷₀_
d__'247''8320'__58 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'247''8320'__58 v0 v1
  = let v2
          = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
              (coe v1) (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then coe
                       seq (coe v4) (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
                else coe
                       seq (coe v4)
                       (coe
                          MAlonzo.Code.Data.Rational.Base.du__'247'__312 (coe v0) (coe v1))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Prelude.⟦_⟧
d_'10214'_'10215'_76 ::
  () ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16 ->
  AgdaAny -> AgdaAny
d_'10214'_'10215'_76 ~v0 ~v1 v2 = du_'10214'_'10215'_76 v2
du_'10214'_'10215'_76 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16 ->
  AgdaAny -> AgdaAny
du_'10214'_'10215'_76 v0
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.d_cast_28
      (coe v0)
-- Ledger.Prelude.∣_∣
d_'8739'_'8739'_94 ::
  () ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16 ->
  AgdaAny -> AgdaAny
d_'8739'_'8739'_94 ~v0 ~v1 v2 = du_'8739'_'8739'_94 v2
du_'8739'_'8739'_94 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16 ->
  AgdaAny -> AgdaAny
du_'8739'_'8739'_94 v0
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.d_cast_28
      (coe v0)
-- Ledger.Prelude.Filter.filter
d_filter_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
d_filter_116 ~v0 ~v1 ~v2 ~v3 v4 = du_filter_116 v4
du_filter_116 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
du_filter_116 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_filter_648
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''185'_80 (coe v0))
-- Ledger.Prelude.lookupHash
d_lookupHash_128 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_lookupHash_128 ~v0 ~v1 v2 v3 v4 v5
  = du_lookupHash_128 v2 v3 v4 v5
du_lookupHash_128 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  AgdaAny -> [AgdaAny] -> Maybe AgdaAny
du_lookupHash_128 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe du_m_138 (coe v0) (coe v1) (coe v3)))))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_2026
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe du_m_138 (coe v0) (coe v1) (coe v3)) (coe v2) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Prelude._.m
d_m_138 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_138 ~v0 ~v1 v2 v3 ~v4 v5 = du_m_138 v2 v3 v5
du_m_138 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_138 v0 v1 v2
  = coe
      du_setToMap_48 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
            (coe
               MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18 (coe v1))
            (coe (\ v3 -> v3)))
         v2)
-- Ledger.Prelude.Is-∅
d_Is'45''8709'_142 :: () -> [AgdaAny] -> ()
d_Is'45''8709'_142 = erased
-- Ledger.Prelude.concatMapˡ
d_concatMap'737'_150 ::
  () -> () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap'737'_150 ~v0 ~v1 v2 v3 = du_concatMap'737'_150 v2 v3
du_concatMap'737'_150 ::
  (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
du_concatMap'737'_150 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Axiom.Set.d_unions_224
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         erased
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.Functor.Core.du_fmap_22
               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
               () erased v0 v1)))
