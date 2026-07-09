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
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Prelude.dec-de-morgan
d_dec'45'de'45'morgan_8 ::
  () ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_dec'45'de'45'morgan_8 ~v0 ~v1 v2 v3
  = du_dec'45'de'45'morgan_8 v2 v3
du_dec'45'de'45'morgan_8 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_dec'45'de'45'morgan_8 v0 v1
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
-- Ledger.Prelude.setToMap
d_setToMap_24 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_setToMap_24 ~v0 ~v1 v2 v3 = du_setToMap_24 v2 v3
du_setToMap_24 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_setToMap_24 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe v0) (coe v1)
-- Ledger.Prelude._/₀_
d__'47''8320'__26 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__26 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Prelude._÷₀_
d__'247''8320'__34 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'247''8320'__34 v0 v1
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
d_'10214'_'10215'_52 ::
  () ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16 ->
  AgdaAny -> AgdaAny
d_'10214'_'10215'_52 ~v0 ~v1 v2 = du_'10214'_'10215'_52 v2
du_'10214'_'10215'_52 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16 ->
  AgdaAny -> AgdaAny
du_'10214'_'10215'_52 v0
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.d_cast_28
      (coe v0)
-- Ledger.Prelude.∣_∣
d_'8739'_'8739'_70 ::
  () ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16 ->
  AgdaAny -> AgdaAny
d_'8739'_'8739'_70 ~v0 ~v1 v2 = du_'8739'_'8739'_70 v2
du_'8739'_'8739'_70 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16 ->
  AgdaAny -> AgdaAny
du_'8739'_'8739'_70 v0
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.d_cast_28
      (coe v0)
-- Ledger.Prelude.Filter.filter
d_filter_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
d_filter_92 ~v0 ~v1 ~v2 ~v3 v4 = du_filter_92 v4
du_filter_92 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
du_filter_92 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_filter_648
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''185'_80 (coe v0))
-- Ledger.Prelude.lookupHash
d_lookupHash_104 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_lookupHash_104 ~v0 ~v1 v2 v3 v4 v5
  = du_lookupHash_104 v2 v3 v4 v5
du_lookupHash_104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  AgdaAny -> [AgdaAny] -> Maybe AgdaAny
du_lookupHash_104 v0 v1 v2 v3
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
               (coe du_m_114 (coe v0) (coe v1) (coe v3)))))
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
                 (coe du_m_114 (coe v0) (coe v1) (coe v3)) (coe v2) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Prelude._.m
d_m_114 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_114 ~v0 ~v1 v2 v3 ~v4 v5 = du_m_114 v2 v3 v5
du_m_114 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_114 v0 v1 v2
  = coe
      du_setToMap_24 (coe v0)
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
d_Is'45''8709'_118 :: () -> [AgdaAny] -> ()
d_Is'45''8709'_118 = erased
-- Ledger.Prelude.concatMapˡ
d_concatMap'737'_126 ::
  () -> () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap'737'_126 ~v0 ~v1 v2 v3 = du_concatMap'737'_126 v2 v3
du_concatMap'737'_126 ::
  (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
du_concatMap'737'_126 v0 v1
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
-- Ledger.Prelude.indexedSumL-proj₂-zero
d_indexedSumL'45'proj'8322''45'zero_138 ::
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_indexedSumL'45'proj'8322''45'zero_138 = erased
-- Ledger.Prelude._.getCoin-singleton
d_getCoin'45'singleton_164 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'45'singleton_164 = erased
-- Ledger.Prelude._.≡ᵉ-getCoin
d_'8801''7497''45'getCoin_170 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''7497''45'getCoin_170 = erased
-- Ledger.Prelude._.getCoin-cong
d_getCoin'45'cong_182 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'45'cong_182 = erased
-- Ledger.Prelude._.indexedSumᵛ'-∪
d_indexedSum'7515''''45''8746'_194 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_indexedSum'7515''''45''8746'_194 = erased
-- Ledger.Prelude._.res-decomp
d_res'45'decomp_390 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'decomp_390 ~v0 v1 v2 v3 = du_res'45'decomp_390 v1 v2 v3
du_res'45'decomp_390 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'decomp_390 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_980
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_758
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
               (MAlonzo.Code.Axiom.Set.d_sp_188
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
               erased erased erased
               (coe
                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                  (MAlonzo.Code.Axiom.Set.d_sp_188
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                  erased erased
                  (coe
                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased v0
                     (let v3
                            = MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v3
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))))))
               (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
            (coe v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_758
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
               (MAlonzo.Code.Axiom.Set.d_sp_188
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
               erased erased erased
               (coe
                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                  (MAlonzo.Code.Axiom.Set.d_sp_188
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                  erased erased
                  (coe
                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased v0
                     (let v3
                            = MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v3
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))))))
               (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_758
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                  (MAlonzo.Code.Axiom.Set.d_sp_188
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                  erased erased erased
                  (coe
                     MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                     (MAlonzo.Code.Axiom.Set.d_sp_188
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                     erased erased
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased v0
                        (let v3
                               = MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v3
                              (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))))))
                  (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
               (coe v2))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v3 v4 -> v4))
         (coe (\ v3 v4 -> v4)))
      (let v3
             = coe
                 MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'idem_778
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                    (MAlonzo.Code.Axiom.Set.d_sp_188
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                       (MAlonzo.Code.Axiom.Set.d_sp_188
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       erased erased
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased v0
                          (let v3
                                 = MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                           coe
                             (coe
                                MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v3
                                (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))))))
                    (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe v2) in
       coe
         (case coe v3 of
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
              -> coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v4)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Prelude._.∪ˡsingleton∈dom
d_'8746''737'singleton'8712'dom_420 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''737'singleton'8712'dom_420 = erased
-- Ledger.Prelude._.∪ˡsingleton∉dom
d_'8746''737'singleton'8713'dom_438 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''737'singleton'8713'dom_438 = erased
-- Ledger.Prelude._.∪ˡsingleton0≡
d_'8746''737'singleton0'8801'_464 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''737'singleton0'8801'_464 = erased
-- Ledger.Prelude._.sumConstZero
d_sumConstZero_488 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sumConstZero_488 = erased
-- Ledger.Prelude._._.fin
d_fin_498 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fin_498 ~v0 ~v1 v2 = du_fin_498 v2
du_fin_498 :: [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_fin_498 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1210
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
              (coe (0 :: Integer)))
         v0)
-- Ledger.Prelude._._.l
d_l_502 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_l_502 ~v0 ~v1 v2 = du_l_502 v2
du_l_502 :: [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_l_502 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe du_fin_498 (coe v0))
-- Ledger.Prelude._._.h
d_h_508 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_h_508 ~v0 ~v1 v2 v3 = du_h_508 v2 v3
du_h_508 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_h_508 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe du_fin_498 (coe v0))
      v1
-- Ledger.Prelude._._.all-zero
d_all'45'zero_512 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_all'45'zero_512 = erased
-- Ledger.Prelude._._.all-zero-dedup
d_all'45'zero'45'dedup_526 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_all'45'zero'45'dedup_526 = erased
-- Ledger.Prelude.setToList-∈
d_setToList'45''8712'_536 ::
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_setToList'45''8712'_536 ~v0 ~v1 ~v2 v3
  = du_setToList'45''8712'_536 v3
du_setToList'45''8712'_536 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_setToList'45''8712'_536 v0 = coe v0
