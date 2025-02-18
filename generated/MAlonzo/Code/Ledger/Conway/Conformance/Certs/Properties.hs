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
d_DecEq'45'VDeleg_676 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_676 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_792
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.GovRole
d_GovRole_688 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.VDeleg
d_VDeleg_710 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__814 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__816 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__816 = erased
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__818 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__820 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__822 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__824 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv
d_CertEnv_842 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_866 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_866 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.DepositPurpose
d_DepositPurpose_870 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv.coldCreds
d_coldCreds_986 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_986 v0
  = coe MAlonzo.Code.Ledger.Certs.d_coldCreds_886 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv.epoch
d_epoch_988 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_866 -> AgdaAny
d_epoch_988 v0 = coe MAlonzo.Code.Ledger.Certs.d_epoch_878 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv.pp
d_pp_990 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_990 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv.votes
d_votes_992 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
d_votes_992 v0 = coe MAlonzo.Code.Ledger.Certs.d_votes_882 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv.wdrls
d_wdrls_994 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_994 v0 = coe MAlonzo.Code.Ledger.Certs.d_wdrls_884 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.completeness
d_completeness_1070 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1070 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.computeProof
d_computeProof_1076 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1076 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties.lookupDeposit
d_lookupDeposit_1096 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_810 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_1096 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822 (coe v0))
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v1))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-DELEG
d_Computational'45'DELEG_1104 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_1104 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496''7497'_960 v2 v3 v4
             -> coe
                  (\ v5 ->
                     case coe v5 of
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052 v6 v7 v8 v9
                         -> coe
                              (\ v10 ->
                                 let v11
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("Unexpected certificate in DELEG"
                                               ::
                                               Data.Text.Text)) in
                                 coe
                                   (case coe v10 of
                                      MAlonzo.Code.Ledger.Certs.C_delegate_832 v12 v13 v14 v15
                                        -> let v16
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
                                                                 (let v16
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v17
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                          (coe v16) (coe v17))))
                                                                 (coe v12)
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_dom_548
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                    (coe v8)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                              (coe v15)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                 (coe v2))))
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
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v17
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                          (coe v16) (coe v17))))
                                                                 (coe v12)
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_dom_548
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                    (coe v8)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                 (coe v15) (coe (0 :: Integer))))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_792
                                                                       (coe v0)))
                                                                 (coe v13)
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
                                                                       (\ v16 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666)
                                                                               (coe v16)))
                                                                       v4)
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
                                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680))
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
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                             (coe v0)))))
                                                                 (coe v14)
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
                                                                          (coe v3)))
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))))) in
                                           coe
                                             (case coe v16 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                  -> if coe v17
                                                       then case coe v18 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                                                           (let v20
                                                                                  = let v20
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v21
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_964
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                    erased v20)
                                                                                 (coe v12) (coe v13)
                                                                                 (coe v6)))
                                                                           (let v20
                                                                                  = let v20
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v21
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_964
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                    erased v20)
                                                                                 (coe v12) (coe v14)
                                                                                 (coe v7)))
                                                                           (let v20
                                                                                  = let v20
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v21
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                                                    erased v20)
                                                                                 (coe v8)
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
                                                                                       (coe v12)
                                                                                       (coe
                                                                                          (0 ::
                                                                                             Integer))))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                                                                              (coe v0) (coe v2)
                                                                              (coe v10) (coe v9)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1304
                                                                           v19))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v18)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v19
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
                                                                                     (let v19
                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (let v20
                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                              (coe
                                                                                                 v19)
                                                                                              (coe
                                                                                                 v20))))
                                                                                     (coe v12)
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                        (coe v8)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                  (coe v15)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                                     (coe v2))))
                                                                            erased in
                                                                  coe
                                                                    (case coe v19 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                         -> coe
                                                                              ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 .Ledger.PParams.PParams.keyDeposit pp)"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                         -> let v21
                                                                                  = coe
                                                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
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
                                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                             (coe
                                                                                                                v0))) in
                                                                                             coe
                                                                                               (let v22
                                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                                                               v12)
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                               (coe
                                                                                                  v8)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                            (coe
                                                                                               v15)
                                                                                            (coe
                                                                                               (0 ::
                                                                                                  Integer))))
                                                                                      erased in
                                                                            coe
                                                                              (case coe v21 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v22
                                                                                   -> coe
                                                                                        ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8712 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                         ::
                                                                                         Data.Text.Text)
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v22
                                                                                   -> let v23
                                                                                            = coe
                                                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                   (coe
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_792
                                                                                                         (coe
                                                                                                            v0)))
                                                                                                   (coe
                                                                                                      v13)
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
                                                                                                         (\ v23 ->
                                                                                                            coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666)
                                                                                                                 (coe
                                                                                                                    v23)))
                                                                                                         v4)
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
                                                                                                                     MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                erased in
                                                                                      coe
                                                                                        (case coe
                                                                                                v23 of
                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v24
                                                                                             -> coe
                                                                                                  ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (credVoter DRep x)) delegatees)\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just abstainRep \8759 just noConfidenceRep \8759 [])))"
                                                                                                   ::
                                                                                                   Data.Text.Text)
                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v24
                                                                                             -> coe
                                                                                                  ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                                   ::
                                                                                                   Data.Text.Text)
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Certs.C_dereg_834 v12 v13
                                        -> let v14
                                                 = d_lookupDeposit_1096
                                                     (coe v0) (coe v9)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_812
                                                        (coe v12)) in
                                           coe
                                             (case coe v14 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                  -> if coe v15
                                                       then case coe v16 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v17
                                                                -> case coe v17 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                       -> case coe v18 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                              -> let v22
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
                                                                                                    (let v22
                                                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                     (coe
                                                                                                                        v0))) in
                                                                                                     coe
                                                                                                       (let v23
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                                                                       v12)
                                                                                                    (coe
                                                                                                       (0 ::
                                                                                                          Integer)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                    (coe
                                                                                                       v8)))
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
                                                                                                       (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_812
                                                                                                          (coe
                                                                                                             v12))
                                                                                                       (coe
                                                                                                          v21))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                       (coe
                                                                                                          v9)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                       (coe
                                                                                                          v13)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                       (coe
                                                                                                          v13)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                          (coe
                                                                                                             v21)))))) in
                                                                                 coe
                                                                                   (case coe v22 of
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                        -> if coe
                                                                                                v23
                                                                                             then case coe
                                                                                                         v24 of
                                                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                      -> coe
                                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                                                                                                 (let v26
                                                                                                                        = let v26
                                                                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                          (coe
                                                                                                                                             v0))) in
                                                                                                                          coe
                                                                                                                            (let v27
                                                                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                          (coe
                                                                                                                                             v0)) in
                                                                                                                             coe
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                  (coe
                                                                                                                                     v26)
                                                                                                                                  (coe
                                                                                                                                     v27))) in
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
                                                                                                                          v26)
                                                                                                                       (coe
                                                                                                                          v6)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                          v12)))
                                                                                                                 (let v26
                                                                                                                        = let v26
                                                                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                          (coe
                                                                                                                                             v0))) in
                                                                                                                          coe
                                                                                                                            (let v27
                                                                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                          (coe
                                                                                                                                             v0)) in
                                                                                                                             coe
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                  (coe
                                                                                                                                     v26)
                                                                                                                                  (coe
                                                                                                                                     v27))) in
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
                                                                                                                          v26)
                                                                                                                       (coe
                                                                                                                          v7)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                          v12)))
                                                                                                                 (let v26
                                                                                                                        = let v26
                                                                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                          (coe
                                                                                                                                             v0))) in
                                                                                                                          coe
                                                                                                                            (let v27
                                                                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                          (coe
                                                                                                                                             v0)) in
                                                                                                                             coe
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                  (coe
                                                                                                                                     v26)
                                                                                                                                  (coe
                                                                                                                                     v27))) in
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
                                                                                                                          v26)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                             (coe
                                                                                                                                v8))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                             (coe
                                                                                                                                v8)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                          v12)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                                                                                                                    (coe
                                                                                                                       v0)
                                                                                                                    (coe
                                                                                                                       v2)
                                                                                                                    (coe
                                                                                                                       v10)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                          (coe
                                                                                                                             v9))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                          (coe
                                                                                                                             v9)))))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1306
                                                                                                                 v21
                                                                                                                 v25))
                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                             else coe
                                                                                                    seq
                                                                                                    (coe
                                                                                                       v24)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                       (let v25
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
                                                                                                                        (let v25
                                                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                         (coe
                                                                                                                                            v0))) in
                                                                                                                         coe
                                                                                                                           (let v26
                                                                                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                         (coe
                                                                                                                                            v0)) in
                                                                                                                            coe
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                 (coe
                                                                                                                                    v25)
                                                                                                                                 (coe
                                                                                                                                    v26))))
                                                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (coe
                                                                                                                           v12)
                                                                                                                        (coe
                                                                                                                           (0 ::
                                                                                                                              Integer)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                        (coe
                                                                                                                           v8)))
                                                                                                                  erased in
                                                                                                        coe
                                                                                                          (case coe
                                                                                                                  v25 of
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v26
                                                                                                               -> coe
                                                                                                                    ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v26
                                                                                                               -> let v27
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
                                                                                                                                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                                                     (coe
                                                                                                                                        v0))
                                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_812
                                                                                                                                     (coe
                                                                                                                                        v12))
                                                                                                                                  (coe
                                                                                                                                     v21))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                                  (coe
                                                                                                                                     v9)))
                                                                                                                            erased in
                                                                                                                  coe
                                                                                                                    (case coe
                                                                                                                            v27 of
                                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v28
                                                                                                                         -> coe
                                                                                                                              ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndep"
                                                                                                                               ::
                                                                                                                               Data.Text.Text)
                                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v28
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
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\nAny\n(\955 .patternInTele0 \8594 CredentialDeposit c \8801 .proj\8321 .patternInTele0)\n(dep \738)"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Certs.C_reg_846 v12 v13
                                        -> let v14
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
                                                              (let v14
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                       (coe v14) (coe v15))))
                                                              (coe v12)
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_dom_548
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                 (coe v8)))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                              (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                 (coe v2)))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                              (coe v13) (coe (0 :: Integer))))) in
                                           coe
                                             (case coe v14 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                  -> if coe v15
                                                       then case coe v16 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v17
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                                                           (coe v6) (coe v7)
                                                                           (let v18
                                                                                  = let v18
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v19
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                            (coe
                                                                                               v18)
                                                                                            (coe
                                                                                               v19))) in
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
                                                                                    erased v18)
                                                                                 (coe v8)
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
                                                                                       (coe v12)
                                                                                       (coe
                                                                                          (0 ::
                                                                                             Integer))))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                                                                              (coe v0) (coe v2)
                                                                              (coe v10) (coe v9)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1376
                                                                           v17))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v17
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                  (let v17
                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (let v18
                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              v18))))
                                                                                  (coe v12)
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                     (coe v8)))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                            erased in
                                                                  coe
                                                                    (case coe v17 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                         -> coe
                                                                              ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                         -> coe
                                                                              ("\172 (d \8801 .Ledger.PParams.PParams.keyDeposit pp \8846 d \8801 0)"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v11))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-POOL
