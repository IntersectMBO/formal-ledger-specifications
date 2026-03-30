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

module MAlonzo.Code.Ledger.Conway.Foreign.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data Tag = Spend  | Mint  | Cert  | Rewrd  | Vote  | Propose 
  deriving (Show, Eq, Generic)
data Timelock = RequireAllOf [MAlonzo.Code.Ledger.Conway.Foreign.Transaction.Timelock] | RequireAnyOf [MAlonzo.Code.Ledger.Conway.Foreign.Transaction.Timelock] | RequireMOf Integer [MAlonzo.Code.Ledger.Conway.Foreign.Transaction.Timelock] | RequireSig Integer | RequireTimeStart Integer | RequireTimeExpire Integer
  deriving (Show, Eq, Generic)
data HSTimelock = HSTimelock {timelock :: MAlonzo.Code.Ledger.Conway.Foreign.Transaction.Timelock, tlScriptHash :: Integer, tlScriptSize :: Integer}
 deriving (Show, Eq, Generic)
data HSPlutusScript = MkHSPlutusScript {psScriptHash :: Integer, psScriptSize :: Integer, psScriptLanguage :: MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.HSLanguage}
 deriving (Show, Eq, Generic)
data TxWitnesses = MkTxWitnesses {vkSigs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.HSVKey Integer), scripts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Either MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSPlutusScript)), txdats :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet Integer), txrdmrs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap (MAlonzo.Code.Ledger.Conway.Foreign.Transaction.Tag, Integer) (Integer, (Integer, Integer)))}
 deriving (Show, Eq, Generic)
data TxBody = MkTxBody {txIns :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), refInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), collateralInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txOuts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer ((Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSPlutusScript)))))), txId :: Integer, txCerts :: [MAlonzo.Code.Ledger.Conway.Foreign.Certs.DCert], txFee :: Integer, txWithdrawals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer), txVldt :: ((Maybe Integer), (Maybe Integer)), txADhash :: (Maybe Integer), txDonation :: Integer, txGovVotes :: [MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.GovVote], txGovProposals :: [MAlonzo.Code.Ledger.Conway.Foreign.Gov.GovProposal], txNetworkId :: (Maybe Integer), currentTreasury :: (Maybe Integer), mint :: Integer, reqSignerHashes :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet Integer), scriptIntegrityHash :: (Maybe Integer)}
 deriving (Show, Eq, Generic)
data Tx = MkTx {body :: MAlonzo.Code.Ledger.Conway.Foreign.Transaction.TxBody, wits :: MAlonzo.Code.Ledger.Conway.Foreign.Transaction.TxWitnesses, txsize :: Integer, isValid :: Bool, txAD :: (Maybe Integer)}
 deriving (Show, Eq, Generic)
type TxId = Integer
type Ix = Integer
type TxIn = (Integer, Integer)
type ExUnits = (Integer, Integer)
type P1Script = MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSTimelock
type P2Script = MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSPlutusScript
type Script = (Either MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSPlutusScript)
type Datum = Integer
type DataHash = Integer
type Value = Integer
type TxOut = ((Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.Transaction.HSPlutusScript)))))
type RdmrPtr = (MAlonzo.Code.Ledger.Conway.Foreign.Transaction.Tag, Integer)
type ScriptHash = Integer
type AuxiliaryData = Integer
type Withdrawals = (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer)
-- Ledger.Conway.Foreign.Transaction.HsTy-Tag
d_HsTy'45'Tag_8 :: MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Tag_8 = erased
-- Ledger.Conway.Foreign.Transaction.Conv-Tag
d_Conv'45'Tag_10 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Tag_10
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Spend_10
                -> coe C_Spend_17
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Mint_12
                -> coe C_Mint_19
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Cert_14
                -> coe C_Cert_21
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Rewrd_16
                -> coe C_Rewrd_23
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Vote_18
                -> coe C_Vote_25
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Propose_20
                -> coe C_Propose_27
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_17
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Spend_10
              C_Mint_19
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Mint_12
              C_Cert_21
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Cert_14
              C_Rewrd_23
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Rewrd_16
              C_Vote_25
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Vote_18
              C_Propose_27
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Propose_20
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Transaction.HsTy-Timelock
d_HsTy'45'Timelock_12 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Timelock_12 = erased
-- Ledger.Conway.Foreign.Transaction.Conv-Timelock
d_Conv'45'Timelock_14 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Timelock_14 = coe d_'46'extendedlambda_713
-- Ledger.Conway.Foreign.Transaction.Tag
d_Tag_15 = ()
type T_Tag_15 = Tag
pattern C_Spend_17 = Spend
pattern C_Mint_19 = Mint
pattern C_Cert_21 = Cert
pattern C_Rewrd_23 = Rewrd
pattern C_Vote_25 = Vote
pattern C_Propose_27 = Propose
check_Spend_17 :: T_Tag_15
check_Spend_17 = Spend
check_Mint_19 :: T_Tag_15
check_Mint_19 = Mint
check_Cert_21 :: T_Tag_15
check_Cert_21 = Cert
check_Rewrd_23 :: T_Tag_15
check_Rewrd_23 = Rewrd
check_Vote_25 :: T_Tag_15
check_Vote_25 = Vote
check_Propose_27 :: T_Tag_15
check_Propose_27 = Propose
cover_Tag_15 :: Tag -> ()
cover_Tag_15 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Conway.Foreign.Transaction.HsTy-HSTimelock
d_HsTy'45'HSTimelock_16 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSTimelock_16 = erased
-- Ledger.Conway.Foreign.Transaction.Conv-HSTimelock
d_Conv'45'HSTimelock_18 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSTimelock_18
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.C_constructor_316 v1 v2 v3
                -> coe
                     C_HSTimelock_2187
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18 d_'46'extendedlambda_713
                        v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_HSTimelock_2187 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.C_constructor_316
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20 d_'46'extendedlambda_713
                        v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Transaction.HsTy-HSPlutusScript
