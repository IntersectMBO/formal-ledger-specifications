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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Convertible.Foreign
import qualified MAlonzo.Code.Class.Convertible.Instances
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Account
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data Tag = Spend  | Mint  | Cert  | Reward  | Vote  | Propose  | Guard 
  deriving (Show, Eq, Generic)
data NativeScript = RequireAllOf [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.NativeScript] | RequireAnyOf [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.NativeScript] | RequireMOf Integer [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.NativeScript] | RequireSig Integer | RequireTimeStart Integer | RequireTimeExpire Integer | RequireGuard MAlonzo.Code.Ledger.Core.Foreign.Address.Credential
  deriving (Show, Eq, Generic)
data HSNativeScript = HSNativeScript {nativeScript :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.NativeScript, nsScriptHash :: Integer, nsScriptSize :: Integer}
  deriving (Show, Eq, Generic)
data HSPlutusScript = MkHSPlutusScript {psScriptHash :: Integer, psScriptSize :: Integer, psScriptLanguage :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.HSLanguage}
  deriving (Show, Eq, Generic)
data TxWitnesses = MkTxWitnesses {txwVKeySigs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.HSVKey Integer), txwScripts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)), txwTxData :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet Integer), txwTxRedeemers :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap (MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.Tag, Integer) (Integer, (Integer, Integer)))}
  deriving (Show, Eq, Generic)
type Redeemer = Integer
type RedeemerPtr = (MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.Tag, Integer)
data TxBodySub = MkTxBodySub {txbsubTxIns :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbsubReferenceInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbsubTxOuts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer ((Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)))))), txbsubTxId :: Integer, txbsubTxCerts :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.DCert], txbsubTxWithdrawals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer), txbsubTxVldt :: ((Maybe Integer), (Maybe Integer)), txbsubTxADhash :: (Maybe Integer), txbsubTxDonation :: Integer, txbsubTxGovVotes :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.GovVote], txbsubTxGovProposals :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.GovProposal], txbsubTxNetworkId :: (Maybe Integer), txbsubCurrentTreasury :: (Maybe Integer), txbsubMint :: Integer, txbsubScriptIntegrityHash :: (Maybe Integer), txbsubTxGuards :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet MAlonzo.Code.Ledger.Core.Foreign.Address.Credential), txbsubTxRequiredTopLevelGuards :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (MAlonzo.Code.Ledger.Core.Foreign.Address.Credential, (Maybe Integer))), txbsubTxDirectDeposits :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer), txbsubTxBalanceIntervals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.BalanceInterval)}
  deriving (Show, Eq, Generic)
data TxSub = MkTxSub {txsubTxBody :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxBodySub, txsubTxWitnesses :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxWitnesses, txsubTxSize :: Integer, txsubTxAuxData :: (Maybe Integer)}
  deriving (Show, Eq, Generic)
data TxBodyTop = MkTxBodyTop {txbtopTxIns :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbtopReferenceInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbtopCollateralInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txbtopTxOuts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer ((Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)))))), txbtopTxId :: Integer, txbtopTxCerts :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.DCert], txbtopTxFee :: Integer, txbtopTxWithdrawals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer), txbtopTxVldt :: ((Maybe Integer), (Maybe Integer)), txbtopTxADhash :: (Maybe Integer), txbtopTxDonation :: Integer, txbtopTxGovVotes :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.GovVote], txbtopTxGovProposals :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.GovProposal], txbtopTxNetworkId :: (Maybe Integer), txbtopCurrentTreasury :: (Maybe Integer), txbtopMint :: Integer, txbtopScriptIntegrityHash :: (Maybe Integer), txbtopTxSubTransactions :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxSub], txbtopTxRequiredTopLevelGuards :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (MAlonzo.Code.Ledger.Core.Foreign.Address.Credential, (Maybe Integer))), txbtopTxGuards :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet MAlonzo.Code.Ledger.Core.Foreign.Address.Credential), txbtopTxDirectDeposits :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer), txbtopTxBalanceIntervals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.BalanceInterval)}
  deriving (Show, Eq, Generic)
data TxTop = MkTxTop {txtopTxBody :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxBodyTop, txtopTxWitnesses :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxWitnesses, txtopTxSize :: Integer, txtopIsValid :: Bool, txtopTxAuxData :: (Maybe Integer)}
  deriving (Show, Eq, Generic)
