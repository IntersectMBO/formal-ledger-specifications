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

module MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Semigroup.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.ToRecord
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.DecEq-Credential
d_DecEq'45'Credential_60 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_60 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_60 v2 v3
du_DecEq'45'Credential_60 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_60 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.Show-Credential
d_Show'45'Credential_200 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_200 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_200
du_Show'45'Credential_200 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_200 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- _.Show-Credential×Coin
d_Show'45'Credential'215'Coin_202 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_202 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_202
du_Show'45'Credential'215'Coin_202 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_202 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- _.isKeyHash
d_isKeyHash_292 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_292 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-VDeleg
d_DecEq'45'VDeleg_674 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_674 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.GovRole
d_GovRole_686 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.VDeleg
d_VDeleg_708 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__816 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__818 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__818 = erased
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__820 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__822 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__824 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__826 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_868 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_868 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.DepositPurpose
d_DepositPurpose_872 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.completeness
d_completeness_1078 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1078 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.computeProof
d_computeProof_1084 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1084 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties.lookupDeposit
d_lookupDeposit_1104 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_1104 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.d_any'63'_1618
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      erased erased
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe
                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0))
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v1))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-DELEG
d_Computational'45'DELEG_1112 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_1112 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 ->
         case coe v2 of
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056 v3 v4 v5 v6
             -> coe
                  (\ v7 ->
                     let v8
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("Unexpected certificate in DELEG" :: Data.Text.Text)) in
                     coe
                       (case coe v7 of
                          MAlonzo.Code.Ledger.Certs.C_delegate_834 v9 v10 v11 v12
                            -> let v13
                                     = coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (let v13
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                      (coe v0))) in
                                                      coe
                                                        (let v14
                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                      (coe v0)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                              (coe v13) (coe v14))))
                                                     (coe v9)
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_548
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                        (coe v5)))
                                                  (coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                  (coe v12)
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                        (coe v1)))))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (let v13
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                      (coe v0))) in
                                                      coe
                                                        (let v14
                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                      (coe v0)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                              (coe v13) (coe v14))))
                                                     (coe v9)
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_548
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                        (coe v5)))
                                                  (coe
                                                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                     (coe v12) (coe (0 :: Integer))))
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                        (coe
                                                           MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
                                                           (coe v0)))
                                                     (coe v10)
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_map_398
                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (\ v13 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664)
                                                                   (coe v13)))
                                                           (MAlonzo.Code.Ledger.Certs.d_delegatees_952
                                                              (coe v1)))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_fromList_428
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_676))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_678))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                 (coe v0)))))
                                                     (coe v11)
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_map_398
                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_548
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_pools_950
                                                                 (coe v1))))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))))) in
                               coe
                                 (case coe v13 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                      -> if coe v14
                                           then case coe v15 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                    -> coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056
                                                               (let v17
                                                                      = let v17
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (let v18
                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe v0)) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                (coe v17)
                                                                                (coe v18))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_964
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v17)
                                                                     (coe v9) (coe v10) (coe v3)))
                                                               (let v17
                                                                      = let v17
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (let v18
                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe v0)) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                (coe v17)
                                                                                (coe v18))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_964
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v17)
                                                                     (coe v9) (coe v11) (coe v4)))
                                                               (let v17
                                                                      = let v17
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (let v18
                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe v0)) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                (coe v17)
                                                                                (coe v18))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v17)
                                                                     (coe v5)
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                        (coe
                                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v9)
                                                                           (coe (0 :: Integer))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1112
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                     (coe v1))
                                                                  (coe v7) (coe v6)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1308
                                                               v16))
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v15)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (let v16
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                         (let v16
                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                          (coe
                                                                                             v0))) in
                                                                          coe
                                                                            (let v17
                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                          (coe
                                                                                             v0)) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                  (coe v16)
                                                                                  (coe v17))))
                                                                         (coe v9)
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_dom_548
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                            (coe v5)))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                      (coe
                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                      (coe v12)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                            (coe v1)))))
                                                                erased in
                                                      coe
                                                        (case coe v16 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                             -> coe
                                                                  ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801\n .Ledger.PParams.PParams.keyDeposit\n (.Ledger.Certs.DelegEnv.pparams de))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                             -> let v18
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                (let v18
                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                 (coe
                                                                                                    v0))) in
                                                                                 coe
                                                                                   (let v19
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                 (coe
                                                                                                    v0)) in
                                                                                    coe
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                         (coe v18)
                                                                                         (coe
                                                                                            v19))))
                                                                                (coe v9)
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                   (coe v5)))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                (coe v12)
                                                                                (coe
                                                                                   (0 :: Integer))))
                                                                          erased in
                                                                coe
                                                                  (case coe v18 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                       -> coe
                                                                            ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8712 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                       -> let v20
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
                                                                                             (coe
                                                                                                v0)))
                                                                                       (coe v10)
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_map_398
                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (\ v20 ->
                                                                                                coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664)
                                                                                                     (coe
                                                                                                        v20)))
                                                                                             (MAlonzo.Code.Ledger.Certs.d_delegatees_952
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_676))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_678))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v20 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                 -> coe
                                                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (credVoter DRep x))\n  (.Ledger.Certs.DelegEnv.delegatees de))\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just abstainRep \8759 just noConfidenceRep \8759 [])))"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v21
                                                                                 -> coe
                                                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.Ledger.Certs.DelegEnv.pools de)))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Certs.C_dereg_836 v9 v10
                            -> let v11
                                     = d_lookupDeposit_1104
                                         (coe v0) (coe v6)
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                            (coe v9)) in
                               coe
                                 (case coe v11 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                      -> if coe v12
                                           then case coe v13 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                    -> case coe v14 of
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                           -> case coe v15 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                  -> let v19
                                                                           = coe
                                                                               MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                     (coe
                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                        () erased ()
                                                                                        erased
                                                                                        (let v19
                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                         (coe
                                                                                                            v0))) in
                                                                                         coe
                                                                                           (let v20
                                                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                         (coe
                                                                                                            v0)) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                 (coe
                                                                                                    v19)
                                                                                                 (coe
                                                                                                    v20))))
                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe v9)
                                                                                        (coe
                                                                                           (0 ::
                                                                                              Integer)))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                        (coe v5)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                        (coe
                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                           () erased
                                                                                           () erased
                                                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                                                              (coe
                                                                                                 v0))
                                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                                                                              (coe
                                                                                                 v9))
                                                                                           (coe
                                                                                              v18))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                           (coe
                                                                                              v6)))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                           (coe v10)
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                           (coe v10)
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                              (coe
                                                                                                 v18)))))) in
                                                                     coe
                                                                       (case coe v19 of
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                            -> if coe v20
                                                                                 then case coe
                                                                                             v21 of
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                                                          -> coe
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056
                                                                                                     (let v23
                                                                                                            = let v23
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                              (coe
                                                                                                                                 v0))) in
                                                                                                              coe
                                                                                                                (let v24
                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                              (coe
                                                                                                                                 v0)) in
                                                                                                                 coe
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                      (coe
                                                                                                                         v23)
                                                                                                                      (coe
                                                                                                                         v24))) in
                                                                                                      coe
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                              erased
                                                                                                              v23)
                                                                                                           (coe
                                                                                                              v3)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                              v9)))
                                                                                                     (let v23
                                                                                                            = let v23
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                              (coe
                                                                                                                                 v0))) in
                                                                                                              coe
                                                                                                                (let v24
                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                              (coe
                                                                                                                                 v0)) in
                                                                                                                 coe
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                      (coe
                                                                                                                         v23)
                                                                                                                      (coe
                                                                                                                         v24))) in
                                                                                                      coe
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                              erased
                                                                                                              v23)
                                                                                                           (coe
                                                                                                              v4)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                              v9)))
                                                                                                     (let v23
                                                                                                            = let v23
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                              (coe
                                                                                                                                 v0))) in
                                                                                                              coe
                                                                                                                (let v24
                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                              (coe
                                                                                                                                 v0)) in
                                                                                                                 coe
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                      (coe
                                                                                                                         v23)
                                                                                                                      (coe
                                                                                                                         v24))) in
                                                                                                      coe
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                              erased
                                                                                                              v23)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                 (coe
                                                                                                                    v5))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                 (coe
                                                                                                                    v5)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                              v9)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1112
                                                                                                        (coe
                                                                                                           v0)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                                                           (coe
                                                                                                              v1))
                                                                                                        (coe
                                                                                                           v7)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                              (coe
                                                                                                                 v6))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v6)))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1310
                                                                                                     v18
                                                                                                     v22))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 else coe
                                                                                        seq
                                                                                        (coe v21)
                                                                                        (coe
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                           (let v22
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                         (coe
                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (let v22
                                                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                             (coe
                                                                                                                                v0))) in
                                                                                                             coe
                                                                                                               (let v23
                                                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                             (coe
                                                                                                                                v0)) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        v22)
                                                                                                                     (coe
                                                                                                                        v23))))
                                                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v9)
                                                                                                            (coe
                                                                                                               (0 ::
                                                                                                                  Integer)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                            (coe
                                                                                                               v5)))
                                                                                                      erased in
                                                                                            coe
                                                                                              (case coe
                                                                                                      v22 of
                                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v23
                                                                                                   -> coe
                                                                                                        ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                                                         ::
                                                                                                         Data.Text.Text)
                                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v23
                                                                                                   -> let v24
                                                                                                            = coe
                                                                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                      ()
                                                                                                                      erased
                                                                                                                      ()
                                                                                                                      erased
                                                                                                                      (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                                                                                         (coe
                                                                                                                            v0))
                                                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                                                                                                         (coe
                                                                                                                            v9))
                                                                                                                      (coe
                                                                                                                         v18))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                      (coe
                                                                                                                         v6)))
                                                                                                                erased in
                                                                                                      coe
                                                                                                        (case coe
                                                                                                                v24 of
                                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v25
                                                                                                             -> coe
                                                                                                                  ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndep"
                                                                                                                   ::
                                                                                                                   Data.Text.Text)
                                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v25
                                                                                                             -> coe
                                                                                                                  ("\172 (md \8801 nothing \8846 md \8801 just d)"
                                                                                                                   ::
                                                                                                                   Data.Text.Text)
                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v13)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (coe
                                                        ("\172\nAny\n(\955 .patternInTele0 \8594 CredentialDeposit c \8801 .proj\8321 .patternInTele0)\n(dep \738)"
                                                         ::
                                                         Data.Text.Text)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Certs.C_reg_848 v9 v10
                            -> let v11
                                     = coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (let v11
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                   (coe v0))) in
                                                   coe
                                                     (let v12
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                           (coe v11) (coe v12))))
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_548
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                     (coe v5)))
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                  (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                        (coe v1))))
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                  (coe v10) (coe (0 :: Integer))))) in
                               coe
                                 (case coe v11 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                      -> if coe v12
                                           then case coe v13 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                    -> coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056
                                                               (coe v3) (coe v4)
                                                               (let v15
                                                                      = let v15
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (let v16
                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe v0)) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                (coe v15)
                                                                                (coe v16))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v15)
                                                                     (coe v5)
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                        (coe
                                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v9)
                                                                           (coe (0 :: Integer))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1112
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                     (coe v1))
                                                                  (coe v7) (coe v6)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1380
                                                               v14))
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v13)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (let v14
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                      (let v14
                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                       (coe v0))) in
                                                                       coe
                                                                         (let v15
                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                       (coe v0)) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                               (coe v14)
                                                                               (coe v15))))
                                                                      (coe v9)
                                                                      (coe
                                                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                         (coe v5)))
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                erased in
                                                      coe
                                                        (case coe v14 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                                             -> coe
                                                                  ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                                             -> coe
                                                                  ("\172\n(d \8801\n .Ledger.PParams.PParams.keyDeposit\n (.Ledger.Certs.DelegEnv.pparams de)\n \8846 d \8801 0)"
                                                                   ::
                                                                   Data.Text.Text)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> coe v8))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-POOL