d_HsTy'45'HSPlutusScript_20 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSPlutusScript_20 = erased
-- Ledger.Conway.Foreign.Transaction.Conv-HSPlutusScript
d_Conv'45'HSPlutusScript_22 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSPlutusScript_22
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.C_MkHSPlutusScript_342 v1 v2 v3
                -> coe
                     C_MkHSPlutusScript_3219 (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV1_12
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV1_17
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV2_14
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV2_19
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV3_16
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV3_21
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV1_17
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV1_12
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV2_19
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV2_14
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV3_21
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV3_16
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSPlutusScript_3219 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.C_MkHSPlutusScript_342
                     (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV1_12
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV1_17
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV2_14
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV2_19
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV3_16
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV3_21
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV1_17
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV1_12
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV2_19
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV2_14
                                   MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV3_21
                                     -> coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.C_PV3_16
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Transaction.HsTy-TxWitnessess
d_HsTy'45'TxWitnessess_24 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'TxWitnessess_24 = erased
-- Ledger.Conway.Foreign.Transaction.Conv-TxWitnessess
d_Conv'45'TxWitnessess_26 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'TxWitnessess_26
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3592 v1 v2 v3 v4
                -> coe
                     C_MkTxWitnesses_4251
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                 (coe d_Conv'45'HSTimelock_18) (coe d_Conv'45'HSPlutusScript_22)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           v3))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe d_Conv'45'Tag_10)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxWitnesses_4251 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3592
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_DecEq'45'HSVKey_22)
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                 (coe d_Conv'45'HSTimelock_18) (coe d_Conv'45'HSPlutusScript_22)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v3))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe d_Conv'45'Tag_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v4)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Transaction.HsTy-TxBody
d_HsTy'45'TxBody_28 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'TxBody_28 = erased
-- Ledger.Conway.Foreign.Transaction.Conv-TxBody
d_Conv'45'TxBody_30 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'TxBody_30
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3488 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
                -> coe
                     C_MkTxBody_12361
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v1))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           v3))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_216)
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_220))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                (coe d_Conv'45'HSTimelock_18)
                                                (coe d_Conv'45'HSPlutusScript_22))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DCert_152))
                        v6)
                     (coe v7)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe
                              (\ v19 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (coe v9)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v10)
                     (coe v11)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovProposal_904))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v15)
                     (coe v16)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           v17))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v18)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxBody_12361 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3488
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v3))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_216)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_220))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                          (coe d_Conv'45'HSTimelock_18)
                                          (coe d_Conv'45'HSPlutusScript_22)))))))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v4)))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DCert_152))
                        v6)
                     (coe v7)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v19
                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                            coe
                              (let v20
                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v19) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                                          (coe v20)))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                             (coe v20))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                          (coe v20))))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v8)))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           (\ v19 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                   (coe
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v9))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v10)
                     (coe v11)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovProposal_904))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v15)
                     (coe v16)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                              (coe v17))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v18)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Transaction.HsTy-Tx
