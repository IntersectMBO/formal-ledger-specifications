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
import qualified MAlonzo.Code.Agda.Builtin.Reflection
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
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError

-- _.DecEq-Credential
d_DecEq'45'Credential_64 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_64 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_64 v2 v3
du_DecEq'45'Credential_64 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_64 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe v0) (coe v1)
-- _.Show-Credential
d_Show'45'Credential_238 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_238 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_238
du_Show'45'Credential_238 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_238 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- _.Show-Credential×Coin
d_Show'45'Credential'215'Coin_240 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_240 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_240
du_Show'45'Credential'215'Coin_240 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_240 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- _.isKeyHash
d_isKeyHash_332 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_332 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-VDeleg
d_DecEq'45'VDeleg_756 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_894
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.GovRole
d_GovRole_772 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.VDeleg
d_VDeleg_802 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__916 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__918 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__918 = erased
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__920 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__922 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__924 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__926 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_976 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.DepositPurpose
d_DepositPurpose_980 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.completeness
d_completeness_1282 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1282 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.computeProof
d_computeProof_1288 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1288 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties.lookupDeposit
d_lookupDeposit_1308 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_914 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_1308 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                 (coe v0))
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v1))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-DELEG
d_Computational'45'DELEG_1316 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_1316 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in DELEG" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1010 v5 v6 v7 v8
                -> let v9
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
                                         (let v9
                                                = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                          (coe v0))) in
                                          coe
                                            (let v10
                                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                  (coe v9) (coe v10))))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_548
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                               (coe v2))))
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v8)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                            (coe v1)))))
                                (coe
                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (let v9
                                                = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                          (coe v0))) in
                                          coe
                                            (let v10
                                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                  (coe v9) (coe v10))))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_548
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                               (coe v2))))
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                         (coe v8) (coe (0 :: Integer))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_894
                                               (coe v0)))
                                         (coe v6)
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
                                               (\ v9 ->
                                                  coe
                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_752
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_742)
                                                       (coe v9)))
                                               (MAlonzo.Code.Ledger.Conway.Certs.d_delegatees_1258
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_fromList_428
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstainRep_754))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.GovernanceActions.C_noConfidenceRep_756))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                     (coe v0)))))
                                         (coe v7)
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
                                               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Certs.d_pools_1256
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
                     (case coe v9 of
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                          -> if coe v10
                               then case coe v11 of
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                        -> coe
                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1296)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (let v13
                                                             = let v13
                                                                     = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v14
                                                                        = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                       (coe v13) (coe v14))) in
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
                                                               erased v13)
                                                            (coe v5) (coe v6)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (let v13
                                                                = let v13
                                                                        = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v14
                                                                           = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                          (coe v13) (coe v14))) in
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
                                                                  erased v13)
                                                               (coe v5) (coe v7)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1256
                                                                  (coe v2))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (let v13
                                                                   = let v13
                                                                           = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v14
                                                                              = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                             (coe v13)
                                                                             (coe v14))) in
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
                                                                     erased v13)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                     (coe v2))
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
                                                                        (coe v5)
                                                                        (coe (0 :: Integer))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1324
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                                  (coe v1))
                                                               (coe v3)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                  (coe v2)))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1524
                                                   v12))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v11)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (let v12
                                                = coe
                                                    MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                             (let v12
                                                                    = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                              (coe v0))) in
                                                              coe
                                                                (let v13
                                                                       = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                      (coe v12) (coe v13))))
                                                             (coe v5)
                                                             (coe
                                                                MAlonzo.Code.Class.IsSet.du_dom_548
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                   (coe v2))))
                                                          (coe
                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                          (coe
                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                                (coe v1)))))
                                                    erased in
                                          coe
                                            (case coe v12 of
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                 -> coe
                                                      ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Conformance.Certs.DState.rewards ds))) \8594\n d \8801\n .Ledger.Conway.PParams.PParams.keyDeposit\n (.Ledger.Conway.Certs.DelegEnv.pparams de))"
                                                       ::
                                                       Data.Text.Text)
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                 -> let v14
                                                          = coe
                                                              MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                    (let v14
                                                                           = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v15
                                                                              = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                             (coe v14) (coe v15))))
                                                                    (coe v5)
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_dom_548
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                          (coe v2))))
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                    (coe v8) (coe (0 :: Integer))))
                                                              erased in
                                                    coe
                                                      (case coe v14 of
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                                           -> coe
                                                                ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8712 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Conformance.Certs.DState.rewards ds))) \8594\n d \8801 0)"
                                                                 ::
                                                                 Data.Text.Text)
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                                           -> let v16
                                                                    = coe
                                                                        MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_894
                                                                                 (coe v0)))
                                                                           (coe v6)
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
                                                                                         MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_752
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_742)
                                                                                         (coe v16)))
                                                                                 (MAlonzo.Code.Ledger.Conway.Certs.d_delegatees_1258
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
                                                                                             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstainRep_754))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_noConfidenceRep_756))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                        erased in
                                                              coe
                                                                (case coe v16 of
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                     -> coe
                                                                          ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (credVoter DRep x))\n  (.Ledger.Conway.Certs.DelegEnv.delegatees de))\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just abstainRep \8759 just noConfidenceRep \8759 [])))"
                                                                           ::
                                                                           Data.Text.Text)
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                     -> coe
                                                                          ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.Ledger.Conway.Certs.DelegEnv.pools de)))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                           ::
                                                                           Data.Text.Text)
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1012 v5 v6
                -> let v7
                         = d_lookupDeposit_1308
                             (coe v0)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                (coe v2))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
                                (coe v5)) in
                   coe
                     (case coe v7 of
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                          -> if coe v8
                               then case coe v9 of
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                        -> case coe v10 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                               -> case coe v11 of
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                      -> let v15
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
                                                                            () erased () erased
                                                                            (let v15
                                                                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v16
                                                                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                     (coe v15)
                                                                                     (coe v16))))
                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v5)
                                                                            (coe (0 :: Integer)))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                               (coe v2))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                            (coe
                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                               () erased () erased
                                                                               (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                                                                  (coe v0))
                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
                                                                                  (coe v5))
                                                                               (coe v14))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                  (coe v2))))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                               (coe
                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                               (coe v6)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                               (coe
                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                               (coe v6)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                  (coe v14)))))) in
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
                                                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1296)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (let v19
                                                                                                   = let v19
                                                                                                           = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                     (coe
                                                                                                                        v0))) in
                                                                                                     coe
                                                                                                       (let v20
                                                                                                              = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                     (coe
                                                                                                                        v0)) in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
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
                                                                                                     erased
                                                                                                     v19)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                                                                                     (coe
                                                                                                        v2))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                     v5)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                               (let v19
                                                                                                      = let v19
                                                                                                              = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v20
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                        (coe
                                                                                                                           v0)) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
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
                                                                                                        erased
                                                                                                        v19)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1256
                                                                                                        (coe
                                                                                                           v2))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                        v5)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (let v19
                                                                                                         = let v19
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v20
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
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
                                                                                                           erased
                                                                                                           v19)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                                                 (coe
                                                                                                                    v2)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                                                 (coe
                                                                                                                    v2))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                           v5)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1324
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                                                                        (coe
                                                                                                           v1))
                                                                                                     (coe
                                                                                                        v3)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                                              (coe
                                                                                                                 v2)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                                              (coe
                                                                                                                 v2)))))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1526
                                                                                         v14 v18))
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     else coe
                                                                            seq (coe v17)
                                                                            (coe
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                               (let v18
                                                                                      = coe
                                                                                          MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
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
                                                                                                (let v18
                                                                                                       = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                 (coe
                                                                                                                    v0))) in
                                                                                                 coe
                                                                                                   (let v19
                                                                                                          = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                 (coe
                                                                                                                    v0)) in
                                                                                                    coe
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                                         (coe
                                                                                                            v18)
                                                                                                         (coe
                                                                                                            v19))))
                                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   v5)
                                                                                                (coe
                                                                                                   (0 ::
                                                                                                      Integer)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                                   (coe
                                                                                                      v2))))
                                                                                          erased in
                                                                                coe
                                                                                  (case coe v18 of
                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                                       -> coe
                                                                                            ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (c , 0))\n(.Ledger.Conway.Conformance.Certs.DState.rewards ds)"
                                                                                             ::
                                                                                             Data.Text.Text)
                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                                       -> let v20
                                                                                                = coe
                                                                                                    MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
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
                                                                                                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
                                                                                                             (coe
                                                                                                                v5))
                                                                                                          (coe
                                                                                                             v14))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                                             (coe
                                                                                                                v2))))
                                                                                                    erased in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v20 of
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                                 -> coe
                                                                                                      ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (CredentialDeposit c , d))\n(.Ledger.Conway.Conformance.Certs.DState.deposits ds)"
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v21
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
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\nAny\n(\955 .patternInTele0 \8594 CredentialDeposit c \8801 .proj\8321 .patternInTele0)\n(.Ledger.Conway.Conformance.Certs.DState.deposits ds \738)"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Certs.C_reg_1024 v5 v6
                -> let v7
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
                                      (let v7
                                             = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                       (coe v0))) in
                                       coe
                                         (let v8
                                                = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                       (coe v0)) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                               (coe v7) (coe v8))))
                                      (coe v5)
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                            (coe v2))))
                                   (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                (coe
                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v6)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                            (coe v1))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v6) (coe (0 :: Integer))))) in
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
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1296)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                                         (coe v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1256
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (let v11
                                                                   = let v11
                                                                           = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v12
                                                                              = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                             (coe v11)
                                                                             (coe v12))) in
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
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                     (coe v2))
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
                                                                        (coe v5)
                                                                        (coe (0 :: Integer))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1324
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                                  (coe v1))
                                                               (coe v3)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                  (coe v2)))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1600
                                                   v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (let v10
                                                = coe
                                                    MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                          (let v10
                                                                 = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                           (coe v0))) in
                                                           coe
                                                             (let v11
                                                                    = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                           (coe v0)) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                   (coe v10) (coe v11))))
                                                          (coe v5)
                                                          (coe
                                                             MAlonzo.Code.Class.IsSet.du_dom_548
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                (coe v2))))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                    erased in
                                          coe
                                            (case coe v10 of
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                                 -> coe
                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Conway.Conformance.Certs.DState.rewards ds))"
                                                       ::
                                                       Data.Text.Text)
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                                 -> coe
                                                      ("\172\n(d \8801\n .Ledger.Conway.PParams.PParams.keyDeposit\n (.Ledger.Conway.Certs.DelegEnv.pparams de)\n \8846 d \8801 0)"
                                                       ::
                                                       Data.Text.Text)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-POOL