d_Computational'45'POOL_1340 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_1340 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Certs.C_regpool_836 v5 v6
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
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                         (coe v0))))
                                v5
                                (coe
                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                   (coe MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v2)))) in
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
                                               MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916
                                               (let v10
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                        MAlonzo.Code.Ledger.Certs.d_pools_912
                                                        (coe v2))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Certs.d_retiring_914
                                                  (coe v2)))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'regpool_1232)))
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Certs.PState.pools ps)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Certs.C_retirepool_838 v5 v6
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                        (coe
                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916
                           (coe MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v2))
                           (let v7
                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                         (coe
                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                 (coe MAlonzo.Code.Ledger.Certs.d_retiring_914 (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'retirepool_1234))
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_1366 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_1366 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v2 v3 v4 v5 v6
             -> coe
                  (\ v7 ->
                     case coe v7 of
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068 v8 v9 v10
                         -> coe
                              (\ v11 ->
                                 let v12
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("Unexpected certificate in GOVCERT"
                                               ::
                                               Data.Text.Text)) in
                                 coe
                                   (case coe v11 of
                                      MAlonzo.Code.Ledger.Certs.C_regdrep_840 v13 v14 v15
                                        -> let v16
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
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.PParams.d_drepDeposit_372
                                                                 (coe v3)))
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
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v17
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                          (coe v16) (coe v17))))
                                                                 (coe v13)
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_dom_548
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                    (coe v8)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                              (coe v14) (coe (0 :: Integer)))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (let v16
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v17
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                       (coe v16) (coe v17))))
                                                              (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_dom_548
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                 (coe v8))))) in
                                           coe
                                             (case coe v16 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                  -> if coe v17
                                                       then case coe v18 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068
                                                                           (let v20
                                                                                  = let v20
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v21
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                                                    erased v20)
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
                                                                                       (coe v13)
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.HasAdd.Core.d__'43'__14
                                                                                          (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_580
                                                                                                (coe
                                                                                                   v0)))
                                                                                          v2
                                                                                          (MAlonzo.Code.Ledger.PParams.d_drepActivity_374
                                                                                             (coe
                                                                                                v3)))))
                                                                                 (coe v8)))
                                                                           (coe v9)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                                                                              (coe v0) (coe v3)
                                                                              (coe v11) (coe v10)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'regdrep_1450
                                                                           v19))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v18)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(d \8801 .Ledger.PParams.PParams.drepDeposit pp \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8713 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)\n \8846\n d \8801 0 \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps))"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Certs.C_deregdrep_842 v13 v14
                                        -> let v15
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (let v15
                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                            (coe v0))) in
                                                            coe
                                                              (let v16
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                            (coe v0)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                    (coe v15) (coe v16))))
                                                           (coe v13)
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_548
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                              (coe v8)))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                 (coe v0))
                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.C_DRepDeposit_816
                                                                 (coe v13))
                                                              (coe v14))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                              (coe v10)))) in
                                           coe
                                             (case coe v15 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                  -> if coe v16
                                                       then case coe v17 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                            (coe
                                                                                               v19)
                                                                                            (coe
                                                                                               v20))) in
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
                                                                                    erased v19)
                                                                                 (coe v8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                    v13)))
                                                                           (coe v9)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                                                                              (coe v0) (coe v3)
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                    (coe v10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v10)))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'deregdrep_1452
                                                                           v18))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v17)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v18
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                               (let v18
                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v19
                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                        (coe v18)
                                                                                        (coe v19))))
                                                                               (coe v13)
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                  (coe v8)))
                                                                            erased in
                                                                  coe
                                                                    (case coe v18 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                         -> coe
                                                                              ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                         -> coe
                                                                              ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (DRepDeposit c , d))\ndep"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Certs.C_ccreghot_844 v13 v14
                                        -> let v15
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
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v16
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                          (coe v15) (coe v16))))
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                    (let v15
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v16
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                             (coe v15)
                                                                             (coe v16))))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe v13)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                 (coe v9)))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (let v15
                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                            (coe v0))) in
                                                            coe
                                                              (let v16
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                            (coe v0)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                    (coe v15) (coe v16))))
                                                           (coe v13) (coe v6))) in
                                           coe
                                             (case coe v15 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                  -> if coe v16
                                                       then case coe v17 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068
                                                                           (coe v8)
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                            (coe
                                                                                               v19)
                                                                                            (coe
                                                                                               v20))) in
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
                                                                                    erased v19)
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
                                                                                       (coe v13)
                                                                                       (coe v14)))
                                                                                 (coe v9)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                                                                              (coe v0) (coe v3)
                                                                              (coe v11) (coe v10)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'ccreghot_1454
                                                                           v18))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v17)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v18
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
                                                                                     () erased ()
                                                                                     erased
                                                                                     (let v18
                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (let v19
                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 v19))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                        (let v18
                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                         (coe
                                                                                                            v0))) in
                                                                                         coe
                                                                                           (let v19
                                                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                         (coe
                                                                                                            v0)) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                 (coe
                                                                                                    v18)
                                                                                                 (coe
                                                                                                    v19))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                     (coe v13)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                     (coe v9)))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                            erased in
                                                                  coe
                                                                    (case coe v18 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                         -> coe
                                                                              ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 (c , nothing))\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738) ccKeys)"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                         -> coe
                                                                              ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 c)\ncc"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v12))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERT
d_Computational'45'CERT_1594 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_1594 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v2 v3 v4 v5 v6
             -> coe
                  (\ v7 ->
                     case coe v7 of
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084 v8 v9 v10
                         -> coe
                              (\ v11 ->
                                 let v12
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                           (d_Computational'45'POOL_1340 (coe v0)) v3 v9 v11 in
                                 coe
                                   (let v13
                                          = coe
                                              MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                              (d_Computational'45'GOVCERT_1366 (coe v0)) v1 v10
                                              v11 in
                                    coe
                                      (let v14 = MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v9) in
                                       coe
                                         (let v15
                                                = coe
                                                    MAlonzo.Code.Class.IsSet.du_dom_548
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1062
                                                       (coe v10)) in
                                          coe
                                            (let v16
                                                   = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
                                                       (coe v8) in
                                             coe
                                               (let v17
                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1046
                                                          (coe v8) in
                                                coe
                                                  (let v18
                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
                                                             (coe v8) in
                                                   coe
                                                     (let v19
                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1050
                                                                (coe v8) in
                                                      coe
                                                        (case coe v11 of
                                                           MAlonzo.Code.Ledger.Certs.C_delegate_832 v20 v21 v22 v23
                                                             -> let v24
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
                                                                                      (let v24
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                       (coe
                                                                                                          v0))) in
                                                                                       coe
                                                                                         (let v25
                                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                       (coe
                                                                                                          v0)) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                               (coe
                                                                                                  v24)
                                                                                               (coe
                                                                                                  v25))))
                                                                                      (coe v20)
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                         (coe v18)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                   (coe v23)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                                      (coe v3))))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                      (let v24
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                       (coe
                                                                                                          v0))) in
                                                                                       coe
                                                                                         (let v25
                                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                       (coe
                                                                                                          v0)) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                               (coe
                                                                                                  v24)
                                                                                               (coe
                                                                                                  v25))))
                                                                                      (coe v20)
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                         (coe v18)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                      (coe v23)
                                                                                      (coe
                                                                                         (0 ::
                                                                                            Integer))))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_792
                                                                                            (coe
                                                                                               v0)))
                                                                                      (coe v21)
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
                                                                                            (\ v24 ->
                                                                                               coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666)
                                                                                                    (coe
                                                                                                       v24)))
                                                                                            v15)
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
                                                                                                        MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680))
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
                                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                  (coe
                                                                                                     v0)))))
                                                                                      (coe v22)
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
                                                                                                  v14)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            erased
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))))) in
                                                                coe
                                                                  (case coe v24 of
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v25 v26
                                                                       -> if coe v25
                                                                            then case coe v26 of
                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v27
                                                                                     -> let v28
                                                                                              = coe
                                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                                                                                     (let v28
                                                                                                            = let v28
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                              (coe
                                                                                                                                 v0))) in
                                                                                                              coe
                                                                                                                (let v29
                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_964
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
                                                                                                              v20)
                                                                                                           (coe
                                                                                                              v21)
                                                                                                           (coe
                                                                                                              v16)))
                                                                                                     (let v28
                                                                                                            = let v28
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                              (coe
                                                                                                                                 v0))) in
                                                                                                              coe
                                                                                                                (let v29
                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_964
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
                                                                                                              v20)
                                                                                                           (coe
                                                                                                              v22)
                                                                                                           (coe
                                                                                                              v17)))
                                                                                                     (let v28
                                                                                                            = let v28
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                              (coe
                                                                                                                                 v0))) in
                                                                                                              coe
                                                                                                                (let v29
                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
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
                                                                                                              v18)
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
                                                                                                                    v20)
                                                                                                                 (coe
                                                                                                                    (0 ::
                                                                                                                       Integer))))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                                                                                                        (coe
                                                                                                           v0)
                                                                                                        (coe
                                                                                                           v3)
                                                                                                        (coe
                                                                                                           v11)
                                                                                                        (coe
                                                                                                           v19)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1304
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
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                          (coe
                                                                                                             v29)
                                                                                                          (coe
                                                                                                             v9)
                                                                                                          (coe
                                                                                                             v10))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
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
                                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                   (let v27
                                                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                    (coe
                                                                                                                                       v0))) in
                                                                                                                    coe
                                                                                                                      (let v28
                                                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                    (coe
                                                                                                                                       v0)) in
                                                                                                                       coe
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                            (coe
                                                                                                                               v27)
                                                                                                                            (coe
                                                                                                                               v28))))
                                                                                                                   (coe
                                                                                                                      v20)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                      (coe
                                                                                                                         v18)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                (coe
                                                                                                                   v23)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                                                                   (coe
                                                                                                                      v3))))
                                                                                                          erased in
                                                                                                coe
                                                                                                  (case coe
                                                                                                          v27 of
                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v28
                                                                                                       -> coe
                                                                                                            ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 .Ledger.PParams.PParams.keyDeposit pp)"
                                                                                                             ::
                                                                                                             Data.Text.Text)
                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v28
                                                                                                       -> let v29
                                                                                                                = coe
                                                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                          (let v29
                                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                           (coe
                                                                                                                                              v0))) in
                                                                                                                           coe
                                                                                                                             (let v30
                                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                           (coe
                                                                                                                                              v0)) in
                                                                                                                              coe
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                   (coe
                                                                                                                                      v29)
                                                                                                                                   (coe
                                                                                                                                      v30))))
                                                                                                                          (coe
                                                                                                                             v20)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                             (coe
                                                                                                                                v18)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                          (coe
                                                                                                                             v23)
                                                                                                                          (coe
                                                                                                                             (0 ::
                                                                                                                                Integer))))
                                                                                                                    erased in
                                                                                                          coe
                                                                                                            (case coe
                                                                                                                    v29 of
                                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v30
                                                                                                                 -> coe
                                                                                                                      ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8712 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                                                       ::
                                                                                                                       Data.Text.Text)
                                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v30
                                                                                                                 -> let v31
                                                                                                                          = coe
                                                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_792
                                                                                                                                       (coe
                                                                                                                                          v0)))
                                                                                                                                 (coe
                                                                                                                                    v21)
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
                                                                                                                                       (\ v31 ->
                                                                                                                                          coe
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666)
                                                                                                                                               (coe
                                                                                                                                                  v31)))
                                                                                                                                       v15)
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
                                                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                                              erased in
                                                                                                                    coe
                                                                                                                      (case coe
                                                                                                                              v31 of
                                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v32
                                                                                                                           -> coe
                                                                                                                                ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (credVoter DRep x)) delegatees)\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just abstainRep \8759 just noConfidenceRep \8759 [])))"
                                                                                                                                 ::
                                                                                                                                 Data.Text.Text)
                                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v32
                                                                                                                           -> coe
                                                                                                                                ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                                                                 ::
                                                                                                                                 Data.Text.Text)
                                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                                  coe
                                                                                    (case coe v27 of
                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v28
                                                                                         -> case coe
                                                                                                   v28 of
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                           (coe
                                                                                                              v29)
                                                                                                           (coe
                                                                                                              v9)
                                                                                                           (coe
                                                                                                              v10))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
                                                                                                           v30))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v28
                                                                                         -> case coe
                                                                                                   v12 of
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v29
                                                                                                -> case coe
                                                                                                          v29 of
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                                       -> coe
                                                                                                            MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                  (coe
                                                                                                                     v8)
                                                                                                                  (coe
                                                                                                                     v30)
                                                                                                                  (coe
                                                                                                                     v10))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1460
                                                                                                                  v31))
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v29
                                                                                                -> case coe
                                                                                                          v13 of
                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v30
                                                                                                       -> case coe
                                                                                                                 v30 of
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                              -> coe
                                                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                         (coe
                                                                                                                            v8)
                                                                                                                         (coe
                                                                                                                            v9)
                                                                                                                         (coe
                                                                                                                            v31))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1462
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
                                                           MAlonzo.Code.Ledger.Certs.C_dereg_834 v20 v21
                                                             -> let v22
                                                                      = d_lookupDeposit_1096
                                                                          (coe v0) (coe v19)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_812
                                                                             (coe v20)) in
                                                                coe
                                                                  (case coe v22 of
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                       -> if coe v23
                                                                            then case coe v24 of
                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                     -> case coe
                                                                                               v25 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                            -> case coe
                                                                                                      v26 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                                   -> let v30
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
                                                                                                                         (let v30
                                                                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                          (coe
                                                                                                                                             v0))) in
                                                                                                                          coe
                                                                                                                            (let v31
                                                                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                          (coe
                                                                                                                                             v0)) in
                                                                                                                             coe
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                  (coe
                                                                                                                                     v30)
                                                                                                                                  (coe
                                                                                                                                     v31))))
                                                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                         (coe
                                                                                                                            v20)
                                                                                                                         (coe
                                                                                                                            (0 ::
                                                                                                                               Integer)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                         (coe
                                                                                                                            v18)))
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
                                                                                                                            (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                                               (coe
                                                                                                                                  v0))
                                                                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_812
                                                                                                                               (coe
                                                                                                                                  v20))
                                                                                                                            (coe
                                                                                                                               v29))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                            (coe
                                                                                                                               v19)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                            (coe
                                                                                                                               v21)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                            (coe
                                                                                                                               v21)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                               (coe
                                                                                                                                  v29)))))) in
                                                                                                      coe
                                                                                                        (case coe
                                                                                                                v30 of
                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v31 v32
                                                                                                             -> if coe
                                                                                                                     v31
                                                                                                                  then case coe
                                                                                                                              v32 of
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v33
                                                                                                                           -> let v34
                                                                                                                                    = coe
                                                                                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                                                                                                                           (let v34
                                                                                                                                                  = let v34
                                                                                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                                                    (coe
                                                                                                                                                                       v0))) in
                                                                                                                                                    coe
                                                                                                                                                      (let v35
                                                                                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                                                    (coe
                                                                                                                                                                       v0)) in
                                                                                                                                                       coe
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                            (coe
                                                                                                                                                               v34)
                                                                                                                                                            (coe
                                                                                                                                                               v35))) in
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
                                                                                                                                                    v34)
                                                                                                                                                 (coe
                                                                                                                                                    v16)
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                                                    v20)))
                                                                                                                                           (let v34
                                                                                                                                                  = let v34
                                                                                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                                                    (coe
                                                                                                                                                                       v0))) in
                                                                                                                                                    coe
                                                                                                                                                      (let v35
                                                                                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                                                    (coe
                                                                                                                                                                       v0)) in
                                                                                                                                                       coe
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                            (coe
                                                                                                                                                               v34)
                                                                                                                                                            (coe
                                                                                                                                                               v35))) in
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
                                                                                                                                                    v34)
                                                                                                                                                 (coe
                                                                                                                                                    v17)
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                                                    v20)))
                                                                                                                                           (let v34
                                                                                                                                                  = let v34
                                                                                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                                                    (coe
                                                                                                                                                                       v0))) in
                                                                                                                                                    coe
                                                                                                                                                      (let v35
                                                                                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                                                    (coe
                                                                                                                                                                       v0)) in
                                                                                                                                                       coe
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                            (coe
                                                                                                                                                               v34)
                                                                                                                                                            (coe
                                                                                                                                                               v35))) in
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
                                                                                                                                                    v34)
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                                                       (coe
                                                                                                                                                          v18))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                       (coe
                                                                                                                                                          v18)))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                                                    v20)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                                                                                                                                              (coe
                                                                                                                                                 v0)
                                                                                                                                              (coe
                                                                                                                                                 v3)
                                                                                                                                              (coe
                                                                                                                                                 v11)
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                                                    (coe
                                                                                                                                                       v19))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                    (coe
                                                                                                                                                       v19)))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1306
                                                                                                                                           v29
                                                                                                                                           v33) in
                                                                                                                              coe
                                                                                                                                (case coe
                                                                                                                                        v34 of
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                                     -> coe
                                                                                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                                                (coe
                                                                                                                                                   v35)
                                                                                                                                                (coe
                                                                                                                                                   v9)
                                                                                                                                                (coe
                                                                                                                                                   v10))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
                                                                                                                                                v36))
                                                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                  else (let v33
                                                                                                                              = seq
                                                                                                                                  (coe
                                                                                                                                     v32)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                     (let v33
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
                                                                                                                                                      (let v33
                                                                                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                                                       (coe
                                                                                                                                                                          v0))) in
                                                                                                                                                       coe
                                                                                                                                                         (let v34
                                                                                                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                                                       (coe
                                                                                                                                                                          v0)) in
                                                                                                                                                          coe
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                               (coe
                                                                                                                                                                  v33)
                                                                                                                                                               (coe
                                                                                                                                                                  v34))))
                                                                                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                      (coe
                                                                                                                                                         v20)
                                                                                                                                                      (coe
                                                                                                                                                         (0 ::
                                                                                                                                                            Integer)))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                                                      (coe
                                                                                                                                                         v18)))
                                                                                                                                                erased in
                                                                                                                                      coe
                                                                                                                                        (case coe
                                                                                                                                                v33 of
                                                                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v34
                                                                                                                                             -> coe
                                                                                                                                                  ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                                                                                                   ::
                                                                                                                                                   Data.Text.Text)
                                                                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v34
                                                                                                                                             -> let v35
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
                                                                                                                                                                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                                                                                   (coe
                                                                                                                                                                      v0))
                                                                                                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_812
                                                                                                                                                                   (coe
                                                                                                                                                                      v20))
                                                                                                                                                                (coe
                                                                                                                                                                   v29))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                                                                (coe
                                                                                                                                                                   v19)))
                                                                                                                                                          erased in
                                                                                                                                                coe
                                                                                                                                                  (case coe
                                                                                                                                                          v35 of
                                                                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v36
                                                                                                                                                       -> coe
                                                                                                                                                            ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndep"
                                                                                                                                                             ::
                                                                                                                                                             Data.Text.Text)
                                                                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v36
                                                                                                                                                       -> coe
                                                                                                                                                            ("\172 (md \8801 nothing \8846 md \8801 just d)"
                                                                                                                                                             ::
                                                                                                                                                             Data.Text.Text)
                                                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                                                                        coe
                                                                                                                          (case coe
                                                                                                                                  v33 of
                                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v34
                                                                                                                               -> case coe
                                                                                                                                         v34 of
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                                      -> coe
                                                                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                                                 (coe
                                                                                                                                                    v35)
                                                                                                                                                 (coe
                                                                                                                                                    v9)
                                                                                                                                                 (coe
                                                                                                                                                    v10))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
                                                                                                                                                 v36))
                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v34
                                                                                                                               -> case coe
                                                                                                                                         v12 of
                                                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v35
                                                                                                                                      -> case coe
                                                                                                                                                v35 of
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                                                             -> coe
                                                                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                                                        (coe
                                                                                                                                                           v8)
                                                                                                                                                        (coe
                                                                                                                                                           v36)
                                                                                                                                                        (coe
                                                                                                                                                           v10))
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1460
                                                                                                                                                        v37))
                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v35
                                                                                                                                      -> case coe
                                                                                                                                                v13 of
                                                                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v36
                                                                                                                                             -> case coe
                                                                                                                                                       v36 of
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                                                                                    -> coe
                                                                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                                                               (coe
                                                                                                                                                                  v8)
                                                                                                                                                               (coe
                                                                                                                                                                  v9)
                                                                                                                                                               (coe
                                                                                                                                                                  v37))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1462
                                                                                                                                                               v38))
                                                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v36
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
                                                                                                                                                        v34
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                                                           MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                                                           ("\nPOOL: "
                                                                                                                                                            ::
                                                                                                                                                            Data.Text.Text)
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                                                              MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                                                              v35
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                                                                 MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                                                                 ("\nVDEL: "
                                                                                                                                                                  ::
                                                                                                                                                                  Data.Text.Text)
                                                                                                                                                                 v36)))))
                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            else (let v25
                                                                                        = seq
                                                                                            (coe
                                                                                               v24)
                                                                                            (coe
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                               (coe
                                                                                                  ("\172\nAny\n(\955 .patternInTele0 \8594 CredentialDeposit c \8801 .proj\8321 .patternInTele0)\n(dep \738)"
                                                                                                   ::
                                                                                                   Data.Text.Text))) in
                                                                                  coe
                                                                                    (case coe v25 of
                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v26
                                                                                         -> case coe
                                                                                                   v26 of
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                           (coe
                                                                                                              v27)
                                                                                                           (coe
                                                                                                              v9)
                                                                                                           (coe
                                                                                                              v10))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
                                                                                                           v28))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v26
                                                                                         -> case coe
                                                                                                   v12 of
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v27
                                                                                                -> case coe
                                                                                                          v27 of
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                                       -> coe
                                                                                                            MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                  (coe
                                                                                                                     v8)
                                                                                                                  (coe
                                                                                                                     v28)
                                                                                                                  (coe
                                                                                                                     v10))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1460
                                                                                                                  v29))
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v27
                                                                                                -> case coe
                                                                                                          v13 of
                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v28
                                                                                                       -> case coe
                                                                                                                 v28 of
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                              -> coe
                                                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                         (coe
                                                                                                                            v8)
                                                                                                                         (coe
                                                                                                                            v9)
                                                                                                                         (coe
                                                                                                                            v29))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1462
                                                                                                                         v30))
                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v28
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
                                                                                                                  v26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                     ("\nPOOL: "
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                        MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                        v27
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                           MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                           ("\nVDEL: "
                                                                                                                            ::
                                                                                                                            Data.Text.Text)
                                                                                                                           v28)))))
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           MAlonzo.Code.Ledger.Certs.C_reg_846 v20 v21
                                                             -> let v22
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
                                                                                   (let v22
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v23
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                            (coe
                                                                                               v22)
                                                                                            (coe
                                                                                               v23))))
                                                                                   (coe v20)
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                      (coe v18)))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                   (coe v21)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
                                                                                      (coe v3)))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                   (coe v21)
                                                                                   (coe
                                                                                      (0 ::
                                                                                         Integer))))) in
                                                                coe
                                                                  (case coe v22 of
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                       -> if coe v23
                                                                            then case coe v24 of
                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                     -> let v26
                                                                                              = coe
                                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                                                                                     (coe
                                                                                                        v16)
                                                                                                     (coe
                                                                                                        v17)
                                                                                                     (let v26
                                                                                                            = let v26
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                              (coe
                                                                                                                                 v0))) in
                                                                                                              coe
                                                                                                                (let v27
                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                              (coe
                                                                                                                                 v0)) in
                                                                                                                 coe
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                      (coe
                                                                                                                         v26)
                                                                                                                      (coe
                                                                                                                         v27))) in
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
                                                                                                              v26)
                                                                                                           (coe
                                                                                                              v18)
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
                                                                                                                    v20)
                                                                                                                 (coe
                                                                                                                    (0 ::
                                                                                                                       Integer))))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                                                                                                        (coe
                                                                                                           v0)
                                                                                                        (coe
                                                                                                           v3)
                                                                                                        (coe
                                                                                                           v11)
                                                                                                        (coe
                                                                                                           v19)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1376
                                                                                                     v25) in
                                                                                        coe
                                                                                          (case coe
                                                                                                  v26 of
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                          (coe
                                                                                                             v27)
                                                                                                          (coe
                                                                                                             v9)
                                                                                                          (coe
                                                                                                             v10))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
                                                                                                          v28))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            else (let v25
                                                                                        = seq
                                                                                            (coe
                                                                                               v24)
                                                                                            (coe
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                               (let v25
                                                                                                      = coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                (let v25
                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                 (coe
                                                                                                                                    v0))) in
                                                                                                                 coe
                                                                                                                   (let v26
                                                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                                                                                 (coe
                                                                                                                                    v0)) in
                                                                                                                    coe
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                         (coe
                                                                                                                            v25)
                                                                                                                         (coe
                                                                                                                            v26))))
                                                                                                                (coe
                                                                                                                   v20)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                   (coe
                                                                                                                      v18)))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                                          erased in
                                                                                                coe
                                                                                                  (case coe
                                                                                                          v25 of
                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v26
                                                                                                       -> coe
                                                                                                            ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)"
                                                                                                             ::
                                                                                                             Data.Text.Text)
                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v26
                                                                                                       -> coe
                                                                                                            ("\172 (d \8801 .Ledger.PParams.PParams.keyDeposit pp \8846 d \8801 0)"
                                                                                                             ::
                                                                                                             Data.Text.Text)
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                                  coe
                                                                                    (case coe v25 of
                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v26
                                                                                         -> case coe
                                                                                                   v26 of
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                           (coe
                                                                                                              v27)
                                                                                                           (coe
                                                                                                              v9)
                                                                                                           (coe
                                                                                                              v10))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
                                                                                                           v28))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v26
                                                                                         -> case coe
                                                                                                   v12 of
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v27
                                                                                                -> case coe
                                                                                                          v27 of
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                                       -> coe
                                                                                                            MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                  (coe
                                                                                                                     v8)
                                                                                                                  (coe
                                                                                                                     v28)
                                                                                                                  (coe
                                                                                                                     v10))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1460
                                                                                                                  v29))
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v27
                                                                                                -> case coe
                                                                                                          v13 of
                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v28
                                                                                                       -> case coe
                                                                                                                 v28 of
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                              -> coe
                                                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                                         (coe
                                                                                                                            v8)
                                                                                                                         (coe
                                                                                                                            v9)
                                                                                                                         (coe
                                                                                                                            v29))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1462
                                                                                                                         v30))
                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v28
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
                                                                                                                  v26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                     ("\nPOOL: "
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                        MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                        v27
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                           MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                           ("\nVDEL: "
                                                                                                                            ::
                                                                                                                            Data.Text.Text)
                                                                                                                           v28)))))
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> let v20
                                                                      = "Unexpected certificate in DELEG"
                                                                        ::
                                                                        Data.Text.Text in
                                                                coe
                                                                  (case coe v12 of
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v21
                                                                       -> case coe v21 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                              -> coe
                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                         (coe v8)
                                                                                         (coe v22)
                                                                                         (coe v10))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1460
                                                                                         v23))
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v21
                                                                       -> case coe v13 of
                                                                            MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v22
                                                                              -> case coe v22 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                     -> coe
                                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                                                                (coe
                                                                                                   v8)
                                                                                                (coe
                                                                                                   v9)
                                                                                                (coe
                                                                                                   v23))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1462
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
                                                                     _ -> MAlonzo.RTE.mazUnreachableError))))))))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTBASE
d_Computational'45'CERTBASE_2028 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2028 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v2 v3 v4 v5 v6
             -> coe
                  (\ v7 v8 ->
                     coe
                       du_goal_2154 (coe v0) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties._._.rewards
d_rewards_2134 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 = du_rewards_2134 v6
du_rewards_2134 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._._.voteDelegs
d_voteDelegs_2138 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_voteDelegs_2138 v6
du_voteDelegs_2138 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._.sep
d_sep_2140 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_sep_2140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 = du_sep_2140
du_sep_2140 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
du_sep_2140 = coe (" | " :: Data.Text.Text)
-- Ledger.Conway.Conformance.Certs.Properties._.genErr
d_genErr_2144 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_2144 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8
  = du_genErr_2144 v0 v4 v6
du_genErr_2144 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_2144 v0 v1 v2
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
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                     (coe v0))) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
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
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v1))))))
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
                               (coe du_sep_2140))
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
                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                           (coe
                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                                 (coe v1))))))))))
                      (coe du_sep_2140))
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
                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                  (coe
                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
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
                               (coe du_sep_2140))
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
                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                           (coe
                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
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
                                              (coe v1)))))))))
                      (coe du_sep_2140))
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
                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                  (coe
                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                        (coe v2)))))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties._.goal
d_goal_2154 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_goal_2154 v0 v1 v2 v3 v4 v5 v6 ~v7
  = du_goal_2154 v0 v1 v2 v3 v4 v5 v6