d_HsTy'45'Tx_32 :: MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Tx_32 = erased
-- Ledger.Conway.Foreign.Transaction.Conv-Tx
d_Conv'45'Tx_34 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Tx_34
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3616 v1 v2 v3 v4 v5
                -> coe
                     C_MkTx_95707
                     (coe
                        C_MkTxBody_12361
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3452
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3454
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3456
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_216)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_220))
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                   (coe d_Conv'45'HSTimelock_18)
                                                   (coe d_Conv'45'HSPlutusScript_22))))))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3458
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3460
                           (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DCert_152))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3462
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3464
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3466
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3468
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3470
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3472
                           (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3474
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovProposal_904))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3476
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3478
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3480
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3482
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3484
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3486
                              (coe v1))))
                     (coe
                        C_MkTxWitnesses_4251
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3582
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                    (coe d_Conv'45'HSTimelock_18)
                                    (coe d_Conv'45'HSPlutusScript_22)))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3584
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3586
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe d_Conv'45'Tag_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3588
                                    (coe v2))))))
                     (coe v3) (coe v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTx_95707 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3616
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3488 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
                                     -> coe
                                          C_MkTxBody_12361
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_216)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_220))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                     (coe d_Conv'45'HSTimelock_18)
                                                                     (coe
                                                                        d_Conv'45'HSPlutusScript_22))))))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v10))))
                                          (coe v11)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DCert_152))
                                             v12)
                                          (coe v13)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
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
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v25 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v15)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
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
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v18)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovProposal_904))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v21)
                                          (coe v22)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                v23))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v24)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkTxBody_12361 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3488
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_216)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_220))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                               (coe d_Conv'45'HSTimelock_18)
                                                               (coe
                                                                  d_Conv'45'HSPlutusScript_22)))))))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v10)))
                                          (coe v11)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DCert_152))
                                             v12)
                                          (coe v13)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v25
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v26
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v25) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                                                               (coe v26)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v26))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v26))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v14)))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                (\ v25 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v15))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
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
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'GovVote_120))
                                             v18)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovProposal_904))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v21)
                                          (coe v22)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v23))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v24)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3592 v7 v8 v9 v10
                                     -> coe
                                          C_MkTxWitnesses_4251
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                      (coe d_Conv'45'HSTimelock_18)
                                                      (coe d_Conv'45'HSPlutusScript_22)))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe d_Conv'45'Tag_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                   C_MkTxWitnesses_4251 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3592
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_DecEq'45'HSVKey_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_Conv'45'HSVKey_40)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                      (coe d_Conv'45'HSTimelock_18)
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
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                   erased () erased
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe d_Conv'45'Tag_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v10)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3) (coe v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Transaction.Timelock
d_Timelock_147 = ()
type T_Timelock_147 = Timelock
pattern C_RequireAllOf_149 a0 = RequireAllOf a0
pattern C_RequireAnyOf_171 a0 = RequireAnyOf a0
pattern C_RequireMOf_193 a0 a1 = RequireMOf a0 a1
pattern C_RequireSig_229 a0 = RequireSig a0
pattern C_RequireTimeStart_255 a0 = RequireTimeStart a0
pattern C_RequireTimeExpire_293 a0 = RequireTimeExpire a0
check_RequireAllOf_149 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Timelock_147 ->
  T_Timelock_147
check_RequireAllOf_149 = RequireAllOf
check_RequireAnyOf_171 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Timelock_147 ->
  T_Timelock_147
check_RequireAnyOf_171 = RequireAnyOf
check_RequireMOf_193 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Timelock_147 ->
  T_Timelock_147
check_RequireMOf_193 = RequireMOf
check_RequireSig_229 :: Integer -> T_Timelock_147
check_RequireSig_229 = RequireSig
check_RequireTimeStart_255 :: Integer -> T_Timelock_147
check_RequireTimeStart_255 = RequireTimeStart
check_RequireTimeExpire_293 :: Integer -> T_Timelock_147
check_RequireTimeExpire_293 = RequireTimeExpire
cover_Timelock_147 :: Timelock -> ()
cover_Timelock_147 x
  = case x of
      RequireAllOf _ -> ()
      RequireAnyOf _ -> ()
      RequireMOf _ _ -> ()
      RequireSig _ -> ()
      RequireTimeStart _ -> ()
      RequireTimeExpire _ -> ()
-- Ledger.Conway.Foreign.Transaction..extendedlambda
d_'46'extendedlambda_713 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_'46'extendedlambda_713
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireAllOf_106 v1
                -> coe
                     C_RequireAllOf_149
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe d_Conv'45'Timelock_14))
                        v1)
              MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireAnyOf_108 v1
                -> coe
                     C_RequireAnyOf_171
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe d_Conv'45'Timelock_14))
                        v1)
              MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireMOf_110 v1 v2
                -> coe
                     C_RequireMOf_193 (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe d_Conv'45'Timelock_14))
                        v2)
              MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireSig_112 v1
                -> coe C_RequireSig_229 (coe v1)
              MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireTimeStart_114 v1
                -> coe C_RequireTimeStart_255 (coe v1)
              MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireTimeExpire_116 v1
                -> coe C_RequireTimeExpire_293 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_RequireAllOf_149 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireAllOf_106
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'Timelock_14))
                        v1)
              C_RequireAnyOf_171 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireAnyOf_108
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'Timelock_14))
                        v1)
              C_RequireMOf_193 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireMOf_110
                     (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'Timelock_14))
                        v2)
              C_RequireSig_229 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireSig_112
                     (coe v1)
              C_RequireTimeStart_255 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireTimeStart_114
                     (coe v1)
              C_RequireTimeExpire_293 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.C_RequireTimeExpire_116
                     (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Transaction.HSTimelock
d_HSTimelock_2185 = ()
type T_HSTimelock_2185 = HSTimelock
pattern C_HSTimelock_2187 a0 a1 a2 = HSTimelock a0 a1 a2
check_HSTimelock_2187 ::
  T_Timelock_147 -> Integer -> Integer -> T_HSTimelock_2185
check_HSTimelock_2187 = HSTimelock
cover_HSTimelock_2185 :: HSTimelock -> ()
cover_HSTimelock_2185 x
  = case x of
      HSTimelock _ _ _ -> ()
-- Ledger.Conway.Foreign.Transaction.HSPlutusScript
d_HSPlutusScript_3217 = ()
type T_HSPlutusScript_3217 = HSPlutusScript
pattern C_MkHSPlutusScript_3219 a0 a1 a2 = MkHSPlutusScript a0 a1 a2
check_MkHSPlutusScript_3219 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_15 ->
  T_HSPlutusScript_3217
check_MkHSPlutusScript_3219 = MkHSPlutusScript
cover_HSPlutusScript_3217 :: HSPlutusScript -> ()
cover_HSPlutusScript_3217 x
  = case x of
      MkHSPlutusScript _ _ _ -> ()
-- Ledger.Conway.Foreign.Transaction.TxWitnesses
d_TxWitnesses_4249 = ()
type T_TxWitnesses_4249 = TxWitnesses
pattern C_MkTxWitnesses_4251 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_MkTxWitnesses_4251 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_8381
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () () T_HSTimelock_2185 T_HSPlutusScript_3217) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Tag_15 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_4249
check_MkTxWitnesses_4251 = MkTxWitnesses
cover_TxWitnesses_4249 :: TxWitnesses -> ()
cover_TxWitnesses_4249 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Conway.Foreign.Transaction.TxBody
d_TxBody_12359 = ()
type T_TxBody_12359 = TxBody
pattern C_MkTxBody_12361 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17
check_MkTxBody_12361 ::
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
          () () MAlonzo.Code.Ledger.Core.Foreign.Address.T_BaseAddr_1301
          MAlonzo.Code.Ledger.Core.Foreign.Address.T_BootstrapAddr_2743)
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
                   () () T_HSTimelock_2185 T_HSPlutusScript_3217))))) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DCert_17911 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_3945
    Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.T_GovVote_5437 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovProposal_7813 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_TxBody_12359
check_MkTxBody_12361 = MkTxBody
cover_TxBody_12359 :: TxBody -> ()
cover_TxBody_12359 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.Transaction.Tx
d_Tx_95705 = ()
type T_Tx_95705 = Tx
pattern C_MkTx_95707 a0 a1 a2 a3 a4 = MkTx a0 a1 a2 a3 a4
check_MkTx_95707 ::
  T_TxBody_12359 ->
  T_TxWitnesses_4249 ->
  Integer ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer -> T_Tx_95705
check_MkTx_95707 = MkTx
cover_Tx_95705 :: Tx -> ()
cover_Tx_95705 x
  = case x of
      MkTx _ _ _ _ _ -> ()