d_Computational'45'POOL_1518 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_1518 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1014 v5 v6
                -> let v7
                         = coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                             (coe
                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased
                                (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                         (coe v0))))
                                v5
                                (coe
                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                   (coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1148 (coe v2)))) in
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
                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'PState_1276)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (let v10
                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
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
                                                           MAlonzo.Code.Ledger.Conway.Certs.d_pools_1148
                                                           (coe v2))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Certs.d_retiring_1150
                                                     (coe v2))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'regpool_1448)))
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Certs.PState.pools ps)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Certs.C_retirepool_1016 v5 v6
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                        (coe
                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                           (coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'PState_1276)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1148 (coe v2))
                              (let v7
                                     = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Certs.d_retiring_1150
                                       (coe v2))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'retirepool_1450))
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_1544 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_1544 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in GOVCERT" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1018 v5 v6 v7
                -> let v8
                         = coe
                             MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                             (coe
                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                (coe
                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v6)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_420
                                         (coe MAlonzo.Code.Ledger.Conway.Certs.d_pp_1058 (coe v1))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (let v8
                                                = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                          (coe v0))) in
                                          coe
                                            (let v9
                                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                  (coe v8) (coe v9))))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_548
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                               (coe v2))))
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
                                (coe
                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v6) (coe (0 :: Integer)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (let v8
                                             = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                       (coe v0))) in
                                       coe
                                         (let v9
                                                = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                       (coe v0)) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                               (coe v8) (coe v9))))
                                      (coe v5)
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                            (coe v2)))))) in
                   coe
                     (case coe v8 of
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                          -> if coe v9
                               then case coe v10 of
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                        -> coe
                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1298)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (let v12
                                                             = let v12
                                                                     = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v13
                                                                        = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                       (coe v12) (coe v13))) in
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
                                                               erased v12)
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
                                                                  (coe v5)
                                                                  (coe
                                                                     MAlonzo.Code.Class.HasAdd.Core.d__'43'__16
                                                                     (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_epochStructure_630
                                                                           (coe v0)))
                                                                     (MAlonzo.Code.Ledger.Conway.Certs.d_epoch_1056
                                                                        (coe v1))
                                                                     (MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_422
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Certs.d_pp_1058
                                                                           (coe v1))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1274
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1324
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Certs.d_pp_1058
                                                               (coe v1))
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1276
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'regdrep_1678
                                                   v11))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v10)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(d \8801\n .Ledger.Conway.PParams.PParams.drepDeposit\n (.Ledger.Conway.Certs.CertEnv.pp ce)\n \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8713 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Conformance.Certs.GState.dreps gs))\n \8846\n d \8801 0 \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Conformance.Certs.GState.dreps gs)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1020 v5 v6
                -> let v7
                         = coe
                             MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                             (coe
                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (let v7
                                          = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                    (coe v0))) in
                                    coe
                                      (let v8
                                             = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                    (coe v0)) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                            (coe v7) (coe v8))))
                                   (coe v5)
                                   (coe
                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                         (coe v2))))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                      erased
                                      (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                         (coe v0))
                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_920
                                         (coe v5))
                                      (coe v6))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1276
                                         (coe v2))))) in
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
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1298)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (let v11
                                                             = let v11
                                                                     = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v12
                                                                        = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                       (coe v11) (coe v12))) in
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
                                                               erased v11)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                                               (coe v2))
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               v5)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1274
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1324
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Certs.d_pp_1058
                                                               (coe v1))
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1276
                                                                     (coe v2)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1276
                                                                     (coe v2))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'deregdrep_1680
                                                   v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (let v10
                                                = coe
                                                    MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                       (let v10
                                                              = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                        (coe v0))) in
                                                        coe
                                                          (let v11
                                                                 = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                        (coe v0)) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                (coe v10) (coe v11))))
                                                       (coe v5)
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_dom_548
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                                             (coe v2))))
                                                    erased in
                                          coe
                                            (case coe v10 of
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                                 -> coe
                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Conway.Conformance.Certs.GState.dreps gs))"
                                                       ::
                                                       Data.Text.Text)
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                                 -> coe
                                                      ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (DRepDeposit c , d))\n(.Ledger.Conway.Conformance.Certs.GState.deposits gs)"
                                                       ::
                                                       Data.Text.Text)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Certs.C_ccreghot_1022 v5 v6
                -> let v7
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
                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                         erased
                                         (let v7
                                                = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                          (coe v0))) in
                                          coe
                                            (let v8
                                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                  (coe v7) (coe v8))))
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                            (let v7
                                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                             (coe v0))) in
                                             coe
                                               (let v8
                                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                             (coe v0)) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                     (coe v7) (coe v8))))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1274
                                            (coe v2))))
                                   (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (let v7
                                          = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                    (coe v0))) in
                                    coe
                                      (let v8
                                             = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                    (coe v0)) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                            (coe v7) (coe v8))))
                                   (coe v5)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Certs.d_coldCreds_1064
                                      (coe v1)))) in
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
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1298)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                                         (coe v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (let v11
                                                                = let v11
                                                                        = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v12
                                                                           = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
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
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1274
                                                                  (coe v2))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1324
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Certs.d_pp_1058
                                                               (coe v1))
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1276
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'ccreghot_1682
                                                   v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (let v10
                                                = coe
                                                    MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
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
                                                                    = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                              (coe v0))) in
                                                              coe
                                                                (let v11
                                                                       = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                      (coe v10) (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                (let v10
                                                                       = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                 (coe v0))) in
                                                                 coe
                                                                   (let v11
                                                                          = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                 (coe v0)) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                         (coe v10) (coe v11))))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v5)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1274
                                                                (coe v2))))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                    erased in
                                          coe
                                            (case coe v10 of
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                                 -> coe
                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 (c , nothing))\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738)\n (.Ledger.Conway.Conformance.Certs.GState.ccHotKeys gs))"
                                                       ::
                                                       Data.Text.Text)
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                                 -> coe
                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 c)\n(.Ledger.Conway.Certs.CertEnv.coldCreds ce)"
                                                       ::
                                                       Data.Text.Text)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERT
d_Computational'45'CERT_1820 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_1820 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                   (d_Computational'45'POOL_1518 (coe v0))
                   (MAlonzo.Code.Ledger.Conway.Certs.d_pp_1058 (coe v1))
                   (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                      (coe v2))
                   v3 in
         coe
           (let v5
                  = coe
                      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                      (d_Computational'45'GOVCERT_1544 (coe v0)) v1
                      (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                         (coe v2))
                      v3 in
            coe
              (let v6
                     = coe
                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                         (coe
                            MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
                            (coe
                               MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
                               (coe
                                  MAlonzo.Code.Data.List.Base.du_length_284
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe
                                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                 (coe
                                                    (MAlonzo.RTE.QName
                                                       (1246 :: Integer)
                                                       (1080653462474235795 :: Integer)
                                                       "Ledger.Conway.Certs.DelegEnv"
                                                       (MAlonzo.RTE.Fixity
                                                          MAlonzo.RTE.NonAssoc
                                                          MAlonzo.RTE.Unrelated)))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                              (coe ("r" :: Data.Text.Text))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                 (coe
                                                    (MAlonzo.RTE.QName
                                                       (184 :: Integer)
                                                       (1080653462474235795 :: Integer) "_.PParams"
                                                       (MAlonzo.RTE.Fixity
                                                          MAlonzo.RTE.NonAssoc
                                                          MAlonzo.RTE.Unrelated)))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                        (coe
                                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                    (coe
                                                       (MAlonzo.RTE.QName
                                                          (1246 :: Integer)
                                                          (1080653462474235795 :: Integer)
                                                          "Ledger.Conway.Certs.DelegEnv"
                                                          (MAlonzo.RTE.Fixity
                                                             MAlonzo.RTE.NonAssoc
                                                             MAlonzo.RTE.Unrelated)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                 (coe ("r" :: Data.Text.Text))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                    (coe
                                                       (MAlonzo.RTE.QName
                                                          (180 :: Integer)
                                                          (9254951203007797098 :: Integer)
                                                          "abstract-set-theory.FiniteSetTheory._.Map"
                                                          (MAlonzo.RTE.Fixity
                                                             MAlonzo.RTE.RightAssoc
                                                             (MAlonzo.RTE.Related
                                                                (1.0 :: Double)))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                             (coe
                                                                (MAlonzo.RTE.QName
                                                                   (154 :: Integer)
                                                                   (1080653462474235795 :: Integer)
                                                                   "_.THash"
                                                                   (MAlonzo.RTE.Fixity
                                                                      MAlonzo.RTE.NonAssoc
                                                                      MAlonzo.RTE.Unrelated)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                (coe
                                                                   (MAlonzo.RTE.QName
                                                                      (986 :: Integer)
                                                                      (1080653462474235795 ::
                                                                         Integer)
                                                                      "Ledger.Conway.Certs.PoolParams"
                                                                      (MAlonzo.RTE.Fixity
                                                                         MAlonzo.RTE.NonAssoc
                                                                         MAlonzo.RTE.Unrelated)))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                           (coe
                                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                       (coe
                                                          (MAlonzo.RTE.QName
                                                             (1246 :: Integer)
                                                             (1080653462474235795 :: Integer)
                                                             "Ledger.Conway.Certs.DelegEnv"
                                                             (MAlonzo.RTE.Fixity
                                                                MAlonzo.RTE.NonAssoc
                                                                MAlonzo.RTE.Unrelated)))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                    (coe ("r" :: Data.Text.Text))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                       (coe
                                                          (MAlonzo.RTE.QName
                                                             (126 :: Integer)
                                                             (9254951203007797098 :: Integer)
                                                             "abstract-set-theory.FiniteSetTheory._.Set"
                                                             (MAlonzo.RTE.Fixity
                                                                MAlonzo.RTE.NonAssoc
                                                                MAlonzo.RTE.Unrelated)))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                (coe
                                                                   (MAlonzo.RTE.QName
                                                                      (30 :: Integer)
                                                                      (1080653462474235795 ::
                                                                         Integer)
                                                                      "_.Credential"
                                                                      (MAlonzo.RTE.Fixity
                                                                         MAlonzo.RTE.NonAssoc
                                                                         MAlonzo.RTE.Unrelated)))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                         (coe
                                                                            (MAlonzo.RTE.QName
                                                                               (282 :: Integer)
                                                                               (7093143161817389499 ::
                                                                                  Integer)
                                                                               "Ledger.Conway.Types.Epoch.GlobalConstants.DecEq-Netw"
                                                                               (MAlonzo.RTE.Fixity
                                                                                  MAlonzo.RTE.NonAssoc
                                                                                  MAlonzo.RTE.Unrelated)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                  (coe
                                                                                     (MAlonzo.RTE.QName
                                                                                        (1144 ::
                                                                                           Integer)
                                                                                        (1122405889267678018 ::
                                                                                           Integer)
                                                                                        "Ledger.Conway.Types.GovStructure.GovStructure.globalConstants"
                                                                                        (MAlonzo.RTE.Fixity
                                                                                           MAlonzo.RTE.NonAssoc
                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                           (coe
                                                                                              (1 ::
                                                                                                 Integer))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                            (coe
                                                                               (MAlonzo.RTE.QName
                                                                                  (24 :: Integer)
                                                                                  (16033308247380163172 ::
                                                                                     Integer)
                                                                                  "Ledger.Conway.Crypto.isHashableSet.DecEq-THash"
                                                                                  (MAlonzo.RTE.Fixity
                                                                                     MAlonzo.RTE.NonAssoc
                                                                                     MAlonzo.RTE.Unrelated)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                        (coe
                                                                                           (MAlonzo.RTE.QName
                                                                                              (202 ::
                                                                                                 Integer)
                                                                                              (16033308247380163172 ::
                                                                                                 Integer)
                                                                                              "Ledger.Conway.Crypto.Crypto.khs"
                                                                                              (MAlonzo.RTE.Fixity
                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                 MAlonzo.RTE.Unrelated)))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                 (coe
                                                                                                    (MAlonzo.RTE.QName
                                                                                                       (584 ::
                                                                                                          Integer)
                                                                                                       (1122405889267678018 ::
                                                                                                          Integer)
                                                                                                       "Ledger.Conway.Types.GovStructure.GovStructure.crypto"
                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                          (coe
                                                                                                             (1 ::
                                                                                                                Integer))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                               (coe
                                                                                  (MAlonzo.RTE.QName
                                                                                     (206 ::
                                                                                        Integer)
                                                                                     (16033308247380163172 ::
                                                                                        Integer)
                                                                                     "Ledger.Conway.Crypto.Crypto.DecEq-ScriptHash"
                                                                                     (MAlonzo.RTE.Fixity
                                                                                        MAlonzo.RTE.NonAssoc
                                                                                        MAlonzo.RTE.Unrelated)))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                        (coe
                                                                                           (MAlonzo.RTE.QName
                                                                                              (584 ::
                                                                                                 Integer)
                                                                                              (1122405889267678018 ::
                                                                                                 Integer)
                                                                                              "Ledger.Conway.Types.GovStructure.GovStructure.crypto"
                                                                                              (MAlonzo.RTE.Fixity
                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                 MAlonzo.RTE.Unrelated)))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                 (coe
                                                                                                    (1 ::
                                                                                                       Integer))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Certs.C_DelegEnv'46'constructor_20927)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Ledger.Conway.Certs.d_pp_1058 (coe v1))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Certs.d_pools_1148
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                     (coe v2)))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                        (coe v2)))))) in
               coe
                 (let v7
                        = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                            (coe v2) in
                  coe
                    (case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1010 v8 v9 v10 v11
                         -> let v12
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
                                                  (let v12
                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                   (coe v0))) in
                                                   coe
                                                     (let v13
                                                            = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                           (coe v12) (coe v13))))
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_548
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                        (coe v7))))
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                               (coe v11)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                     (coe v6)))))
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (let v12
                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                   (coe v0))) in
                                                   coe
                                                     (let v13
                                                            = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                           (coe v12) (coe v13))))
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_548
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                        (coe v7))))
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                  (coe v11) (coe (0 :: Integer))))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_894
                                                        (coe v0)))
                                                  (coe v9)
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
                                                        (\ v12 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_752
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_742)
                                                                (coe v12)))
                                                        (MAlonzo.Code.Ledger.Conway.Certs.d_delegatees_1258
                                                           (coe v6)))
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
                                                                    MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstainRep_754))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.GovernanceActions.C_noConfidenceRep_756))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                              (coe v0)))))
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
                                                              MAlonzo.Code.Ledger.Conway.Certs.d_pools_1256
                                                              (coe v6))))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                        (MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))))) in
                            coe
                              (case coe v12 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                   -> if coe v13
                                        then case coe v14 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                 -> let v16
                                                          = coe
                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1296)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (let v16
                                                                           = let v16
                                                                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v17
                                                                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                     (coe v16)
                                                                                     (coe v17))) in
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
                                                                             erased v16)
                                                                          (coe v8) (coe v9)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                                                             (coe v7))))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (let v16
                                                                              = let v16
                                                                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v17
                                                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                        (coe v16)
                                                                                        (coe
                                                                                           v17))) in
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
                                                                                erased v16)
                                                                             (coe v8) (coe v10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1256
                                                                                (coe v7))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (let v16
                                                                                 = let v16
                                                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (let v17
                                                                                            = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                           (coe v16)
                                                                                           (coe
                                                                                              v17))) in
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
                                                                                   erased v16)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                   (coe v7))
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
                                                                                         (0 ::
                                                                                            Integer))))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1324
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                                                (coe v6))
                                                                             (coe v3)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                (coe v7)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1524
                                                                 v15) in
                                                    coe
                                                      (case coe v16 of
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                           -> coe
                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                (coe
                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v17)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1686
                                                                      v18))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else (let v15
                                                    = seq
                                                        (coe v14)
                                                        (coe
                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                           (let v15
                                                                  = coe
                                                                      MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                               (let v15
                                                                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v16
                                                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                        (coe v15)
                                                                                        (coe v16))))
                                                                               (coe v8)
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                     (coe v7))))
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                            (coe
                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                            (coe v11)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                                                  (coe v6)))))
                                                                      erased in
                                                            coe
                                                              (case coe v15 of
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                   -> coe
                                                                        ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Conformance.Certs.DState.rewards ds))) \8594\n d \8801\n .Ledger.Conway.PParams.PParams.keyDeposit\n (.Ledger.Conway.Certs.DelegEnv.pparams de))"
                                                                         ::
                                                                         Data.Text.Text)
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                   -> let v17
                                                                            = coe
                                                                                MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                       (coe
                                                                                                          v0))) in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                       (coe
                                                                                                          v0)) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                               (coe
                                                                                                  v17)
                                                                                               (coe
                                                                                                  v18))))
                                                                                      (coe v8)
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                            (coe
                                                                                               v7))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                      (coe v11)
                                                                                      (coe
                                                                                         (0 ::
                                                                                            Integer))))
                                                                                erased in
                                                                      coe
                                                                        (case coe v17 of
                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                             -> coe
                                                                                  ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8712 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Conformance.Certs.DState.rewards ds))) \8594\n d \8801 0)"
                                                                                   ::
                                                                                   Data.Text.Text)
                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                             -> let v19
                                                                                      = coe
                                                                                          MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_894
                                                                                                   (coe
                                                                                                      v0)))
                                                                                             (coe
                                                                                                v9)
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
                                                                                                   (\ v19 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_752
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_742)
                                                                                                           (coe
                                                                                                              v19)))
                                                                                                   (MAlonzo.Code.Ledger.Conway.Certs.d_delegatees_1258
                                                                                                      (coe
                                                                                                         v6)))
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
                                                                                                               MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstainRep_754))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.GovernanceActions.C_noConfidenceRep_756))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                          erased in
                                                                                coe
                                                                                  (case coe v19 of
                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                       -> coe
                                                                                            ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (credVoter DRep x))\n  (.Ledger.Conway.Certs.DelegEnv.delegatees de))\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just abstainRep \8759 just noConfidenceRep \8759 [])))"
                                                                                             ::
                                                                                             Data.Text.Text)
                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                       -> coe
                                                                                            ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.Ledger.Conway.Certs.DelegEnv.pools de)))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                             ::
                                                                                             Data.Text.Text)
                                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError))) in
                                              coe
                                                (case coe v15 of
                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v16
                                                     -> case coe v16 of
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                            -> coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                 (coe
                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v17)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1686
                                                                       v18))
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v16
                                                     -> case coe v4 of
                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v17
                                                            -> case coe v17 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                   -> coe
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1688
                                                                              v19))
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v17
                                                            -> case coe v5 of
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v18
                                                                   -> case coe v18 of
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                          -> coe
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v19))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1690
                                                                                     v20))
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v18
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
                                                                              v16
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                 MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                 ("\nPOOL: "
                                                                                  ::
                                                                                  Data.Text.Text)
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                    MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                    v17
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                       MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                       ("\nVDEL: "
                                                                                        ::
                                                                                        Data.Text.Text)
                                                                                       v18)))))
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1012 v8 v9
                         -> let v10
                                  = d_lookupDeposit_1308
                                      (coe v0)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                         (coe v7))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
                                         (coe v8)) in
                            coe
                              (case coe v10 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                   -> if coe v11
                                        then case coe v12 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                 -> case coe v13 of
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                        -> case coe v14 of
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                               -> let v18
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
                                                                                     (let v18
                                                                                            = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (let v19
                                                                                               = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 v19))))
                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                     (coe v8)
                                                                                     (coe
                                                                                        (0 ::
                                                                                           Integer)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                        (coe v7))))
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
                                                                                        (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                                                                           (coe v0))
                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
                                                                                           (coe v8))
                                                                                        (coe v17))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                           (coe
                                                                                              v7))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                        (coe v9)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                        (coe v9)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                           (coe
                                                                                              v17)))))) in
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
                                                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1296)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (let v22
                                                                                                                 = let v22
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                                   (coe
                                                                                                                                      v0))) in
                                                                                                                   coe
                                                                                                                     (let v23
                                                                                                                            = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                                   (coe
                                                                                                                                      v0)) in
                                                                                                                      coe
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                                                           (coe
                                                                                                                              v22)
                                                                                                                           (coe
                                                                                                                              v23))) in
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
                                                                                                                   v22)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                                                                                                   (coe
                                                                                                                      v7))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                   v8)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                             (let v22
                                                                                                                    = let v22
                                                                                                                            = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                                      (coe
                                                                                                                                         v0))) in
                                                                                                                      coe
                                                                                                                        (let v23
                                                                                                                               = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                                      (coe
                                                                                                                                         v0)) in
                                                                                                                         coe
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                                                              (coe
                                                                                                                                 v22)
                                                                                                                              (coe
                                                                                                                                 v23))) in
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
                                                                                                                      v22)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1256
                                                                                                                      (coe
                                                                                                                         v7))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                      v8)))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                (let v22
                                                                                                                       = let v22
                                                                                                                               = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                                         (coe
                                                                                                                                            v0))) in
                                                                                                                         coe
                                                                                                                           (let v23
                                                                                                                                  = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                                         (coe
                                                                                                                                            v0)) in
                                                                                                                            coe
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                                                                 (coe
                                                                                                                                    v22)
                                                                                                                                 (coe
                                                                                                                                    v23))) in
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
                                                                                                                         v22)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                                                               (coe
                                                                                                                                  v7)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                                                               (coe
                                                                                                                                  v7))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                         v8)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1324
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                                                                                      (coe
                                                                                                                         v6))
                                                                                                                   (coe
                                                                                                                      v3)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                                                            (coe
                                                                                                                               v7)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                                                            (coe
                                                                                                                               v7)))))))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1526
                                                                                                       v17
                                                                                                       v21) in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v22 of
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v23)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                                                                     (coe
                                                                                                                        v2))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                                                     (coe
                                                                                                                        v2)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1686
                                                                                                            v24))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                              else (let v21
                                                                                          = seq
                                                                                              (coe
                                                                                                 v20)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                 (let v21
                                                                                                        = coe
                                                                                                            MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
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
                                                                                                                  (let v21
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                                   (coe
                                                                                                                                      v0))) in
                                                                                                                   coe
                                                                                                                     (let v22
                                                                                                                            = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                                                   (coe
                                                                                                                                      v0)) in
                                                                                                                      coe
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                                                           (coe
                                                                                                                              v21)
                                                                                                                           (coe
                                                                                                                              v22))))
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     v8)
                                                                                                                  (coe
                                                                                                                     (0 ::
                                                                                                                        Integer)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                                                     (coe
                                                                                                                        v7))))
                                                                                                            erased in
                                                                                                  coe
                                                                                                    (case coe
                                                                                                            v21 of
                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v22
                                                                                                         -> coe
                                                                                                              ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (c , 0))\n(.Ledger.Conway.Conformance.Certs.DState.rewards ds)"
                                                                                                               ::
                                                                                                               Data.Text.Text)
                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v22
                                                                                                         -> let v23
                                                                                                                  = coe
                                                                                                                      MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
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
                                                                                                                            (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                                                                                                               (coe
                                                                                                                                  v0))
                                                                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
                                                                                                                               (coe
                                                                                                                                  v8))
                                                                                                                            (coe
                                                                                                                               v17))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                                                               (coe
                                                                                                                                  v7))))
                                                                                                                      erased in
                                                                                                            coe
                                                                                                              (case coe
                                                                                                                      v23 of
                                                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v24
                                                                                                                   -> coe
                                                                                                                        ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (CredentialDeposit c , d))\n(.Ledger.Conway.Conformance.Certs.DState.deposits ds)"
                                                                                                                         ::
                                                                                                                         Data.Text.Text)
                                                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v24
                                                                                                                   -> coe
                                                                                                                        ("\172 (md \8801 nothing \8846 md \8801 just d)"
                                                                                                                         ::
                                                                                                                         Data.Text.Text)
                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                                    coe
                                                                                      (case coe
                                                                                              v21 of
                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v22
                                                                                           -> case coe
                                                                                                     v22 of
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                                  -> coe
                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                (coe
                                                                                                                   v23)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                                                                      (coe
                                                                                                                         v2))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                                                      (coe
                                                                                                                         v2)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1686
                                                                                                             v24))
                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v22
                                                                                           -> case coe
                                                                                                     v4 of
                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v23
                                                                                                  -> case coe
                                                                                                            v23 of
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                                         -> coe
                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                                                          (coe
                                                                                                                             v2))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             v24)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                                                             (coe
                                                                                                                                v2)))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1688
                                                                                                                    v25))
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v23
                                                                                                  -> case coe
                                                                                                            v5 of
                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v24
                                                                                                         -> case coe
                                                                                                                   v24 of
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                                                -> coe
                                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                                                                 (coe
                                                                                                                                    v2))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                                                                                    (coe
                                                                                                                                       v2))
                                                                                                                                 (coe
                                                                                                                                    v25))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1690
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
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else (let v13
                                                    = seq
                                                        (coe v12)
                                                        (coe
                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                           (coe
                                                              ("\172\nAny\n(\955 .patternInTele0 \8594 CredentialDeposit c \8801 .proj\8321 .patternInTele0)\n(.Ledger.Conway.Conformance.Certs.DState.deposits ds \738)"
                                                               ::
                                                               Data.Text.Text))) in
                                              coe
                                                (case coe v13 of
                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v14
                                                     -> case coe v14 of
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                            -> coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                 (coe
                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v15)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1686
                                                                       v16))
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v14
                                                     -> case coe v4 of
                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v15
                                                            -> case coe v15 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                   -> coe
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1688
                                                                              v17))
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v15
                                                            -> case coe v5 of
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v16
                                                                   -> case coe v16 of
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                          -> coe
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v17))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1690
                                                                                     v18))
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v16
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
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       MAlonzo.Code.Ledger.Conway.Certs.C_reg_1024 v8 v9
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
                                               (let v10
                                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                (coe v0))) in
                                                coe
                                                  (let v11
                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                        (coe v10) (coe v11))))
                                               (coe v8)
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                               (coe v9)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                     (coe v6))))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                               (coe v9) (coe (0 :: Integer))))) in
                            coe
                              (case coe v10 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                   -> if coe v11
                                        then case coe v12 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                 -> let v14
                                                          = coe
                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1296)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                                                       (coe v7))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1256
                                                                          (coe v7))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (let v14
                                                                                 = let v14
                                                                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (let v15
                                                                                            = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                           (coe v14)
                                                                                           (coe
                                                                                              v15))) in
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
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                   (coe v7))
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
                                                                                         (0 ::
                                                                                            Integer))))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1324
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1254
                                                                                (coe v6))
                                                                             (coe v3)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                                (coe v7)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1600
                                                                 v13) in
                                                    coe
                                                      (case coe v14 of
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                           -> coe
                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                (coe
                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v15)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1686
                                                                      v16))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else (let v13
                                                    = seq
                                                        (coe v12)
                                                        (coe
                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                           (let v13
                                                                  = coe
                                                                      MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                            (let v13
                                                                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v14
                                                                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                     (coe v13)
                                                                                     (coe v14))))
                                                                            (coe v8)
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_dom_548
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                                  (coe v7))))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                      erased in
                                                            coe
                                                              (case coe v13 of
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                                   -> coe
                                                                        ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Conway.Conformance.Certs.DState.rewards ds))"
                                                                         ::
                                                                         Data.Text.Text)
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                                   -> coe
                                                                        ("\172\n(d \8801\n .Ledger.Conway.PParams.PParams.keyDeposit\n (.Ledger.Conway.Certs.DelegEnv.pparams de)\n \8846 d \8801 0)"
                                                                         ::
                                                                         Data.Text.Text)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError))) in
                                              coe
                                                (case coe v13 of
                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v14
                                                     -> case coe v14 of
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                            -> coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                 (coe
                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v15)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1686
                                                                       v16))
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v14
                                                     -> case coe v4 of
                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v15
                                                            -> case coe v15 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                   -> coe
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1688
                                                                              v17))
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v15
                                                            -> case coe v5 of
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v16
                                                                   -> case coe v16 of
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                          -> coe
                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v17))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1690
                                                                                     v18))
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v16
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
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> let v8
                                  = "Unexpected certificate in DELEG" :: Data.Text.Text in
                            coe
                              (case coe v4 of
                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v9
                                   -> case coe v9 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                          -> coe
                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                              (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1688
                                                     v11))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v9
                                   -> case coe v5 of
                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v10
                                          -> case coe v10 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                                 -> coe
                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                     (coe v2))
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1690
                                                            v12))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v10
                                          -> coe
                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                               (coe
                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                  MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                  ("DELEG: " :: Data.Text.Text)
                                                  (coe
                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                     v8
                                                     (coe
                                                        MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                        MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                        ("\nPOOL: " :: Data.Text.Text)
                                                        (coe
                                                           MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                           MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                           v9
                                                           (coe
                                                              MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                              MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                              ("\nVDEL: " :: Data.Text.Text)
                                                              v10)))))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError))))))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTBASE
d_Computational'45'CERTBASE_2128 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2128 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 -> coe du_goal_2264 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Certs.Properties._._.pp
d_pp_2146 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pp_2146 ~v0 v1 ~v2 ~v3 = du_pp_2146 v1
du_pp_2146 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pp_2146 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pp_1058 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.votes
d_votes_2148 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
d_votes_2148 ~v0 v1 ~v2 ~v3 = du_votes_2148 v1
du_votes_2148 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
du_votes_2148 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_votes_1060 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.wdrls
d_wdrls_2150 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2150 ~v0 v1 ~v2 ~v3 = du_wdrls_2150 v1
du_wdrls_2150 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_wdrls_2150 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1062 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.rewards
d_rewards_2244 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2244 ~v0 ~v1 v2 ~v3 = du_rewards_2244 v2
du_rewards_2244 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._._.voteDelegs
d_voteDelegs_2248 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2248 ~v0 ~v1 v2 ~v3 = du_voteDelegs_2248 v2
du_voteDelegs_2248 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._.sep
d_sep_2250 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_sep_2250 ~v0 ~v1 ~v2 ~v3 = du_sep_2250
du_sep_2250 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
du_sep_2250 = coe (" | " :: Data.Text.Text)
-- Ledger.Conway.Conformance.Certs.Properties._.genErr
d_genErr_2254 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_2254 v0 v1 v2 ~v3 ~v4 = du_genErr_2254 v0 v1 v2
du_genErr_2254 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_2254 v0 v1 v2
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
                                           = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                     (coe v0))) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
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
                         (coe
                            MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
                            (coe v3))
                         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                    (let v3
                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_398
                          (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
                          (\ v4 -> MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v4))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_548
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                             (coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1062 (coe v1)))))))
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
                               (coe du_sep_2250))
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
                                        MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
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
                                                   MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
                                                   (coe v5))
                                                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_map_398
                                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (\ v5 ->
                                                 MAlonzo.Code.Ledger.Conway.Address.d_stake_104
                                                   (coe v5))
                                              (coe
                                                 MAlonzo.Code.Class.IsSet.du_dom_548
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1062
                                                    (coe v1)))))))))))
                      (coe du_sep_2250))
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
                               MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
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
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
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
                               (coe du_sep_2250))
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
                                        MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
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
                                                    MAlonzo.Code.Ledger.Conway.Address.d_stake_104
                                                      (coe v5))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1062
                                                 (coe v1))))))))))
                      (coe du_sep_2250))
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
                               MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                        (coe v2)))))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties._.goal