type TxId = Integer
type Ix = Integer
type TxIn = (Integer, Integer)
type ExUnits = (Integer, Integer)
type P1Script = MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript
type P2Script = MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript
type Script = (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)
type Datum = Integer
type DataHash = Integer
type Value = Integer
type TxOut = ((Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSNativeScript MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript)))))
type ScriptHash = Integer
type AuxiliaryData = Integer
type Withdrawals = (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-Tag
d_HsTy'45'Tag_8 :: MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Tag_8 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-Tag
d_Conv'45'Tag_10 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Tag_10
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Spend_42
                -> coe C_Spend_23
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Mint_44
                -> coe C_Mint_25
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Cert_46
                -> coe C_Cert_27
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Reward_48
                -> coe C_Reward_29
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Vote_50
                -> coe C_Vote_31
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Propose_52
                -> coe C_Propose_33
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Guard_54
                -> coe C_Guard_35
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_23
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Spend_42
              C_Mint_25
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Mint_44
              C_Cert_27
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Cert_46
              C_Reward_29
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Reward_48
              C_Vote_31
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Vote_50
              C_Propose_33
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Propose_52
              C_Guard_35
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Guard_54
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-NativeScript
d_HsTy'45'NativeScript_12 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'NativeScript_12 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-NativeScript
d_Conv'45'NativeScript_14 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'NativeScript_14 = coe d_'46'extendedlambda_1303
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-HSNativeScript
d_HsTy'45'HSNativeScript_16 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'HSNativeScript_16 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-HSNativeScript
d_Conv'45'HSNativeScript_18 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'HSNativeScript_18
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.C_constructor_350 v1 v2 v3
                -> coe
                     C_HSNativeScript_2883
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        d_'46'extendedlambda_1303 v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_HSNativeScript_2883 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.C_constructor_350
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        d_'46'extendedlambda_1303 v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-HSPlutusScript
d_HsTy'45'HSPlutusScript_20 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'HSPlutusScript_20 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Tag
d_Tag_21 = ()
type T_Tag_21 = Tag
pattern C_Spend_23 = Spend
pattern C_Mint_25 = Mint
pattern C_Cert_27 = Cert
pattern C_Reward_29 = Reward
pattern C_Vote_31 = Vote
pattern C_Propose_33 = Propose
pattern C_Guard_35 = Guard
check_Spend_23 :: T_Tag_21
check_Spend_23 = Spend
check_Mint_25 :: T_Tag_21
check_Mint_25 = Mint
check_Cert_27 :: T_Tag_21
check_Cert_27 = Cert
check_Reward_29 :: T_Tag_21
check_Reward_29 = Reward
check_Vote_31 :: T_Tag_21
check_Vote_31 = Vote
check_Propose_33 :: T_Tag_21
check_Propose_33 = Propose
check_Guard_35 :: T_Tag_21
check_Guard_35 = Guard
cover_Tag_21 :: Tag -> ()
cover_Tag_21 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Reward -> ()
      Vote -> ()
      Propose -> ()
      Guard -> ()
-- Ledger.Dijkstra.Foreign.Transaction.Conv-HSPlutusScript
d_Conv'45'HSPlutusScript_22 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'HSPlutusScript_22
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.C_MkHSPlutusScript_378 v1 v2 v3
                -> coe
                     C_MkHSPlutusScript_3909 (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_12
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_17
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_14
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_19
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_16
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_21
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_18
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_23
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_17
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_12
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_19
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_14
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_21
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_16
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_23
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_18
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSPlutusScript_3909 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.C_MkHSPlutusScript_378
                     (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_12
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_17
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_14
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_19
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_16
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_21
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_18
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_23
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_17
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_12
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_19
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_14
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_21
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_16
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_23
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_18
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxWitnesses
d_HsTy'45'TxWitnesses_24 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxWitnesses_24 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxWitnesses
d_Conv'45'TxWitnesses_26 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxWitnesses_26
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3850 v1 v2 v3 v4
                -> coe
                     C_MkTxWitnesses_4929
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                 (coe d_Conv'45'HSNativeScript_18)
                                 (coe d_Conv'45'HSPlutusScript_22)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           v3))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe d_Conv'45'Tag_10)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxWitnesses_4929 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3850
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_DecEq'45'HSVKey_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40))
                                (coe
                                   (\ v6 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v5))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                 (coe d_Conv'45'HSNativeScript_18)
                                 (coe d_Conv'45'HSPlutusScript_22)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v3))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                      (coe d_Conv'45'Tag_10)
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   (\ v6 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                           (coe
                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v5))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v4))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub
d_TxBodySub_28 = ()
data T_TxBodySub_28
  = C_constructor_106 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe Integer) Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
                      (Maybe Integer) (Maybe Integer) Integer (Maybe Integer)
                      [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txIns
d_txIns_68 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_68 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.referenceInputs
d_referenceInputs_70 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_70 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txOuts
d_txOuts_72 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_72 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txId
d_txId_74 :: T_TxBodySub_28 -> Integer
d_txId_74 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txCerts
d_txCerts_76 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_txCerts_76 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txWithdrawals
d_txWithdrawals_78 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_78 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txVldt
d_txVldt_80 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_80 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txADhash
d_txADhash_82 :: T_TxBodySub_28 -> Maybe Integer
d_txADhash_82 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txDonation
d_txDonation_84 :: T_TxBodySub_28 -> Integer
d_txDonation_84 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txGovVotes
d_txGovVotes_86 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_86 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txGovProposals
d_txGovProposals_88 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_txGovProposals_88 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txNetworkId
d_txNetworkId_90 :: T_TxBodySub_28 -> Maybe Integer
d_txNetworkId_90 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.currentTreasury
d_currentTreasury_92 :: T_TxBodySub_28 -> Maybe Integer
d_currentTreasury_92 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.mint
d_mint_94 :: T_TxBodySub_28 -> Integer
d_mint_94 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.scriptIntegrityHash
d_scriptIntegrityHash_96 :: T_TxBodySub_28 -> Maybe Integer
d_scriptIntegrityHash_96 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txGuards
d_txGuards_98 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_98 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_100 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_100 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txDirectDeposits
d_txDirectDeposits_102 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_102 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub.txBalanceIntervals
d_txBalanceIntervals_104 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_104 v0
  = case coe v0 of
      C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.convTxBodySub
d_convTxBodySub_108 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_convTxBodySub_108
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_106
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3784
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3786
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3790
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3792
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3794
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3798
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3800
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3802
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3804
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3806
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3808
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3810
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3812
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3814
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3816
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3820
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3822
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3824
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3826
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3830
              (coe d_txIns_68 (coe v0)) (coe d_referenceInputs_70 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe d_txOuts_72 (coe v0)) (coe d_txId_74 (coe v0))
              (coe d_txCerts_76 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe d_txWithdrawals_78 (coe v0)) (coe d_txVldt_80 (coe v0))
              (coe d_txADhash_82 (coe v0)) (coe d_txDonation_84 (coe v0))
              (coe d_txGovVotes_86 (coe v0)) (coe d_txGovProposals_88 (coe v0))
              (coe d_txNetworkId_90 (coe v0)) (coe d_currentTreasury_92 (coe v0))
              (coe d_mint_94 (coe v0)) (coe d_scriptIntegrityHash_96 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe d_txGuards_98 (coe v0))
              (coe d_txRequiredTopLevelGuards_100 (coe v0))
              (coe d_txDirectDeposits_102 (coe v0))
              (coe d_txBalanceIntervals_104 (coe v0))))
-- Ledger.Dijkstra.Foreign.Transaction.NativeScript
d_NativeScript_167 = ()
type T_NativeScript_167 = NativeScript
pattern C_RequireAllOf_169 a0 = RequireAllOf a0
pattern C_RequireAnyOf_215 a0 = RequireAnyOf a0
pattern C_RequireMOf_261 a0 a1 = RequireMOf a0 a1
pattern C_RequireSig_321 a0 = RequireSig a0
pattern C_RequireTimeStart_347 a0 = RequireTimeStart a0
pattern C_RequireTimeExpire_385 a0 = RequireTimeExpire a0
pattern C_RequireGuard_423 a0 = RequireGuard a0
check_RequireAllOf_169 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_NativeScript_167 ->
  T_NativeScript_167
check_RequireAllOf_169 = RequireAllOf
check_RequireAnyOf_215 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_NativeScript_167 ->
  T_NativeScript_167
check_RequireAnyOf_215 = RequireAnyOf
check_RequireMOf_261 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_NativeScript_167 ->
  T_NativeScript_167
