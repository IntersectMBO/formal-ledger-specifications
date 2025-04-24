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
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.CommutativeMonoid.Instances
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasSubset
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

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
-- Ledger.Prelude.CommMonoid-ℕ-+
d_CommMonoid'45'ℕ'45''43'_20 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_CommMonoid'45'ℕ'45''43'_20
  = coe
      MAlonzo.Code.Class.CommutativeMonoid.Instances.d_CommMonoid'45'ℕ'45''43'_8
-- Ledger.Prelude.HasCoin-Map
d_HasCoin'45'Map_24 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_24 ~v0 v1 = du_HasCoin'45'Map_24 v1
du_HasCoin'45'Map_24 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_24 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
              (coe v0)
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
              (coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
              (coe (\ v2 -> v2)) (coe v1)))
-- Ledger.Prelude.HasCoin-Set
d_HasCoin'45'Set_32 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Set_32 ~v0 v1 = du_HasCoin'45'Set_32 v1
du_HasCoin'45'Set_32 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Set_32 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum''_1196
              (coe
                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182 (coe v0)
                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
              (coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
              (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
              (coe v1)))
-- Ledger.Prelude.HasSubset-Set
d_HasSubset'45'Set_44 ::
  () -> MAlonzo.Code.Interface.HasSubset.T_HasSubset_8
d_HasSubset'45'Set_44 = erased
-- Ledger.Prelude.≡ᵉ-getCoin
d_'8801''7497''45'getCoin_54 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''7497''45'getCoin_54 = erased
-- Ledger.Prelude.setToMap
d_setToMap_70 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_setToMap_70 ~v0 ~v1 v2 v3 = du_setToMap_70 v2 v3
du_setToMap_70 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_setToMap_70 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_582
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe v0) (coe v1)
-- Ledger.Prelude._/₀_
d__'47''8320'__72 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__72 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Prelude._÷₀_
d__'247''8320'__80 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'247''8320'__80 v0 v1
  = let v2
          = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
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
d_'10214'_'10215'_98 ::
  () ->
  () ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_98 ~v0 ~v1 v2 = du_'10214'_'10215'_98 v2
du_'10214'_'10215'_98 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14 -> AgdaAny -> AgdaAny
du_'10214'_'10215'_98 v0
  = coe MAlonzo.Code.Class.HasCast.Base.d_cast_26 (coe v0)
-- Ledger.Prelude.∣_∣
d_'8739'_'8739'_116 ::
  () ->
  () ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14 -> AgdaAny -> AgdaAny
d_'8739'_'8739'_116 ~v0 ~v1 v2 = du_'8739'_'8739'_116 v2
du_'8739'_'8739'_116 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14 -> AgdaAny -> AgdaAny
du_'8739'_'8739'_116 v0
  = coe MAlonzo.Code.Class.HasCast.Base.d_cast_26 (coe v0)