d_goal_2264 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_goal_2264 v0 v1 v2 ~v3 = du_goal_2264 v0 v1 v2
du_goal_2264 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_goal_2264 v0 v1 v2
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
                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                             (coe v0))) in
                             coe
                               (let v5
                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                     (coe v4) (coe v5))))
                            (coe v3)
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                     (coe v2))))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                       (\ v3 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                            (coe
                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
                               (coe v3))
                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_398
                          (MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (\ v3 -> MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v3))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_548
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                             (coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1062 (coe v1))))))
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
                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                (coe v0))) in
                                coe
                                  (let v5
                                         = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                (coe v0)) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                        (coe v4) (coe v5))))
                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                            (coe v3)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                     (coe v2))))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_map_398
                       (MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                          (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                          (coe
                             (\ v3 -> MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v3))))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                          (coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1062 (coe v1)))))) in
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
                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1300)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1296)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (let v7
                                                    = MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_894
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                         (coe v2)))
                                                   (let v8
                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe v8))
                                                         (let v9
                                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_map_398
                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                  (coe v9))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_752
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_742))
                                                               (coe
                                                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
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
                                                                     MAlonzo.Code.Ledger.Conway.GovernanceActions.C_noConfidenceRep_756)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstainRep_754)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1256
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                      (coe v2)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (let v7
                                                          = let v7
                                                                  = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                            (coe v0))) in
                                                            coe
                                                              (let v8
                                                                     = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                            (coe v0)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
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
                                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe v8))
                                                                  (\ v9 ->
                                                                     MAlonzo.Code.Ledger.Conway.Address.d_stake_104
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
                                                                        MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1062
                                                                        (coe v1)))))
                                                            (coe (0 :: Integer)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                         (coe v2)))))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                             (coe v2))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1298)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (let v7
                                                       = let v7
                                                               = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                         (coe v0))) in
                                                         coe
                                                           (let v8
                                                                  = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_crypto_584
                                                                         (coe v0)) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
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
                                                                 MAlonzo.Code.Class.HasAdd.Core.d__'43'__16
                                                                 (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_epochStructure_630
                                                                       (coe v0)))
                                                                 (MAlonzo.Code.Ledger.Conway.Certs.d_epoch_1056
                                                                    (coe v1))
                                                                 (let v8
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_mkGeneralizeTel_90861
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Certs.d_pp_1058
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Certs.d_votes_1060
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Certs.d_epoch_1056
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1062
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Certs.d_coldCreds_1064
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1256
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1274
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1276
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                                                  (coe v2))) in
                                                                  coe
                                                                    (MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_422
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_'46'generalizedField'45'pp_90833
                                                                          (coe v8)))) in
                                                       coe (coe (\ v9 -> v8)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1272
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                            (coe v2)))
                                                      (let v8
                                                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe v8))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.GovernanceActions.du_getDRepVote_898)
                                                            (let v9
                                                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe v9))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Certs.d_votes_1060
                                                                     (coe v1))))))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1274
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                         (coe v2)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1276
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292
                                                         (coe v2)))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'base_1774
                                    v6))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v5)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe du_genErr_2254 (coe v0) (coe v1) (coe v2)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTS
d_Computational'45'CERTS_2308 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2308 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'''_1138
      (coe d_Computational'45'CERTBASE_2128 (coe v0))
      (coe d_Computational'45'CERT_1820 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