check_RequireMOf_261 = RequireMOf
check_RequireSig_321 :: Integer -> T_NativeScript_167
check_RequireSig_321 = RequireSig
check_RequireTimeStart_347 :: Integer -> T_NativeScript_167
check_RequireTimeStart_347 = RequireTimeStart
check_RequireTimeExpire_385 :: Integer -> T_NativeScript_167
check_RequireTimeExpire_385 = RequireTimeExpire
check_RequireGuard_423 ::
  MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615 ->
  T_NativeScript_167
check_RequireGuard_423 = RequireGuard
cover_NativeScript_167 :: NativeScript -> ()
cover_NativeScript_167 x
  = case x of
      RequireAllOf _ -> ()
      RequireAnyOf _ -> ()
      RequireMOf _ _ -> ()
      RequireSig _ -> ()
      RequireTimeStart _ -> ()
      RequireTimeExpire _ -> ()
      RequireGuard _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction._.currentTreasury
d_currentTreasury_170 :: T_TxBodySub_28 -> Maybe Integer
d_currentTreasury_170 v0 = coe d_currentTreasury_92 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.mint
d_mint_172 :: T_TxBodySub_28 -> Integer
d_mint_172 v0 = coe d_mint_94 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.referenceInputs
d_referenceInputs_174 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_174 v0 = coe d_referenceInputs_70 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.scriptIntegrityHash
d_scriptIntegrityHash_176 :: T_TxBodySub_28 -> Maybe Integer
d_scriptIntegrityHash_176 v0
  = coe d_scriptIntegrityHash_96 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txADhash
d_txADhash_178 :: T_TxBodySub_28 -> Maybe Integer
d_txADhash_178 v0 = coe d_txADhash_82 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txBalanceIntervals
d_txBalanceIntervals_180 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_180 v0 = coe d_txBalanceIntervals_104 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txCerts
d_txCerts_182 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_txCerts_182 v0 = coe d_txCerts_76 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txDirectDeposits
d_txDirectDeposits_184 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_184 v0 = coe d_txDirectDeposits_102 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txDonation
d_txDonation_186 :: T_TxBodySub_28 -> Integer
d_txDonation_186 v0 = coe d_txDonation_84 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGovProposals
d_txGovProposals_188 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_txGovProposals_188 v0 = coe d_txGovProposals_88 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGovVotes
d_txGovVotes_190 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_190 v0 = coe d_txGovVotes_86 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGuards
d_txGuards_192 ::
  T_TxBodySub_28 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_192 v0 = coe d_txGuards_98 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txId
d_txId_194 :: T_TxBodySub_28 -> Integer
d_txId_194 v0 = coe d_txId_74 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txIns
d_txIns_196 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_196 v0 = coe d_txIns_68 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txNetworkId
d_txNetworkId_198 :: T_TxBodySub_28 -> Maybe Integer
d_txNetworkId_198 v0 = coe d_txNetworkId_90 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txOuts
d_txOuts_200 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_200 v0 = coe d_txOuts_72 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_202 ::
  T_TxBodySub_28 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_202 v0
  = coe d_txRequiredTopLevelGuards_100 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txVldt
d_txVldt_204 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_204 v0 = coe d_txVldt_80 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txWithdrawals
d_txWithdrawals_206 ::
  T_TxBodySub_28 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_206 v0 = coe d_txWithdrawals_78 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxBodySub
d_HsTy'45'TxBodySub_208 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxBodySub_208 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxBodySub
d_Conv'45'TxBodySub_210 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxBodySub_210
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_106 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
                -> coe
                     C_MkTxBodySub_16003
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v1))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                (coe d_Conv'45'HSNativeScript_18)
                                                (coe d_Conv'45'HSPlutusScript_22))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe v4)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                        v5)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe
                              (\ v20 ->
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                   (coe
                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (coe v7)))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v8)
                     (coe v9)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v10)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                        v11)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v13)
                     (coe v14)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v15)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                           v16))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           v17))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v18))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v19))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxBodySub_16003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
                -> coe
                     C_constructor_106
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v20 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                (coe
                                   (\ v21 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                              (coe
                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                       (coe d_Conv'45'HSNativeScript_18)
                                                       (coe d_Conv'45'HSPlutusScript_22))))))))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v20))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v3))))
                     (coe v4)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                        v5)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v20
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v21
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v20) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                       (coe v21)))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                          (coe v21))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                       (coe v21))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v20 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                (coe
                                   (\ v21 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v20))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v6))))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           (\ v20 ->
                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                (coe
                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                   (coe
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v7))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v8)
                     (coe v9)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v10)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                        v11)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v13)
                     (coe v14)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v15)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                              (coe v16))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                              (coe v17))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v20
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v21
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v20) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                       (coe v21)))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                          (coe v21))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                       (coe v21))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v20 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                (coe
                                   (\ v21 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v20))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v18))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v20
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v21
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v20) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                          (coe v21))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                       (coe v21))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v20 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                (coe
                                   (\ v21 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v20))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v19))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxBody-TxLevelSub
d_HsTy'45'TxBody'45'TxLevelSub_212 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxBody'45'TxLevelSub_212 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxBody-TxLevelSub
d_Conv'45'TxBody'45'TxLevelSub_214 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxBody'45'TxLevelSub_214
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_convTxBodySub_108) (coe d_Conv'45'TxBodySub_210)
-- Ledger.Dijkstra.Foreign.Transaction.TxSub
d_TxSub_216 = ()
data T_TxSub_216
  = C_constructor_234 T_TxBodySub_28
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3712
                      Integer (Maybe Integer)
-- Ledger.Dijkstra.Foreign.Transaction.TxSub.txBody
d_txBody_226 :: T_TxSub_216 -> T_TxBodySub_28
d_txBody_226 v0
  = case coe v0 of
      C_constructor_234 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxSub.txWitnesses
d_txWitnesses_228 ::
  T_TxSub_216 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3712
d_txWitnesses_228 v0
  = case coe v0 of
      C_constructor_234 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxSub.txSize
d_txSize_230 :: T_TxSub_216 -> Integer
d_txSize_230 v0
  = case coe v0 of
      C_constructor_234 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxSub.txAuxData
d_txAuxData_232 :: T_TxSub_216 -> Maybe Integer
d_txAuxData_232 v0
  = case coe v0 of
      C_constructor_234 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.convTxSub