du_goal_2154 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_goal_2154 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       (\ v7 ->
                          coe
                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                            (let v8
                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                             (coe v0))) in
                             coe
                               (let v9
                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                          (coe
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v8)
                                     (coe v9))))
                            (coe v7)
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                     (coe v6))))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                       (\ v7 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                            (coe
                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                            (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26 (coe v7))
                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_398
                          (MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (\ v7 -> MAlonzo.Code.Ledger.Address.d_stake_84 (coe v7))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_548
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v4)))))
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       (\ v7 ->
                          coe
                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                            (coe
                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                               (let v8
                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                (coe v0))) in
                                coe
                                  (let v9
                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                (coe v0)) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                        (coe v8) (coe v9))))
                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                            (coe v7)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                     (coe v6))))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_map_398
                       (MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                          (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                          (coe (\ v7 -> MAlonzo.Code.Ledger.Address.d_stake_84 (coe v7))))
                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v4))))) in
    coe
      (case coe v7 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
           -> if coe v8
                then case coe v9 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                         -> coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                       (let v11
                                              = MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_792
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
                                                erased v11)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                                   (coe v6)))
                                             (let v12
                                                    = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                   (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v12))
                                                   (let v13
                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_map_398
                                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_dom_548
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1062
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
                                                                  (coe v6))))))
                                                   (let v13
                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1046
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                             (coe v6)))
                                       (let v11
                                              = let v11
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                (coe v0))) in
                                                coe
                                                  (let v12
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                        (coe v11) (coe v12))) in
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
                                                erased v11)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_constMap_1162
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (let v12
                                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_map_398
                                                      (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v12))
                                                      (\ v13 ->
                                                         MAlonzo.Code.Ledger.Address.d_stake_84
                                                           (coe v13))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                         (coe v4))))
                                                (coe (0 :: Integer)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                                   (coe v6)))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1050
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                             (coe v6))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1080
                                       (coe v6))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068
                                       (let v11
                                              = let v11
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                (coe v0))) in
                                                coe
                                                  (let v12
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                        (coe v11) (coe v12))) in
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
                                                erased v11)
                                             (let v12
                                                    = coe
                                                        MAlonzo.Code.Class.HasAdd.Core.d__'43'__14
                                                        (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_580
                                                              (coe v0)))
                                                        v1
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_mkGeneralizeTel_42471
                                                                   (coe v2) (coe v3) (coe v1)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1062
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
                                                                         (coe v6)))
                                                                   (coe v4)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                                                         (coe v6)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                                                         (coe v6)))
                                                                   (coe v5)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1046
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                                                         (coe v6)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1050
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                                                         (coe v6)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1080
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1064
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
                                                                         (coe v6)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1066
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
                                                                         (coe v6))) in
                                                         coe
                                                           (MAlonzo.Code.Ledger.PParams.d_drepActivity_374
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_'46'generalizedField'45'pp_42443
                                                                 (coe v12)))) in
                                              coe (coe (\ v13 -> v12)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1062
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
                                                   (coe v6)))
                                             (let v12
                                                    = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                                   (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v12))
                                                   (coe
                                                      MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_794)
                                                   (let v13
                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe v13))
                                                         (coe v3)))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1064
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
                                             (coe v6)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1066
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
                                             (coe v6)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'base_1542
                                    v10))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v9)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe du_genErr_2144 (coe v0) (coe v4) (coe v6)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTS
d_Computational'45'CERTS_2192 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2192 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'''_1138
      (coe d_Computational'45'CERTBASE_2028 (coe v0))
      (coe d_Computational'45'CERT_1594 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
