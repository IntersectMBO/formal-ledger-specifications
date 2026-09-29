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

module MAlonzo.Code.Ledger.Conway.Foreign.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.DirectProduct
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin
import qualified MAlonzo.Code.Prelude

-- Ledger.Conway.Foreign.Core.Implementation.Network
d_Network_10 :: ()
d_Network_10 = erased
-- Ledger.Conway.Foreign.Core.Implementation.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_12 :: Integer
d_SlotsPerEpoch'7580'_12 = coe (4320 :: Integer)
-- Ledger.Conway.Foreign.Core.Implementation.ActiveSlotCoeff
d_ActiveSlotCoeff_14 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_14 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.du__'47'__156
      (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16) (coe (20 :: Integer))
-- Ledger.Conway.Foreign.Core.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_16 :: Integer
d_StabilityWindow'7580'_16 = coe (10 :: Integer)
-- Ledger.Conway.Foreign.Core.Implementation.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_18 :: Integer
d_RandomnessStabilisationWindow'7580'_18 = coe (10 :: Integer)
-- Ledger.Conway.Foreign.Core.Implementation.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_20 :: Integer
d_MaxLovelaceSupply'7580'_20 = coe (1 :: Integer)
-- Ledger.Conway.Foreign.Core.Implementation.Quorum
d_Quorum_22 :: Integer
d_Quorum_22 = coe (1 :: Integer)
-- Ledger.Conway.Foreign.Core.Implementation.NetworkId
d_NetworkId_24 :: Integer
d_NetworkId_24 = coe (0 :: Integer)
-- Ledger.Conway.Foreign.Core.Implementation.SKey
d_SKey_26 :: ()
d_SKey_26 = erased
-- Ledger.Conway.Foreign.Core.Implementation.Sig
d_Sig_28 :: ()
d_Sig_28 = erased
-- Ledger.Conway.Foreign.Core.Implementation.Ser
d_Ser_30 :: ()
d_Ser_30 = erased
-- Ledger.Conway.Foreign.Core.Implementation.sign
d_sign_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_32 ~v0 ~v1 v2 = du_sign_32 v2
du_sign_32 ::
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_32 v0
  = coe MAlonzo.Code.Class.HasAdd.Core.d__'43'__16 (coe v0)
-- Ledger.Conway.Foreign.Core.Implementation.ScriptHash
d_ScriptHash_34 :: ()
d_ScriptHash_34 = erased
-- Ledger.Conway.Foreign.Core.Implementation.Data
d_Data_36 :: ()
d_Data_36 = erased
-- Ledger.Conway.Foreign.Core.Implementation.toData
d_toData_40 :: () -> AgdaAny -> Integer
d_toData_40 ~v0 ~v1 = du_toData_40
du_toData_40 :: Integer
du_toData_40 = coe (0 :: Integer)
-- Ledger.Conway.Foreign.Core.Implementation.ExUnits
d_ExUnits_42 :: ()
d_ExUnits_42 = erased
-- Ledger.Conway.Foreign.Core.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_44 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_44
  = coe
      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
      (coe
         MAlonzo.Code.Algebra.Construct.DirectProduct.du_commutativeMonoid_1546
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476)
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
-- Ledger.Conway.Foreign.Core.Implementation.≥ᵉ-Dec
d_'8805''7497''45'Dec_46 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_46 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe
         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      (coe v0) (coe v1)
-- Ledger.Conway.Foreign.Core.Implementation._≥ᵉ_
d__'8805''7497'__48 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__48 = erased
-- Ledger.Conway.Foreign.Core.Implementation.Show-ExUnits
d_Show'45'ExUnits_50 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_50
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.Core.Implementation.CostModel
d_CostModel_52 :: ()
d_CostModel_52 = erased
-- Ledger.Conway.Foreign.Core.Implementation.LangDepView
d_LangDepView_54 :: ()
d_LangDepView_54 = erased
-- Ledger.Conway.Foreign.Core.Implementation.Prices
d_Prices_56 :: ()
d_Prices_56 = erased
-- Ledger.Conway.Foreign.Core.Implementation.TxId
d_TxId_58 :: ()
d_TxId_58 = erased
-- Ledger.Conway.Foreign.Core.Implementation.Ix
d_Ix_60 :: ()
d_Ix_60 = erased
-- Ledger.Conway.Foreign.Core.Implementation.AuxiliaryData
d_AuxiliaryData_62 :: ()
d_AuxiliaryData_62 = erased
-- Ledger.Conway.Foreign.Core.Implementation.DocHash
d_DocHash_64 :: ()
d_DocHash_64 = erased
-- Ledger.Conway.Foreign.Core.Implementation.tokenAlgebra
d_tokenAlgebra_66 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_66
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