d_convTxSub_236 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_convTxSub_236
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_234
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                    (coe
                       (\ v1 ->
                          coe
                            C_constructor_106
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3784
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3786
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3790
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3792
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3794
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3798
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3800
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3802
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3804
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3806
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3808
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3810
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3812
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3814
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3816
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3820
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3822
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3824
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3826
                               (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3830
                            (coe d_txIns_68 (coe v1)) (coe d_referenceInputs_70 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txOuts_72 (coe v1)) (coe d_txId_74 (coe v1))
                            (coe d_txCerts_76 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txWithdrawals_78 (coe v1)) (coe d_txVldt_80 (coe v1))
                            (coe d_txADhash_82 (coe v1)) (coe d_txDonation_84 (coe v1))
                            (coe d_txGovVotes_86 (coe v1)) (coe d_txGovProposals_88 (coe v1))
                            (coe d_txNetworkId_90 (coe v1)) (coe d_currentTreasury_92 (coe v1))
                            (coe d_mint_94 (coe v1)) (coe d_scriptIntegrityHash_96 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txGuards_98 (coe v1))
                            (coe d_txRequiredTopLevelGuards_100 (coe v1))
                            (coe d_txDirectDeposits_102 (coe v1))
                            (coe d_txBalanceIntervals_104 (coe v1)))))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3726
                    (coe v0)))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3728
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3730
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3734
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3736
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                    (coe
                       (\ v1 ->
                          coe
                            C_constructor_106
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3784
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3786
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3790
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3792
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3794
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3798
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3800
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3802
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3804
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3806
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3808
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3810
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3812
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3814
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3816
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3820
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3822
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3824
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3826
                               (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3830
                            (coe d_txIns_68 (coe v1)) (coe d_referenceInputs_70 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txOuts_72 (coe v1)) (coe d_txId_74 (coe v1))
                            (coe d_txCerts_76 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txWithdrawals_78 (coe v1)) (coe d_txVldt_80 (coe v1))
                            (coe d_txADhash_82 (coe v1)) (coe d_txDonation_84 (coe v1))
                            (coe d_txGovVotes_86 (coe v1)) (coe d_txGovProposals_88 (coe v1))
                            (coe d_txNetworkId_90 (coe v1)) (coe d_currentTreasury_92 (coe v1))
                            (coe d_mint_94 (coe v1)) (coe d_scriptIntegrityHash_96 (coe v1))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe d_txGuards_98 (coe v1))
                            (coe d_txRequiredTopLevelGuards_100 (coe v1))
                            (coe d_txDirectDeposits_102 (coe v1))
                            (coe d_txBalanceIntervals_104 (coe v1)))))
                 (d_txBody_226 (coe v0)))
              (coe d_txWitnesses_228 (coe v0)) (coe d_txSize_230 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe d_txAuxData_232 (coe v0))))
-- Ledger.Dijkstra.Foreign.Transaction._.txAuxData
d_txAuxData_258 :: T_TxSub_216 -> Maybe Integer
d_txAuxData_258 v0 = coe d_txAuxData_232 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txBody
d_txBody_260 :: T_TxSub_216 -> T_TxBodySub_28
d_txBody_260 v0 = coe d_txBody_226 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txSize
d_txSize_262 :: T_TxSub_216 -> Integer
d_txSize_262 v0 = coe d_txSize_230 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txWitnesses
d_txWitnesses_264 ::
  T_TxSub_216 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3712
d_txWitnesses_264 v0 = coe d_txWitnesses_228 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxSub
d_HsTy'45'TxSub_266 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxSub_266 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxSub
d_Conv'45'TxSub_268 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxSub_268
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_234 v1 v2 v3 v4
                -> coe
                     C_MkTxSub_113349
                     (coe
                        C_MkTxBodySub_16003
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_txIns_68 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_referenceInputs_70 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                   (coe d_Conv'45'HSNativeScript_18)
                                                   (coe d_Conv'45'HSPlutusScript_22))))))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txOuts_72 (coe v1)))))
                        (coe d_txId_74 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                           (d_txCerts_76 (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txWithdrawals_78 (coe v1)))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 (\ v5 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe d_txVldt_80 (coe v1))))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_txADhash_82 (coe v1)))
                        (coe d_txDonation_84 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                           (d_txGovVotes_86 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                           (d_txGovProposals_88 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_txNetworkId_90 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_currentTreasury_92 (coe v1)))
                        (coe d_mint_94 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_scriptIntegrityHash_96 (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                              (d_txGuards_98 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (d_txRequiredTopLevelGuards_100 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txDirectDeposits_102 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txBalanceIntervals_104 (coe v1))))))
                     (coe
                        C_MkTxWitnesses_4929
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3840
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                    (coe d_Conv'45'HSNativeScript_18)
                                    (coe d_Conv'45'HSPlutusScript_22)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3842
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3844
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe d_Conv'45'Tag_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3846
                                    (coe v2))))))
                     (coe v3)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxSub_113349 v1 v2 v3 v4
                -> coe
                     C_constructor_234
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_constructor_106 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
                                     -> coe
                                          C_MkTxBodySub_16003
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v6))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                     (coe
                                                                        d_Conv'45'HSNativeScript_18)
                                                                     (coe
                                                                        d_Conv'45'HSPlutusScript_22))))))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                          (coe v9)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                                             v10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v11))))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v25 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v12)))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v13)
                                          (coe v14)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v15)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                                             v16)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v17)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v18)
                                          (coe v19)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                v21))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                v22))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v23))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v24))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkTxBodySub_16003 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
                                     -> coe
                                          C_constructor_106
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v25 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v26 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                   (coe
                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                      (coe
                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                            (coe
                                                                               d_Conv'45'HSNativeScript_18)
                                                                            (coe
                                                                               d_Conv'45'HSPlutusScript_22))))))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v25))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v8))))
                                          (coe v9)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                                             v10)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v25
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v26
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v25) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                            (coe v26)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                               (coe v26))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                            (coe v26))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v25 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                     (coe
                                                        (\ v26 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v25))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v11))))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                (\ v25 ->
                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v12))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v13)
                                          (coe v14)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v15)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                                             v16)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v17)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v18)
                                          (coe v19)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v21))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v22))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v25
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v26
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v25) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                            (coe v26)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                               (coe v26))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                            (coe v26))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v25 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                     (coe
                                                        (\ v26 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v25))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v23))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v25
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v26
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v25) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                               (coe v26))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                            (coe v26))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v25 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                     (coe
                                                        (\ v26 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v25))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v24))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3850 v6 v7 v8 v9
                                     -> coe
                                          C_MkTxWitnesses_4929
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe d_Conv'45'HSNativeScript_18)
                                                      (coe d_Conv'45'HSPlutusScript_22)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe d_Conv'45'Tag_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkTxWitnesses_4929 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3850
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_DecEq'45'HSVKey_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40))
                                                     (coe
                                                        (\ v11 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe d_Conv'45'HSNativeScript_18)
                                                      (coe d_Conv'45'HSPlutusScript_22)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe d_Conv'45'Tag_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        (\ v11 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-Tx-TxLevelSub
d_HsTy'45'Tx'45'TxLevelSub_270 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Tx'45'TxLevelSub_270 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-Tx-TxLevelSub
d_Conv'45'Tx'45'TxLevelSub_272 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Tx'45'TxLevelSub_272
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_convTxSub_236) (coe d_Conv'45'TxSub_268)
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop
d_TxBodyTop_274 = ()
data T_TxBodyTop_274
  = C_constructor_364 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
                      Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe Integer) Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
                      (Maybe Integer) (Maybe Integer) Integer (Maybe Integer)
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706]
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txIns
d_txIns_320 ::
  T_TxBodyTop_274 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_320 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.referenceInputs