d_Computational'45'POOL_1348 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_1348 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Certs.C_regpool_838 v5 v6
                -> let v7
                         = coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                             (coe
                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased
                                (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                         (coe v0))))
                                v5
                                (coe
                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                   (coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v2)))) in
                   coe
                     (case coe v7 of
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                          -> if coe v8
                               then coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                         (coe
                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                            (coe
                                               MAlonzo.Code.ToRecord.d_'10214'_'10215'_14
                                               (coe
                                                  MAlonzo.Code.Ledger.Certs.du_ToRecord'45'PState_1054)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (let v10
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                   (coe v0))) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                           erased v10)
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v5) (coe v6)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Certs.d_pools_910
                                                           (coe v2))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.d_retiring_912
                                                     (coe v2))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'regpool_1236)))
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Certs.PState.pools ps)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Certs.C_retirepool_840 v5 v6
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                        (coe
                           MAlonzo.Code.ToRecord.d_'10214'_'10215'_14
                           (coe MAlonzo.Code.Ledger.Certs.du_ToRecord'45'PState_1054)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v2))
                              (let v7
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                            (coe
                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                               (coe v0))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v7)
                                    (coe
                                       MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                       (coe
                                          MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                          (coe v6)))
                                    (coe MAlonzo.Code.Ledger.Certs.d_retiring_912 (coe v2))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'retirepool_1238))
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_1374 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_1374 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 ->
         case coe v2 of
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1072 v3 v4 v5
             -> coe
                  (\ v6 ->
                     let v7
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("Unexpected certificate in GOVCERT" :: Data.Text.Text)) in
                     coe
                       (case coe v6 of
                          MAlonzo.Code.Ledger.Certs.C_regdrep_842 v8 v9 v10
                            -> let v11
                                     = coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_drepDeposit_372
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_pp_882
                                                        (coe v1))))
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (let v11
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                      (coe v0))) in
                                                      coe
                                                        (let v12
                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                      (coe v0)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                              (coe v11) (coe v12))))
                                                     (coe v8)
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_548
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                        (coe v3)))
                                                  (coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                  (coe v9) (coe (0 :: Integer)))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (let v11
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                   (coe v0))) in
                                                   coe
                                                     (let v12
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                           (coe v11) (coe v12))))
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_548
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                     (coe v3))))) in
                               coe
                                 (case coe v11 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                      -> if coe v12
                                           then case coe v13 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                    -> coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1072
                                                               (let v15
                                                                      = let v15
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (let v16
                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe v0)) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                (coe v15)
                                                                                (coe v16))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v15)
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                        (coe
                                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v8)
                                                                           (coe
                                                                              MAlonzo.Code.Class.HasAdd.Core.d__'43'__14
                                                                              (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
                                                                                    (coe v0)))
                                                                              (MAlonzo.Code.Ledger.Certs.d_epoch_880
                                                                                 (coe v1))
                                                                              (MAlonzo.Code.Ledger.PParams.d_drepActivity_374
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_pp_882
                                                                                    (coe v1))))))
                                                                     (coe v3)))
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1112
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_pp_882
                                                                     (coe v1))
                                                                  (coe v6) (coe v5)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'regdrep_1454
                                                               v14))
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v13)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (coe
                                                        ("\172\n(d \8801\n .Ledger.PParams.PParams.drepDeposit (.Ledger.Certs.CertEnv.pp ce)\n \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8713 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)\n \8846\n d \8801 0 \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps))"
                                                         ::
                                                         Data.Text.Text)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v8 v9
                            -> let v10
                                     = coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (let v10
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                (coe v0))) in
                                                coe
                                                  (let v11
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                        (coe v10) (coe v11))))
                                               (coe v8)
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                  (coe v3)))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                  erased () erased
                                                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                     (coe v0))
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818
                                                     (coe v8))
                                                  (coe v9))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                  (coe v5)))) in
                               coe
                                 (case coe v10 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                      -> if coe v11
                                           then case coe v12 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                    -> coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1072
                                                               (let v14
                                                                      = let v14
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (let v15
                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe v0)) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                (coe v14)
                                                                                (coe v15))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v14)
                                                                     (coe v3)
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                        (coe
                                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                        v8)))
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1112
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_pp_882
                                                                     (coe v1))
                                                                  (coe v6)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                        (coe v5))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v5)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'deregdrep_1456
                                                               v13))
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v12)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (let v13
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                   (let v13
                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                    (coe v0))) in
                                                                    coe
                                                                      (let v14
                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                    (coe v0)) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                            (coe v13) (coe v14))))
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                      (coe v3)))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                             -> coe
                                                                  ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (DRepDeposit c , d))\ndep"
                                                                   ::
                                                                   Data.Text.Text)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Certs.C_ccreghot_846 v8 v9
                            -> let v10
                                     = coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                     () erased () erased
                                                     (let v10
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                      (coe v0))) in
                                                      coe
                                                        (let v11
                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                      (coe v0)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                              (coe v10) (coe v11))))
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                        (let v10
                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                         (coe v0))) in
                                                         coe
                                                           (let v11
                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                         (coe v0)) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                 (coe v10) (coe v11))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v8)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                     (coe v4)))
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (let v10
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                (coe v0))) in
                                                coe
                                                  (let v11
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                        (coe v10) (coe v11))))
                                               (coe v8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Certs.d_coldCreds_888
                                                  (coe v1)))) in
                               coe
                                 (case coe v10 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                      -> if coe v11
                                           then case coe v12 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                    -> coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1072
                                                               (coe v3)
                                                               (let v14
                                                                      = let v14
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (let v15
                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe v0)) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                (coe v14)
                                                                                (coe v15))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v14)
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                        (coe
                                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v8) (coe v9)))
                                                                     (coe v4)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1112
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_pp_882
                                                                     (coe v1))
                                                                  (coe v6) (coe v5)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'ccreghot_1458
                                                               v13))
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v12)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (let v13
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                      (coe
                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                         () erased () erased
                                                                         (let v13
                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                          (coe
                                                                                             v0))) in
                                                                          coe
                                                                            (let v14
                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                          (coe
                                                                                             v0)) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                  (coe v13)
                                                                                  (coe v14))))
                                                                         (coe
                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                            (let v13
                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v14
                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                     (coe v13)
                                                                                     (coe v14))))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v8)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                         (coe v4)))
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 (c , nothing))\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738) ccKeys)"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                             -> coe
                                                                  ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 c)\n(.Ledger.Certs.CertEnv.coldCreds ce)"
                                                                   ::
                                                                   Data.Text.Text)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> coe v7))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERT
d_Computational'45'CERT_1636 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_1636 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 ->
         case coe v2 of
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088 v3 v4 v5
             -> coe
                  (\ v6 ->
                     let v7
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                               (d_Computational'45'POOL_1348 (coe v0))
                               (MAlonzo.Code.Ledger.Certs.d_pp_882 (coe v1)) v4 v6 in
                     coe
                       (let v8
                              = coe
                                  MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                  (d_Computational'45'GOVCERT_1374 (coe v0)) v1 v5 v6 in
                        coe
                          (let v9
                                 = coe
                                     MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
                                     (3 :: Integer)
                                     (\ v9 v10 v11 ->
                                        coe
                                          MAlonzo.Code.Ledger.Certs.C_DelegEnv'46'constructor_18329
                                          (coe v9) (coe v10) (coe v11))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe MAlonzo.Code.Ledger.Certs.d_pp_882 (coe v1))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v4))
                                           (coe
                                              MAlonzo.Code.Class.IsSet.du_dom_548
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066
                                                 (coe v5))))) in
                           coe
                             (let v10
                                    = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
                                        (coe v3) in
                              coe
                                (let v11
                                       = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1050
                                           (coe v3) in
                                 coe
                                   (let v12
                                          = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1052
                                              (coe v3) in
                                    coe
                                      (let v13
                                             = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1054
                                                 (coe v3) in
                                       coe
                                         (case coe v6 of
                                            MAlonzo.Code.Ledger.Certs.C_delegate_834 v14 v15 v16 v17
                                              -> let v18
                                                       = coe
                                                           MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                       (let v18
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (let v19
                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe v0)) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                (coe v18)
                                                                                (coe v19))))
                                                                       (coe v14)
                                                                       (coe
                                                                          MAlonzo.Code.Class.IsSet.du_dom_548
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                          (coe v12)))
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                    (coe v17)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                          (coe v9)))))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                       (let v18
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (let v19
                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                        (coe v0)) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                (coe v18)
                                                                                (coe v19))))
                                                                       (coe v14)
                                                                       (coe
                                                                          MAlonzo.Code.Class.IsSet.du_dom_548
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                          (coe v12)))
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                       (coe
                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                       (coe v17)
                                                                       (coe (0 :: Integer))))
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                       (coe
                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
                                                                             (coe v0)))
                                                                       (coe v15)
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_map_398
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (\ v18 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664)
                                                                                     (coe v18)))
                                                                             (MAlonzo.Code.Ledger.Certs.d_delegatees_952
                                                                                (coe v9)))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_676))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_678))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                       (coe
                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                   (coe v0)))))
                                                                       (coe v16)
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_map_398
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Certs.d_pools_950
                                                                                   (coe v9))))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             erased
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))))) in
                                                 coe
                                                   (case coe v18 of
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                        -> if coe v19
                                                             then case coe v20 of
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                      -> let v22
                                                                               = coe
                                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056
                                                                                      (let v22
                                                                                             = let v22
                                                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                               (coe
                                                                                                                  v0))) in
                                                                                               coe
                                                                                                 (let v23
                                                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                               (coe
                                                                                                                  v0)) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                       (coe
                                                                                                          v22)
                                                                                                       (coe
                                                                                                          v23))) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_964
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                               erased
                                                                                               v22)
                                                                                            (coe
                                                                                               v14)
                                                                                            (coe
                                                                                               v15)
                                                                                            (coe
                                                                                               v10)))
                                                                                      (let v22
                                                                                             = let v22
                                                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                               (coe
                                                                                                                  v0))) in
                                                                                               coe
                                                                                                 (let v23
                                                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                               (coe
                                                                                                                  v0)) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                       (coe
                                                                                                          v22)
                                                                                                       (coe
                                                                                                          v23))) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_964
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                               erased
                                                                                               v22)
                                                                                            (coe
                                                                                               v14)
                                                                                            (coe
                                                                                               v16)
                                                                                            (coe
                                                                                               v11)))
                                                                                      (let v22
                                                                                             = let v22
                                                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                               (coe
                                                                                                                  v0))) in
                                                                                               coe
                                                                                                 (let v23
                                                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                               (coe
                                                                                                                  v0)) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                       (coe
                                                                                                          v22)
                                                                                                       (coe
                                                                                                          v23))) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                               erased
                                                                                               v22)
                                                                                            (coe
                                                                                               v12)
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                     (coe
                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     v14)
                                                                                                  (coe
                                                                                                     (0 ::
                                                                                                        Integer))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1112
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                                            (coe
                                                                                               v9))
                                                                                         (coe v6)
                                                                                         (coe v13)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1308
                                                                                      v21) in
                                                                         coe
                                                                           (case coe v22 of
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                -> coe
                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                           (coe v23)
                                                                                           (coe v4)
                                                                                           (coe v5))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1462
                                                                                           v24))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             else (let v21
                                                                         = seq
                                                                             (coe v20)
                                                                             (coe
                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                (let v21
                                                                                       = coe
                                                                                           MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                    (let v21
                                                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                     (coe
                                                                                                                        v0))) in
                                                                                                     coe
                                                                                                       (let v22
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                     (coe
                                                                                                                        v0)) in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                             (coe
                                                                                                                v21)
                                                                                                             (coe
                                                                                                                v22))))
                                                                                                    (coe
                                                                                                       v14)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                       (coe
                                                                                                          v12)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                 (coe
                                                                                                    v17)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                                                       (coe
                                                                                                          v9)))))
                                                                                           erased in
                                                                                 coe
                                                                                   (case coe v21 of
                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v22
                                                                                        -> coe
                                                                                             ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801\n .Ledger.PParams.PParams.keyDeposit\n (.Ledger.Certs.DelegEnv.pparams de))"
                                                                                              ::
                                                                                              Data.Text.Text)
                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v22
                                                                                        -> let v23
                                                                                                 = coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                           (let v23
                                                                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                            (coe
                                                                                                                               v0))) in
                                                                                                            coe
                                                                                                              (let v24
                                                                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                            (coe
                                                                                                                               v0)) in
                                                                                                               coe
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                    (coe
                                                                                                                       v23)
                                                                                                                    (coe
                                                                                                                       v24))))
                                                                                                           (coe
                                                                                                              v14)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                              (coe
                                                                                                                 v12)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                           (coe
                                                                                                              v17)
                                                                                                           (coe
                                                                                                              (0 ::
                                                                                                                 Integer))))
                                                                                                     erased in
                                                                                           coe
                                                                                             (case coe
                                                                                                     v23 of
                                                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v24
                                                                                                  -> coe
                                                                                                       ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8712 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                                        ::
                                                                                                        Data.Text.Text)
                                                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v24
                                                                                                  -> let v25
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
                                                                                                                        (coe
                                                                                                                           v0)))
                                                                                                                  (coe
                                                                                                                     v15)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Axiom.Set.du_map_398
                                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                        (\ v25 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664)
                                                                                                                                (coe
                                                                                                                                   v25)))
                                                                                                                        (MAlonzo.Code.Ledger.Certs.d_delegatees_952
                                                                                                                           (coe
                                                                                                                              v9)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_676))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_678))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                               erased in
                                                                                                     coe
                                                                                                       (case coe
                                                                                                               v25 of
                                                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v26
                                                                                                            -> coe
                                                                                                                 ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (credVoter DRep x))\n  (.Ledger.Certs.DelegEnv.delegatees de))\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just abstainRep \8759 just noConfidenceRep \8759 [])))"
                                                                                                                  ::
                                                                                                                  Data.Text.Text)
                                                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v26
                                                                                                            -> coe
                                                                                                                 ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.Ledger.Certs.DelegEnv.pools de)))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                                                  ::
                                                                                                                  Data.Text.Text)
                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                   coe
                                                                     (case coe v21 of
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v22
                                                                          -> case coe v22 of
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                 -> coe
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                            (coe
                                                                                               v23)
                                                                                            (coe v4)
                                                                                            (coe
                                                                                               v5))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1462
                                                                                            v24))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v22
                                                                          -> case coe v7 of
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v23
                                                                                 -> case coe v23 of
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                        -> coe
                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                   (coe
                                                                                                      v3)
                                                                                                   (coe
                                                                                                      v24)
                                                                                                   (coe
                                                                                                      v5))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1464
                                                                                                   v25))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v23
                                                                                 -> case coe v8 of
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v24
                                                                                        -> case coe
                                                                                                  v24 of
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                          (coe
                                                                                                             v3)
                                                                                                          (coe
                                                                                                             v4)
                                                                                                          (coe
                                                                                                             v25))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1466
                                                                                                          v26))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v24
                                                                                        -> coe
                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                ("DELEG: "
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                   MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                   v22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                      MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                      ("\nPOOL: "
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                         v23
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                            ("\nVDEL: "
                                                                                                             ::
                                                                                                             Data.Text.Text)
                                                                                                            v24)))))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                            MAlonzo.Code.Ledger.Certs.C_dereg_836 v14 v15
                                              -> let v16
                                                       = d_lookupDeposit_1104
                                                           (coe v0) (coe v13)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                                              (coe v14)) in
                                                 coe
                                                   (case coe v16 of
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                        -> if coe v17
                                                             then case coe v18 of
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                      -> case coe v19 of
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                             -> case coe v20 of
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                    -> let v24
                                                                                             = coe
                                                                                                 MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                          ()
                                                                                                          erased
                                                                                                          ()
                                                                                                          erased
                                                                                                          (let v24
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v25
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                   (coe
                                                                                                                      v24)
                                                                                                                   (coe
                                                                                                                      v25))))
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (coe
                                                                                                             v14)
                                                                                                          (coe
                                                                                                             (0 ::
                                                                                                                Integer)))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                          (coe
                                                                                                             v12)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                             ()
                                                                                                             erased
                                                                                                             ()
                                                                                                             erased
                                                                                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                                                                                (coe
                                                                                                                   v0))
                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                                                                                                (coe
                                                                                                                   v14))
                                                                                                             (coe
                                                                                                                v23))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                             (coe
                                                                                                                v13)))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                             (coe
                                                                                                                v15)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                             (coe
                                                                                                                v15)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                (coe
                                                                                                                   v23)))))) in
                                                                                       coe
                                                                                         (case coe
                                                                                                 v24 of
                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v25 v26
                                                                                              -> if coe
                                                                                                      v25
                                                                                                   then case coe
                                                                                                               v26 of
                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v27
                                                                                                            -> let v28
                                                                                                                     = coe
                                                                                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056
                                                                                                                            (let v28
                                                                                                                                   = let v28
                                                                                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                                                     (coe
                                                                                                                                                        v0))) in
                                                                                                                                     coe
                                                                                                                                       (let v29
                                                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                                                     (coe
                                                                                                                                                        v0)) in
                                                                                                                                        coe
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                             (coe
                                                                                                                                                v28)
                                                                                                                                             (coe
                                                                                                                                                v29))) in
                                                                                                                             coe
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                     erased
                                                                                                                                     v28)
                                                                                                                                  (coe
                                                                                                                                     v10)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                                     v14)))
                                                                                                                            (let v28
                                                                                                                                   = let v28
                                                                                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                                                     (coe
                                                                                                                                                        v0))) in
                                                                                                                                     coe
                                                                                                                                       (let v29
                                                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                                                     (coe
                                                                                                                                                        v0)) in
                                                                                                                                        coe
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                             (coe
                                                                                                                                                v28)
                                                                                                                                             (coe
                                                                                                                                                v29))) in
                                                                                                                             coe
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                     erased
                                                                                                                                     v28)
                                                                                                                                  (coe
                                                                                                                                     v11)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                                     v14)))
                                                                                                                            (let v28
                                                                                                                                   = let v28
                                                                                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                                                     (coe
                                                                                                                                                        v0))) in
                                                                                                                                     coe
                                                                                                                                       (let v29
                                                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                                                     (coe
                                                                                                                                                        v0)) in
                                                                                                                                        coe
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                             (coe
                                                                                                                                                v28)
                                                                                                                                             (coe
                                                                                                                                                v29))) in
                                                                                                                             coe
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                     erased
                                                                                                                                     v28)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                                        (coe
                                                                                                                                           v12))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                        (coe
                                                                                                                                           v12)))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                                     v14)))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1112
                                                                                                                               (coe
                                                                                                                                  v0)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                                                                                  (coe
                                                                                                                                     v9))
                                                                                                                               (coe
                                                                                                                                  v6)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                                     (coe
                                                                                                                                        v13))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                     (coe
                                                                                                                                        v13)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1310
                                                                                                                            v23
                                                                                                                            v27) in
                                                                                                               coe
                                                                                                                 (case coe
                                                                                                                         v28 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                                      -> coe
                                                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                                                 (coe
                                                                                                                                    v29)
                                                                                                                                 (coe
                                                                                                                                    v4)
                                                                                                                                 (coe
                                                                                                                                    v5))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1462
                                                                                                                                 v30))
                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                   else (let v27
                                                                                                               = seq
                                                                                                                   (coe
                                                                                                                      v26)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                      (let v27
                                                                                                                             = coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                       ()
                                                                                                                                       erased
                                                                                                                                       ()
                                                                                                                                       erased
                                                                                                                                       (let v27
                                                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                                                        (coe
                                                                                                                                                           v0))) in
                                                                                                                                        coe
                                                                                                                                          (let v28
                                                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                                                        (coe
                                                                                                                                                           v0)) in
                                                                                                                                           coe
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                (coe
                                                                                                                                                   v27)
                                                                                                                                                (coe
                                                                                                                                                   v28))))
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                       (coe
                                                                                                                                          v14)
                                                                                                                                       (coe
                                                                                                                                          (0 ::
                                                                                                                                             Integer)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                                       (coe
                                                                                                                                          v12)))
                                                                                                                                 erased in
                                                                                                                       coe
                                                                                                                         (case coe
                                                                                                                                 v27 of
                                                                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v28
                                                                                                                              -> coe
                                                                                                                                   ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                                                                                    ::
                                                                                                                                    Data.Text.Text)
                                                                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v28
                                                                                                                              -> let v29
                                                                                                                                       = coe
                                                                                                                                           MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                 ()
                                                                                                                                                 erased
                                                                                                                                                 ()
                                                                                                                                                 erased
                                                                                                                                                 (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                                                                                                                                    (coe
                                                                                                                                                       v14))
                                                                                                                                                 (coe
                                                                                                                                                    v23))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                                                 (coe
                                                                                                                                                    v13)))
                                                                                                                                           erased in
                                                                                                                                 coe
                                                                                                                                   (case coe
                                                                                                                                           v29 of
                                                                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v30
                                                                                                                                        -> coe
                                                                                                                                             ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndep"
                                                                                                                                              ::
                                                                                                                                              Data.Text.Text)
                                                                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v30
                                                                                                                                        -> coe
                                                                                                                                             ("\172 (md \8801 nothing \8846 md \8801 just d)"
                                                                                                                                              ::
                                                                                                                                              Data.Text.Text)
                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                                                         coe
                                                                                                           (case coe
                                                                                                                   v27 of
                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v28
                                                                                                                -> case coe
                                                                                                                          v28 of
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                                       -> coe
                                                                                                                            MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                                                  (coe
                                                                                                                                     v29)
                                                                                                                                  (coe
                                                                                                                                     v4)
                                                                                                                                  (coe
                                                                                                                                     v5))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1462
                                                                                                                                  v30))
                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v28
                                                                                                                -> case coe
                                                                                                                          v7 of
                                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v29
                                                                                                                       -> case coe
                                                                                                                                 v29 of
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                                                              -> coe
                                                                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                                                         (coe
                                                                                                                                            v3)
                                                                                                                                         (coe
                                                                                                                                            v30)
                                                                                                                                         (coe
                                                                                                                                            v5))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1464
                                                                                                                                         v31))
                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v29
                                                                                                                       -> case coe
                                                                                                                                 v8 of
                                                                                                                            MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v30
                                                                                                                              -> case coe
                                                                                                                                        v30 of
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                                                     -> coe
                                                                                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                                                                (coe
                                                                                                                                                   v3)
                                                                                                                                                (coe
                                                                                                                                                   v4)
                                                                                                                                                (coe
                                                                                                                                                   v31))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1466
                                                                                                                                                v32))
                                                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                            MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v30
                                                                                                                              -> coe
                                                                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                                      MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                                      ("DELEG: "
                                                                                                                                       ::
                                                                                                                                       Data.Text.Text)
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                                         v28
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                                            ("\nPOOL: "
                                                                                                                                             ::
                                                                                                                                             Data.Text.Text)
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                                               MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                                               v29
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                                                  MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                                                  ("\nVDEL: "
                                                                                                                                                   ::
                                                                                                                                                   Data.Text.Text)
                                                                                                                                                  v30)))))
                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             else (let v19
                                                                         = seq
                                                                             (coe v18)
                                                                             (coe
                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                (coe
                                                                                   ("\172\nAny\n(\955 .patternInTele0 \8594 CredentialDeposit c \8801 .proj\8321 .patternInTele0)\n(dep \738)"
                                                                                    ::
                                                                                    Data.Text.Text))) in
                                                                   coe
                                                                     (case coe v19 of
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v20
                                                                          -> case coe v20 of
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                 -> coe
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                            (coe
                                                                                               v21)
                                                                                            (coe v4)
                                                                                            (coe
                                                                                               v5))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1462
                                                                                            v22))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v20
                                                                          -> case coe v7 of
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v21
                                                                                 -> case coe v21 of
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                        -> coe
                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                   (coe
                                                                                                      v3)
                                                                                                   (coe
                                                                                                      v22)
                                                                                                   (coe
                                                                                                      v5))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1464
                                                                                                   v23))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v21
                                                                                 -> case coe v8 of
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v22
                                                                                        -> case coe
                                                                                                  v22 of
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                          (coe
                                                                                                             v3)
                                                                                                          (coe
                                                                                                             v4)
                                                                                                          (coe
                                                                                                             v23))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1466
                                                                                                          v24))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v22
                                                                                        -> coe
                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                ("DELEG: "
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                   MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                   v20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                      MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                      ("\nPOOL: "
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                         v21
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                            ("\nVDEL: "
                                                                                                             ::
                                                                                                             Data.Text.Text)
                                                                                                            v22)))))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                            MAlonzo.Code.Ledger.Certs.C_reg_848 v14 v15
                                              -> let v16
                                                       = coe
                                                           MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                    (let v16
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v17
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                             (coe v16) (coe v17))))
                                                                    (coe v14)
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_dom_548
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                       (coe v12)))
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                    (coe v15)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                          (coe v9))))
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                    (coe v15)
                                                                    (coe (0 :: Integer))))) in
                                                 coe
                                                   (case coe v16 of
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                        -> if coe v17
                                                             then case coe v18 of
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                      -> let v20
                                                                               = coe
                                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056
                                                                                      (coe v10)
                                                                                      (coe v11)
                                                                                      (let v20
                                                                                             = let v20
                                                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                               (coe
                                                                                                                  v0))) in
                                                                                               coe
                                                                                                 (let v21
                                                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                               (coe
                                                                                                                  v0)) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                       (coe
                                                                                                          v20)
                                                                                                       (coe
                                                                                                          v21))) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                               erased
                                                                                               v20)
                                                                                            (coe
                                                                                               v12)
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                     (coe
                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     v14)
                                                                                                  (coe
                                                                                                     (0 ::
                                                                                                        Integer))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1112
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Certs.d_pparams_948
                                                                                            (coe
                                                                                               v9))
                                                                                         (coe v6)
                                                                                         (coe v13)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1380
                                                                                      v19) in
                                                                         coe
                                                                           (case coe v20 of
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                -> coe
                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                           (coe v21)
                                                                                           (coe v4)
                                                                                           (coe v5))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1462
                                                                                           v22))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             else (let v19
                                                                         = seq
                                                                             (coe v18)
                                                                             (coe
                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                (let v19
                                                                                       = coe
                                                                                           MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                 (let v19
                                                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                  (coe
                                                                                                                     v0))) in
                                                                                                  coe
                                                                                                    (let v20
                                                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                                                                  (coe
                                                                                                                     v0)) in
                                                                                                     coe
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                          (coe
                                                                                                             v19)
                                                                                                          (coe
                                                                                                             v20))))
                                                                                                 (coe
                                                                                                    v14)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                    (coe
                                                                                                       v12)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                           erased in
                                                                                 coe
                                                                                   (case coe v19 of
                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                        -> coe
                                                                                             ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)"
                                                                                              ::
                                                                                              Data.Text.Text)
                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                        -> coe
                                                                                             ("\172\n(d \8801\n .Ledger.PParams.PParams.keyDeposit\n (.Ledger.Certs.DelegEnv.pparams de)\n \8846 d \8801 0)"
                                                                                              ::
                                                                                              Data.Text.Text)
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                   coe
                                                                     (case coe v19 of
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v20
                                                                          -> case coe v20 of
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                 -> coe
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                            (coe
                                                                                               v21)
                                                                                            (coe v4)
                                                                                            (coe
                                                                                               v5))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1462
                                                                                            v22))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v20
                                                                          -> case coe v7 of
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v21
                                                                                 -> case coe v21 of
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                        -> coe
                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                   (coe
                                                                                                      v3)
                                                                                                   (coe
                                                                                                      v22)
                                                                                                   (coe
                                                                                                      v5))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1464
                                                                                                   v23))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v21
                                                                                 -> case coe v8 of
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v22
                                                                                        -> case coe
                                                                                                  v22 of
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                                          (coe
                                                                                                             v3)
                                                                                                          (coe
                                                                                                             v4)
                                                                                                          (coe
                                                                                                             v23))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1466
                                                                                                          v24))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v22
                                                                                        -> coe
                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                ("DELEG: "
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                   MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                   v20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                      MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                      ("\nPOOL: "
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                         v21
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                            ("\nVDEL: "
                                                                                                             ::
                                                                                                             Data.Text.Text)
                                                                                                            v22)))))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                            _ -> let v14
                                                       = "Unexpected certificate in DELEG"
                                                         ::
                                                         Data.Text.Text in
                                                 coe
                                                   (case coe v7 of
                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v15
                                                        -> case coe v15 of
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                               -> coe
                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                    (coe
                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                          (coe v3) (coe v16)
                                                                          (coe v5))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1464
                                                                          v17))
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v15
                                                        -> case coe v8 of
                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v16
                                                               -> case coe v16 of
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                      -> coe
                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                           (coe
                                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                                                 (coe v3) (coe v4)
                                                                                 (coe v17))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1466
                                                                                 v18))
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v16
                                                               -> coe
                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                    (coe
                                                                       MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                       MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                       ("DELEG: " :: Data.Text.Text)
                                                                       (coe
                                                                          MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                          MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                          v14
                                                                          (coe
                                                                             MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                             MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                             ("\nPOOL: "
                                                                              ::
                                                                              Data.Text.Text)
                                                                             (coe
                                                                                MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                v15
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                   MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                   ("\nVDEL: "
                                                                                    ::
                                                                                    Data.Text.Text)
                                                                                   v16)))))
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> MAlonzo.RTE.mazUnreachableError)))))))))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTBASE
d_Computational'45'CERTBASE_2028 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2028 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 -> coe du_goal_2160 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Certs.Properties._._.pp
d_pp_2046 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2046 ~v0 v1 ~v2 ~v3 = du_pp_2046 v1
du_pp_2046 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pp_2046 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_882 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.votes
d_votes_2048 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_votes_2048 ~v0 v1 ~v2 ~v3 = du_votes_2048 v1
du_votes_2048 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
du_votes_2048 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_884 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.wdrls
d_wdrls_2050 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2050 ~v0 v1 ~v2 ~v3 = du_wdrls_2050 v1
du_wdrls_2050 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_wdrls_2050 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_886 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.rewards
d_rewards_2140 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2140 ~v0 ~v1 v2 ~v3 = du_rewards_2140 v2
du_rewards_2140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1052
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._._.voteDelegs
d_voteDelegs_2144 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2144 ~v0 ~v1 v2 ~v3 = du_voteDelegs_2144 v2
du_voteDelegs_2144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._.sep
d_sep_2146 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_sep_2146 ~v0 ~v1 ~v2 ~v3 = du_sep_2146
du_sep_2146 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
du_sep_2146 = coe (" | " :: Data.Text.Text)
-- Ledger.Conway.Conformance.Certs.Properties._.genErr
d_genErr_2150 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_2150 v0 v1 v2 ~v3 ~v4 = du_genErr_2150 v0 v1 v2
du_genErr_2150 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_2150 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                 (coe
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Axiom.Set.d_all'63'_1610
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased erased
                         (coe
                            MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                            (coe
                               (\ v4 ->
                                  coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (let v5
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                     (coe v0))) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                             (coe v5) (coe v6))))
                                    (coe v4)
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_548
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                             (coe v2)))))))
                         v3))
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                         (coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                         (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26 (coe v3))
                         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                    (let v3
                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_398
                          (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
                          (\ v4 -> MAlonzo.Code.Ledger.Address.d_stake_84 (coe v4))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_548
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                             (coe MAlonzo.Code.Ledger.Certs.d_wdrls_886 (coe v1)))))))
              erased in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
           -> coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (coe
                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                         (coe
                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                            (coe
                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                               (" \172 ( filter\738 isKeyHash (map\738 RwdAddr.stake (dom wdrls)) \8838 dom voteDelegs ) "
                                ::
                                Data.Text.Text)
                               (coe du_sep_2146))
                            (" filter\738 isKeyHash (map\738 RwdAddr.stake (dom wdrls)): "
                             ::
                             Data.Text.Text))
                         (coe
                            MAlonzo.Code.Data.String.Base.d_braces_48
                            (coe
                               MAlonzo.Code.Data.String.Base.d_intersperse_30
                               (", " :: Data.Text.Text)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du_map_22
                                  (coe
                                     MAlonzo.Code.Class.Show.Core.d_show_16
                                     (coe
                                        MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                              (coe
                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                           (coe
                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                              (coe v0)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
                                                   (coe v5))
                                                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_map_398
                                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (\ v5 ->
                                                 MAlonzo.Code.Ledger.Address.d_stake_84 (coe v5))
                                              (coe
                                                 MAlonzo.Code.Class.IsSet.du_dom_548
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.d_wdrls_886
                                                    (coe v1)))))))))))
                      (coe du_sep_2146))
                   (" dom voteDelegs: " :: Data.Text.Text))
                (coe
                   MAlonzo.Code.Data.String.Base.d_braces_48
                   (coe
                      MAlonzo.Code.Data.String.Base.d_intersperse_30
                      (", " :: Data.Text.Text)
                      (coe
                         MAlonzo.Code.Data.List.Base.du_map_22
                         (coe
                            MAlonzo.Code.Class.Show.Core.d_show_16
                            (coe
                               MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                     (coe
                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                  (coe
                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                        (coe v2)))))))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
           -> coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (coe
                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                         (coe
                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                            (coe
                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                               ("\172 ( map\738 (Bifunctor.map\8321 Bifunctor-\215 (RwdAddr.stake)) (wdrls \738) \8838 proj\8321 rewards )"
                                ::
                                Data.Text.Text)
                               (coe du_sep_2146))
                            (" map\738 (Bifunctor.map\8321 Bifunctor-\215 (RwdAddr.stake)) (wdrls \738): "
                             ::
                             Data.Text.Text))
                         (coe
                            MAlonzo.Code.Data.String.Base.d_braces_48
                            (coe
                               MAlonzo.Code.Data.String.Base.d_intersperse_30
                               (", " :: Data.Text.Text)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du_map_22
                                  (coe
                                     MAlonzo.Code.Class.Show.Core.d_show_16
                                     (coe
                                        MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                              (coe
                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                           (coe
                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                              (coe v0)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_map_398
                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe
                                              MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                                              (coe
                                                 MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                                              (coe
                                                 (\ v5 ->
                                                    MAlonzo.Code.Ledger.Address.d_stake_84
                                                      (coe v5))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.d_wdrls_886
                                                 (coe v1))))))))))
                      (coe du_sep_2146))
                   (" proj\8321 rewards: " :: Data.Text.Text))
                (coe
                   MAlonzo.Code.Data.String.Base.d_braces_48
                   (coe
                      MAlonzo.Code.Data.String.Base.d_intersperse_30
                      (", " :: Data.Text.Text)
                      (coe
                         MAlonzo.Code.Data.List.Base.du_map_22
                         (coe
                            MAlonzo.Code.Class.Show.Core.d_show_16
                            (coe
                               MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                     (coe
                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                  (coe
                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1052
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                        (coe v2)))))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties._.goal
d_goal_2160 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_goal_2160 v0 v1 v2 ~v3 = du_goal_2160 v0 v1 v2
du_goal_2160 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_goal_2160 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       (\ v3 ->
                          coe
                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                            (let v4
                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                             (coe v0))) in
                             coe
                               (let v5
                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                          (coe
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v4)
                                     (coe v5))))
                            (coe v3)
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                     (coe v2))))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                       (\ v3 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                            (coe
                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                            (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26 (coe v3))
                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_398
                          (MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (\ v3 -> MAlonzo.Code.Ledger.Address.d_stake_84 (coe v3))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_548
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                             (coe MAlonzo.Code.Ledger.Certs.d_wdrls_886 (coe v1))))))
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       (\ v3 ->
                          coe
                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                            (coe
                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                               (let v4
                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                (coe v0))) in
                                coe
                                  (let v5
                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                (coe v0)) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                        (coe v4) (coe v5))))
                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                            (coe v3)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1052
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                     (coe v2))))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_map_398
                       (MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                          (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                          (coe (\ v3 -> MAlonzo.Code.Ledger.Address.d_stake_84 (coe v3))))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                          (coe MAlonzo.Code.Ledger.Certs.d_wdrls_886 (coe v1)))))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then case coe v5 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                         -> coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056
                                       (let v7
                                              = MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1718
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v7)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                                   (coe v2)))
                                             (let v8
                                                    = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                   (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v8))
                                                   (let v9
                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_map_398
                                                         (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v9))
                                                         (coe
                                                            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_dom_548
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086
                                                                  (coe v2))))))
                                                   (let v9
                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe v9))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_678)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_676)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1050
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                             (coe v2)))
                                       (let v7
                                              = let v7
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                (coe v0))) in
                                                coe
                                                  (let v8
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                        (coe v7) (coe v8))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v7)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_constMap_1162
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (let v8
                                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_map_398
                                                      (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v8))
                                                      (\ v9 ->
                                                         MAlonzo.Code.Ledger.Address.d_stake_84
                                                           (coe v9))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_wdrls_886
                                                            (coe v1)))))
                                                (coe (0 :: Integer)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1052
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                                   (coe v2)))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1054
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                             (coe v2))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1084
                                       (coe v2))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1072
                                       (let v7
                                              = let v7
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                (coe v0))) in
                                                coe
                                                  (let v8
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                        (coe v7) (coe v8))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1362
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v7)
                                             (let v8
                                                    = coe
                                                        MAlonzo.Code.Class.HasAdd.Core.d__'43'__14
                                                        (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
                                                              (coe v0)))
                                                        (MAlonzo.Code.Ledger.Certs.d_epoch_880
                                                           (coe v1))
                                                        (let v8
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_mkGeneralizeTel_60573
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Certs.d_pp_882
                                                                      (coe v1))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Certs.d_votes_884
                                                                      (coe v1))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Certs.d_epoch_880
                                                                      (coe v1))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086
                                                                         (coe v2)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Certs.d_wdrls_886
                                                                      (coe v1))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                                                         (coe v2)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1052
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                                                         (coe v2)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Certs.d_coldCreds_888
                                                                      (coe v1))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1050
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                                                         (coe v2)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1054
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                                                         (coe v2)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1084
                                                                      (coe v2))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1068
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086
                                                                         (coe v2)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1070
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086
                                                                         (coe v2))) in
                                                         coe
                                                           (MAlonzo.Code.Ledger.PParams.d_drepActivity_374
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_'46'generalizedField'45'pp_60545
                                                                 (coe v8)))) in
                                              coe (coe (\ v9 -> v8)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086
                                                   (coe v2)))
                                             (let v8
                                                    = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                                   (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_804)
                                                   (let v9
                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe v9))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_votes_884
                                                            (coe v1))))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1068
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086
                                             (coe v2)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1070
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086
                                             (coe v2)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'base_1546
                                    v6))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v5)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe du_genErr_2150 (coe v0) (coe v1) (coe v2)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTS
d_Computational'45'CERTS_2204 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2204 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'''_1138
      (coe d_Computational'45'CERTBASE_2028 (coe v0))
      (coe d_Computational'45'CERT_1636 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