d_referenceInputs_322 ::
  T_TxBodyTop_274 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_322 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.collateralInputs
d_collateralInputs_324 ::
  T_TxBodyTop_274 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_324 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txOuts
d_txOuts_326 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_326 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txId
d_txId_328 :: T_TxBodyTop_274 -> Integer
d_txId_328 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txCerts
d_txCerts_330 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_txCerts_330 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txFee
d_txFee_332 :: T_TxBodyTop_274 -> Integer
d_txFee_332 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txWithdrawals
d_txWithdrawals_334 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_334 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txVldt
d_txVldt_336 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_336 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txADhash
d_txADhash_338 :: T_TxBodyTop_274 -> Maybe Integer
d_txADhash_338 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txDonation
d_txDonation_340 :: T_TxBodyTop_274 -> Integer
d_txDonation_340 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txGovVotes
d_txGovVotes_342 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_342 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txGovProposals
d_txGovProposals_344 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_txGovProposals_344 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txNetworkId
d_txNetworkId_346 :: T_TxBodyTop_274 -> Maybe Integer
d_txNetworkId_346 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.currentTreasury
d_currentTreasury_348 :: T_TxBodyTop_274 -> Maybe Integer
d_currentTreasury_348 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.mint
d_mint_350 :: T_TxBodyTop_274 -> Integer
d_mint_350 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.scriptIntegrityHash
d_scriptIntegrityHash_352 :: T_TxBodyTop_274 -> Maybe Integer
d_scriptIntegrityHash_352 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txSubTransactions
d_txSubTransactions_354 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706]
d_txSubTransactions_354 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_356 ::
  T_TxBodyTop_274 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_356 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txGuards
d_txGuards_358 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_358 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txDirectDeposits
d_txDirectDeposits_360 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_360 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop.txBalanceIntervals
d_txBalanceIntervals_362 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_362 v0
  = case coe v0 of
      C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.convTxBodyTop
d_convTxBodyTop_366 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_convTxBodyTop_366
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_364
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3784
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3786
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3788
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3790
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3792
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3794
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3796
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3798
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3800
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3802
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3804
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3806
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3808
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3810
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3812
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3814
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3816
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3818
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3822
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3820
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3824
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3826
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3830
              (coe d_txIns_320 (coe v0)) (coe d_referenceInputs_322 (coe v0))
              (coe d_collateralInputs_324 (coe v0)) (coe d_txOuts_326 (coe v0))
              (coe d_txId_328 (coe v0)) (coe d_txCerts_330 (coe v0))
              (coe d_txFee_332 (coe v0)) (coe d_txWithdrawals_334 (coe v0))
              (coe d_txVldt_336 (coe v0)) (coe d_txADhash_338 (coe v0))
              (coe d_txDonation_340 (coe v0)) (coe d_txGovVotes_342 (coe v0))
              (coe d_txGovProposals_344 (coe v0))
              (coe d_txNetworkId_346 (coe v0))
              (coe d_currentTreasury_348 (coe v0)) (coe d_mint_350 (coe v0))
              (coe d_scriptIntegrityHash_352 (coe v0))
              (coe d_txSubTransactions_354 (coe v0))
              (coe d_txGuards_358 (coe v0))
              (coe d_txRequiredTopLevelGuards_356 (coe v0))
              (coe d_txDirectDeposits_360 (coe v0))
              (coe d_txBalanceIntervals_362 (coe v0))))
-- Ledger.Dijkstra.Foreign.Transaction._.collateralInputs
d_collateralInputs_428 ::
  T_TxBodyTop_274 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_428 v0 = coe d_collateralInputs_324 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.currentTreasury
d_currentTreasury_430 :: T_TxBodyTop_274 -> Maybe Integer
d_currentTreasury_430 v0 = coe d_currentTreasury_348 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.mint
d_mint_432 :: T_TxBodyTop_274 -> Integer
d_mint_432 v0 = coe d_mint_350 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.referenceInputs
d_referenceInputs_434 ::
  T_TxBodyTop_274 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_434 v0 = coe d_referenceInputs_322 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.scriptIntegrityHash
d_scriptIntegrityHash_436 :: T_TxBodyTop_274 -> Maybe Integer
d_scriptIntegrityHash_436 v0
  = coe d_scriptIntegrityHash_352 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txADhash
d_txADhash_438 :: T_TxBodyTop_274 -> Maybe Integer
d_txADhash_438 v0 = coe d_txADhash_338 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txBalanceIntervals
d_txBalanceIntervals_440 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_440 v0 = coe d_txBalanceIntervals_362 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txCerts
d_txCerts_442 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_txCerts_442 v0 = coe d_txCerts_330 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txDirectDeposits
d_txDirectDeposits_444 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_444 v0 = coe d_txDirectDeposits_360 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txDonation
d_txDonation_446 :: T_TxBodyTop_274 -> Integer
d_txDonation_446 v0 = coe d_txDonation_340 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txFee
d_txFee_448 :: T_TxBodyTop_274 -> Integer
d_txFee_448 v0 = coe d_txFee_332 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGovProposals
d_txGovProposals_450 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_txGovProposals_450 v0 = coe d_txGovProposals_344 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGovVotes
d_txGovVotes_452 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_452 v0 = coe d_txGovVotes_342 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txGuards
d_txGuards_454 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_454 v0 = coe d_txGuards_358 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txId
d_txId_456 :: T_TxBodyTop_274 -> Integer
d_txId_456 v0 = coe d_txId_328 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txIns
d_txIns_458 ::
  T_TxBodyTop_274 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_458 v0 = coe d_txIns_320 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txNetworkId
d_txNetworkId_460 :: T_TxBodyTop_274 -> Maybe Integer
d_txNetworkId_460 v0 = coe d_txNetworkId_346 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txOuts
d_txOuts_462 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_462 v0 = coe d_txOuts_326 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_464 ::
  T_TxBodyTop_274 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_464 v0
  = coe d_txRequiredTopLevelGuards_356 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txSubTransactions
d_txSubTransactions_466 ::
  T_TxBodyTop_274 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706]
d_txSubTransactions_466 v0 = coe d_txSubTransactions_354 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txVldt
d_txVldt_468 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_468 v0 = coe d_txVldt_336 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txWithdrawals
d_txWithdrawals_470 ::
  T_TxBodyTop_274 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_470 v0 = coe d_txWithdrawals_334 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxBodyTop
d_HsTy'45'TxBodyTop_472 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxBodyTop_472 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxBodyTop
d_Conv'45'TxBodyTop_474 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxBodyTop_474
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_364 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
                -> coe
                     C_MkTxBodyTop_118761
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v1))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v3))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                (coe d_Conv'45'HSNativeScript_18)
                                                (coe d_Conv'45'HSPlutusScript_22))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                        v6)
                     (coe v7)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe
                              (\ v23 ->
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                   (coe
                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (coe v9)))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v10)
                     (coe v11)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                        v13)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v14)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v15)
                     (coe v16)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v17)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe d_Conv'45'Tx'45'TxLevelSub_272))
                        v18)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           v19))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                           v20))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v21))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v22))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxBodyTop_118761 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
                -> coe
                     C_constructor_364
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v3))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v23 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                (coe
                                   (\ v24 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                           (coe
                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                              (coe
                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                       (coe d_Conv'45'HSNativeScript_18)
                                                       (coe d_Conv'45'HSPlutusScript_22))))))))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v23))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                        v6)
                     (coe v7)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v23
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v24
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v23) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                       (coe v24)))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                          (coe v24))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                       (coe v24))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v23 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                (coe
                                   (\ v24 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v23))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v8))))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           (\ v23 ->
                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                (coe
                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                   (coe
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v9))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v10)
                     (coe v11)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                        v13)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v14)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v15)
                     (coe v16)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v17)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe d_Conv'45'Tx'45'TxLevelSub_272))
                        v18)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                              (coe v19))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                              (coe v20))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v23
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v24
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v23) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                       (coe v24)))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                          (coe v24))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                       (coe v24))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v23 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                (coe
                                   (\ v24 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v23))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v21))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v23
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v24
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                      (coe v23) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                          (coe v24))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                       (coe v24))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v23 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                (coe
                                   (\ v24 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v23))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v22))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxBody-TxLevelTop
d_HsTy'45'TxBody'45'TxLevelTop_476 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxBody'45'TxLevelTop_476 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxBody-TxLevelTop
d_Conv'45'TxBody'45'TxLevelTop_478 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxBody'45'TxLevelTop_478
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_convTxBodyTop_366) (coe d_Conv'45'TxBodyTop_474)
-- Ledger.Dijkstra.Foreign.Transaction.TxTop
d_TxTop_480 = ()
data T_TxTop_480
  = C_constructor_502 T_TxBodyTop_274
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3712
                      Integer Bool (Maybe Integer)
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.txBody
d_txBody_492 :: T_TxTop_480 -> T_TxBodyTop_274
d_txBody_492 v0
  = case coe v0 of
      C_constructor_502 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.txWitnesses
d_txWitnesses_494 ::
  T_TxTop_480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3712
d_txWitnesses_494 v0
  = case coe v0 of
      C_constructor_502 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.txSize
d_txSize_496 :: T_TxTop_480 -> Integer
d_txSize_496 v0
  = case coe v0 of
      C_constructor_502 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.isValid
d_isValid_498 :: T_TxTop_480 -> Bool
d_isValid_498 v0
  = case coe v0 of
      C_constructor_502 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.TxTop.txAuxData
d_txAuxData_500 :: T_TxTop_480 -> Maybe Integer
d_txAuxData_500 v0
  = case coe v0 of
      C_constructor_502 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Transaction.convTxTop
d_convTxTop_504 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_convTxTop_504
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_502
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                    (coe
                       (\ v1 ->
                          coe
                            C_constructor_364
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3784
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3786
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3788
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3790
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3792
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3794
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3796
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3798
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3800
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3802
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3804
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3806
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3808
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3810
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3812
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3814
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3816
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3818
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3822
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3820
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3824
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3826
                               (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3830
                            (coe d_txIns_320 (coe v1)) (coe d_referenceInputs_322 (coe v1))
                            (coe d_collateralInputs_324 (coe v1)) (coe d_txOuts_326 (coe v1))
                            (coe d_txId_328 (coe v1)) (coe d_txCerts_330 (coe v1))
                            (coe d_txFee_332 (coe v1)) (coe d_txWithdrawals_334 (coe v1))
                            (coe d_txVldt_336 (coe v1)) (coe d_txADhash_338 (coe v1))
                            (coe d_txDonation_340 (coe v1)) (coe d_txGovVotes_342 (coe v1))
                            (coe d_txGovProposals_344 (coe v1))
                            (coe d_txNetworkId_346 (coe v1))
                            (coe d_currentTreasury_348 (coe v1)) (coe d_mint_350 (coe v1))
                            (coe d_scriptIntegrityHash_352 (coe v1))
                            (coe d_txSubTransactions_354 (coe v1))
                            (coe d_txGuards_358 (coe v1))
                            (coe d_txRequiredTopLevelGuards_356 (coe v1))
                            (coe d_txDirectDeposits_360 (coe v1))
                            (coe d_txBalanceIntervals_362 (coe v1)))))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3726
                    (coe v0)))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3728
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3730
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3732
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3734
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3736
              (coe
                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                    (coe
                       (\ v1 ->
                          coe
                            C_constructor_364
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3784
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3786
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3788
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3790
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3792
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3794
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3796
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3798
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3800
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3802
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3804
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3806
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3808
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3810
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3812
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3814
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3816
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3818
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3822
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3820
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3824
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3826
                               (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3830
                            (coe d_txIns_320 (coe v1)) (coe d_referenceInputs_322 (coe v1))
                            (coe d_collateralInputs_324 (coe v1)) (coe d_txOuts_326 (coe v1))
                            (coe d_txId_328 (coe v1)) (coe d_txCerts_330 (coe v1))
                            (coe d_txFee_332 (coe v1)) (coe d_txWithdrawals_334 (coe v1))
                            (coe d_txVldt_336 (coe v1)) (coe d_txADhash_338 (coe v1))
                            (coe d_txDonation_340 (coe v1)) (coe d_txGovVotes_342 (coe v1))
                            (coe d_txGovProposals_344 (coe v1))
                            (coe d_txNetworkId_346 (coe v1))
                            (coe d_currentTreasury_348 (coe v1)) (coe d_mint_350 (coe v1))
                            (coe d_scriptIntegrityHash_352 (coe v1))
                            (coe d_txSubTransactions_354 (coe v1))
                            (coe d_txGuards_358 (coe v1))
                            (coe d_txRequiredTopLevelGuards_356 (coe v1))
                            (coe d_txDirectDeposits_360 (coe v1))
                            (coe d_txBalanceIntervals_362 (coe v1)))))
                 (d_txBody_492 (coe v0)))
              (coe d_txWitnesses_494 (coe v0)) (coe d_txSize_496 (coe v0))
              (coe d_isValid_498 (coe v0)) (coe d_txAuxData_500 (coe v0))))
-- Ledger.Dijkstra.Foreign.Transaction._.isValid
d_isValid_526 :: T_TxTop_480 -> Bool
d_isValid_526 v0 = coe d_isValid_498 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txAuxData
d_txAuxData_528 :: T_TxTop_480 -> Maybe Integer
d_txAuxData_528 v0 = coe d_txAuxData_500 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txBody
d_txBody_530 :: T_TxTop_480 -> T_TxBodyTop_274
d_txBody_530 v0 = coe d_txBody_492 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txSize
d_txSize_532 :: T_TxTop_480 -> Integer
d_txSize_532 v0 = coe d_txSize_496 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction._.txWitnesses
d_txWitnesses_534 ::
  T_TxTop_480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3712
d_txWitnesses_534 v0 = coe d_txWitnesses_494 (coe v0)
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-TxTop
d_HsTy'45'TxTop_536 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'TxTop_536 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-TxTop
d_Conv'45'TxTop_538 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'TxTop_538
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_502 v1 v2 v3 v4 v5
                -> coe
                     C_MkTxTop_243377
                     (coe
                        C_MkTxBodyTop_118761
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_txIns_320 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_referenceInputs_322 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (d_collateralInputs_324 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                   (coe d_Conv'45'HSNativeScript_18)
                                                   (coe d_Conv'45'HSPlutusScript_22))))))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txOuts_326 (coe v1)))))
                        (coe d_txId_328 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                           (d_txCerts_330 (coe v1)))
                        (coe d_txFee_332 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txWithdrawals_334 (coe v1)))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe d_txVldt_336 (coe v1))))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_txADhash_338 (coe v1)))
                        (coe d_txDonation_340 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                           (d_txGovVotes_342 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                           (d_txGovProposals_344 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_txNetworkId_346 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_currentTreasury_348 (coe v1)))
                        (coe d_mint_350 (coe v1))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (d_scriptIntegrityHash_352 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe d_Conv'45'Tx'45'TxLevelSub_272))
                           (d_txSubTransactions_354 (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (d_txRequiredTopLevelGuards_356 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                              (d_txGuards_358 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txDirectDeposits_360 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe d_txBalanceIntervals_362 (coe v1))))))
                     (coe
                        C_MkTxWitnesses_4929
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3840
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                    (coe d_Conv'45'HSNativeScript_18)
                                    (coe d_Conv'45'HSPlutusScript_22)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3842
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3844
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe d_Conv'45'Tag_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3846
                                    (coe v2))))))
                     (coe v3) (coe v4)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxTop_243377 v1 v2 v3 v4 v5
                -> coe
                     C_constructor_502
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_constructor_364 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                     -> coe
                                          C_MkTxBodyTop_118761
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                     (coe
                                                                        d_Conv'45'HSNativeScript_18)
                                                                     (coe
                                                                        d_Conv'45'HSPlutusScript_22))))))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v10))))
                                          (coe v11)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                                             v12)
                                          (coe v13)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v14))))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v29 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v15)))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v16)
                                          (coe v17)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v18)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v21)
                                          (coe v22)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v23)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe d_Conv'45'Tx'45'TxLevelSub_272))
                                             v24)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                v25))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                v26))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v27))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v28))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkTxBodyTop_118761 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                     -> coe
                                          C_constructor_364
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v29 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v30 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                   (coe
                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                      (coe
                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                            (coe
                                                                               d_Conv'45'HSNativeScript_18)
                                                                            (coe
                                                                               d_Conv'45'HSPlutusScript_22))))))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v29))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v10))))
                                          (coe v11)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
                                             v12)
                                          (coe v13)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v29
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v30
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v29) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                            (coe v30)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                               (coe v30))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                            (coe v30))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v29 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                     (coe
                                                        (\ v30 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v29))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v14))))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                (\ v29 ->
                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v15))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v16)
                                          (coe v17)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v18)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovProposal_284))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v21)
                                          (coe v22)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v23)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe d_Conv'45'Tx'45'TxLevelSub_272))
                                             v24)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v25))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v26))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v29
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v30
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v29) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                            (coe v30)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                               (coe v30))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                            (coe v30))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v29 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                     (coe
                                                        (\ v30 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v29))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v27))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v29
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v30
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                                                           (coe v29) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                               (coe v30))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                            (coe v30))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v29 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                     (coe
                                                        (\ v30 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.d_Conv'45'BalanceInterval_14)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v29))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v28))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3850 v7 v8 v9 v10
                                     -> coe
                                          C_MkTxWitnesses_4929
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe d_Conv'45'HSNativeScript_18)
                                                      (coe d_Conv'45'HSPlutusScript_22)))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe d_Conv'45'Tag_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkTxWitnesses_4929 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3850
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_DecEq'45'HSVKey_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40))
                                                     (coe
                                                        (\ v12 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v11))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                      (coe d_Conv'45'HSNativeScript_18)
                                                      (coe d_Conv'45'HSPlutusScript_22)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe d_Conv'45'Tag_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        (\ v12 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                (coe
                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v11))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3) (coe v4)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HsTy-Tx-TxLevelTop
d_HsTy'45'Tx'45'TxLevelTop_540 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Tx'45'TxLevelTop_540 = erased
-- Ledger.Dijkstra.Foreign.Transaction.Conv-Tx-TxLevelTop
d_Conv'45'Tx'45'TxLevelTop_542 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Tx'45'TxLevelTop_542
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_convTxTop_504) (coe d_Conv'45'TxTop_538)
-- Ledger.Dijkstra.Foreign.Transaction..extendedlambda
d_'46'extendedlambda_1303 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_'46'extendedlambda_1303
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireAllOf_328 v1
                -> coe
                     C_RequireAllOf_169
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe d_Conv'45'NativeScript_14))
                        v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireAnyOf_330 v1
                -> coe
                     C_RequireAnyOf_215
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe d_Conv'45'NativeScript_14))
                        v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireMOf_332 v1 v2
                -> coe
                     C_RequireMOf_261 (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe d_Conv'45'NativeScript_14))
                        v2)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireSig_334 v1
                -> coe C_RequireSig_321 (coe v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireTimeStart_336 v1
                -> coe C_RequireTimeStart_347 (coe v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireTimeExpire_338 v1
                -> coe C_RequireTimeExpire_385 (coe v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireGuard_340 v1
                -> coe
                     C_RequireGuard_423
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_RequireAllOf_169 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireAllOf_328
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe d_Conv'45'NativeScript_14))
                        v1)
              C_RequireAnyOf_215 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireAnyOf_330
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe d_Conv'45'NativeScript_14))
                        v1)
              C_RequireMOf_261 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireMOf_332
                     (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe d_Conv'45'NativeScript_14))
                        v2)
              C_RequireSig_321 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireSig_334
                     (coe v1)
              C_RequireTimeStart_347 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireTimeStart_336
                     (coe v1)
              C_RequireTimeExpire_385 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireTimeExpire_338
                     (coe v1)
              C_RequireGuard_423 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.C_RequireGuard_340
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Transaction.HSNativeScript
d_HSNativeScript_2881 = ()
type T_HSNativeScript_2881 = HSNativeScript
pattern C_HSNativeScript_2883 a0 a1 a2 = HSNativeScript a0 a1 a2
check_HSNativeScript_2883 ::
  T_NativeScript_167 -> Integer -> Integer -> T_HSNativeScript_2881
check_HSNativeScript_2883 = HSNativeScript
cover_HSNativeScript_2881 :: HSNativeScript -> ()
cover_HSNativeScript_2881 x
  = case x of
      HSNativeScript _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.HSPlutusScript
d_HSPlutusScript_3907 = ()
type T_HSPlutusScript_3907 = HSPlutusScript
pattern C_MkHSPlutusScript_3909 a0 a1 a2 = MkHSPlutusScript a0 a1 a2
check_MkHSPlutusScript_3909 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_15 ->
  T_HSPlutusScript_3907
check_MkHSPlutusScript_3909 = MkHSPlutusScript
cover_HSPlutusScript_3907 :: HSPlutusScript -> ()
cover_HSPlutusScript_3907 x
  = case x of
      MkHSPlutusScript _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxWitnesses
d_TxWitnesses_4927 = ()
type T_TxWitnesses_4927 = TxWitnesses
pattern C_MkTxWitnesses_4929 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_MkTxWitnesses_4929 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_8381
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () () T_HSNativeScript_2881 T_HSPlutusScript_3907) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Tag_21 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_4927
check_MkTxWitnesses_4929 = MkTxWitnesses
cover_TxWitnesses_4927 :: TxWitnesses -> ()
cover_TxWitnesses_4927 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxBodySub
d_TxBodySub_16001 = ()
type T_TxBodySub_16001 = TxBodySub
pattern C_MkTxBodySub_16003 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 = MkTxBodySub a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18
check_MkTxBodySub_16003 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1313
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_2737)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () T_HSNativeScript_2881 T_HSPlutusScript_3907))))) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_3773 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_3921
    Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_GovVote_5417 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.T_GovProposal_1393 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_3921
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.T_BalanceInterval_919 ->
  T_TxBodySub_16001
check_MkTxBodySub_16003 = MkTxBodySub
cover_TxBodySub_16001 :: TxBodySub -> ()
cover_TxBodySub_16001 x
  = case x of
      MkTxBodySub _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxSub
d_TxSub_113347 = ()
type T_TxSub_113347 = TxSub
pattern C_MkTxSub_113349 a0 a1 a2 a3 = MkTxSub a0 a1 a2 a3
check_MkTxSub_113349 ::
  T_TxBodySub_16001 ->
  T_TxWitnesses_4927 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_TxSub_113347
check_MkTxSub_113349 = MkTxSub
cover_TxSub_113347 :: TxSub -> ()
cover_TxSub_113347 x
  = case x of
      MkTxSub _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxBodyTop
d_TxBodyTop_118759 = ()
type T_TxBodyTop_118759 = TxBodyTop
pattern C_MkTxBodyTop_118761 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 = MkTxBodyTop a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21
check_MkTxBodyTop_118761 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1313
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_2737)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () T_HSNativeScript_2881 T_HSPlutusScript_3907))))) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_3773 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_3921
    Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_GovVote_5417 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.T_GovProposal_1393 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxSub_113347 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_3921
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Account.T_BalanceInterval_919 ->
  T_TxBodyTop_118759
check_MkTxBodyTop_118761 = MkTxBodyTop
cover_TxBodyTop_118759 :: TxBodyTop -> ()
cover_TxBodyTop_118759 x
  = case x of
      MkTxBodyTop _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Transaction.TxTop
d_TxTop_243375 = ()
type T_TxTop_243375 = TxTop
pattern C_MkTxTop_243377 a0 a1 a2 a3 a4 = MkTxTop a0 a1 a2 a3 a4
check_MkTxTop_243377 ::
  T_TxBodyTop_118759 ->
  T_TxWitnesses_4927 ->
  Integer ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_TxTop_243375
check_MkTxTop_243377 = MkTxTop
cover_TxTop_243375 :: TxTop -> ()
cover_TxTop_243375 x
  = case x of
      MkTxTop _ _ _ _ _ -> ()
