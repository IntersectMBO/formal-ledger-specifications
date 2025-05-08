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
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.HasCast.Derive
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
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.DecEq-Credential
d_DecEq'45'Credential_62 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_62 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_62 v2 v3
du_DecEq'45'Credential_62 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_62 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186 (coe v0)
      (coe v1)
-- _.Show-Credential
d_Show'45'Credential_230 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_230 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_230
du_Show'45'Credential_230 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_230 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_250 v1 v2
-- _.Show-Credential×Coin
d_Show'45'Credential'215'Coin_232 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_232 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_232
du_Show'45'Credential'215'Coin_232 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_232 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_254 v1
      v2
-- _.isKeyHash
d_isKeyHash_324 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_324 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-VDeleg
d_DecEq'45'VDeleg_744 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_744 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_880
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.GovRole
d_GovRole_760 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.VDeleg
d_VDeleg_790 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__904 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__906 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_994] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__906 = erased
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__908 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__910 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__912 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__914 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_964 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_964 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.DepositPurpose
d_DepositPurpose_968 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.completeness
d_completeness_1270 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1270 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.computeProof
d_computeProof_1276 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1276 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties.lookupDeposit
d_lookupDeposit_1296 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_900 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_1296 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970 (coe v0))
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v1))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-DELEG
d_Computational'45'DELEG_1304 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_1304 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in DELEG" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Certs.C_delegate_996 v5 v6 v7 v8
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
                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                       (coe
                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                          (coe v0))) in
                                          coe
                                            (let v10
                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                       (coe
                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                               (coe v2))))
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v8)
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_keyDeposit_354
                                         (coe MAlonzo.Code.Ledger.Certs.d_pparams_1240 (coe v1)))))
                                (coe
                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (let v9
                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                       (coe
                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                          (coe v0))) in
                                          coe
                                            (let v10
                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                       (coe
                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                               MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_880
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
                                                       MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_738
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.C_DRep_728)
                                                       (coe v9)))
                                               (MAlonzo.Code.Ledger.Certs.d_delegatees_1244
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
                                                           MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_740))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_742))
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
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
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
                                                     MAlonzo.Code.Ledger.Certs.d_pools_1242
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1284)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (let v13
                                                             = let v13
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v14
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (let v13
                                                                = let v13
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v14
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1244
                                                                  (coe v2))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (let v13
                                                                   = let v13
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v14
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1312
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_pparams_1240
                                                                  (coe v1))
                                                               (coe v3)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                                  (coe v2)))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1512
                                                   v12))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v11)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (let v12
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
                                                             (let v12
                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                              (coe v0))) in
                                                              coe
                                                                (let v13
                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                                                   (coe v2))))
                                                          (coe
                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                          (coe
                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Ledger.PParams.d_keyDeposit_354
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.d_pparams_1240
                                                                (coe v1)))))
                                                    erased in
                                          coe
                                            (case coe v12 of
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                 -> coe
                                                      ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Conformance.Certs.DState.rewards ds))) \8594\n d \8801\n .Ledger.PParams.PParams.keyDeposit\n (.Ledger.Certs.DelegEnv.pparams de))"
                                                       ::
                                                       Data.Text.Text)
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                 -> let v14
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
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v15
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_880
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
                                                                                         MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_738
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.GovernanceActions.C_DRep_728)
                                                                                         (coe v16)))
                                                                                 (MAlonzo.Code.Ledger.Certs.d_delegatees_1244
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
                                                                                             MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_740))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_742))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                        erased in
                                                              coe
                                                                (case coe v16 of
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                     -> coe
                                                                          ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (credVoter DRep x))\n  (.Ledger.Certs.DelegEnv.delegatees de))\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just abstainRep \8759 just noConfidenceRep \8759 [])))"
                                                                           ::
                                                                           Data.Text.Text)
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                     -> coe
                                                                          ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.Ledger.Certs.DelegEnv.pools de)))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                           ::
                                                                           Data.Text.Text)
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Certs.C_dereg_998 v5 v6
                -> let v7
                         = d_lookupDeposit_1296
                             (coe v0)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                (coe v2))
                             (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_902 (coe v5)) in
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
                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v16
                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970
                                                                                  (coe v0))
                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_902
                                                                                  (coe v5))
                                                                               (coe v14))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
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
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1284)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (let v19
                                                                                                   = let v19
                                                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                     (coe
                                                                                                                        v0))) in
                                                                                                     coe
                                                                                                       (let v20
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                     (coe
                                                                                                                        v0)) in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
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
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v20
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                        (coe
                                                                                                                           v0)) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1244
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
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v20
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                                                                                                 (coe
                                                                                                                    v2)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1312
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Certs.d_pparams_1240
                                                                                                        (coe
                                                                                                           v1))
                                                                                                     (coe
                                                                                                        v3)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                                                                              (coe
                                                                                                                 v2)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                                                                              (coe
                                                                                                                 v2)))))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1514
                                                                                         v14 v18))
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
                                                                                             (coe
                                                                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                ()
                                                                                                erased
                                                                                                ()
                                                                                                erased
                                                                                                (let v18
                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                 (coe
                                                                                                                    v0))) in
                                                                                                 coe
                                                                                                   (let v19
                                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                 (coe
                                                                                                                    v0)) in
                                                                                                    coe
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                                                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_902
                                                                                                             (coe
                                                                                                                v5))
                                                                                                          (coe
                                                                                                             v14))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
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
              MAlonzo.Code.Ledger.Certs.C_reg_1010 v5 v6
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
                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                    (coe
                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                       (coe v0))) in
                                       coe
                                         (let v8
                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                    (coe
                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                       (coe v0)) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                            (coe v2))))
                                   (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                (coe
                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v6)
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_keyDeposit_354
                                         (coe MAlonzo.Code.Ledger.Certs.d_pparams_1240 (coe v1))))
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1284)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                                         (coe v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1244
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (let v11
                                                                   = let v11
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v12
                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1312
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_pparams_1240
                                                                  (coe v1))
                                                               (coe v3)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                                  (coe v2)))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1588
                                                   v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (let v10
                                                = coe
                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                          (let v10
                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                           (coe v0))) in
                                                           coe
                                                             (let v11
                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                           (coe v0)) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                      ("\172\n(d \8801\n .Ledger.PParams.PParams.keyDeposit\n (.Ledger.Certs.DelegEnv.pparams de)\n \8846 d \8801 0)"
                                                       ::
                                                       Data.Text.Text)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-POOL
d_Computational'45'POOL_1506 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_1506 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Certs.C_regpool_1000 v5 v6
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
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                         (coe v0))))
                                v5
                                (coe
                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                   (coe MAlonzo.Code.Ledger.Certs.d_pools_1134 (coe v2)))) in
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
                                                  MAlonzo.Code.Ledger.Certs.du_HasCast'45'PState_1262)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (let v10
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
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
                                                           MAlonzo.Code.Ledger.Certs.d_pools_1134
                                                           (coe v2))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.d_retiring_1136
                                                     (coe v2))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'regpool_1436)))
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Certs.PState.pools ps)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Certs.C_retirepool_1002 v5 v6
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                        (coe
                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                           (coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'PState_1262)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe MAlonzo.Code.Ledger.Certs.d_pools_1134 (coe v2))
                              (let v7
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                            (coe
                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
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
                                    (coe MAlonzo.Code.Ledger.Certs.d_retiring_1136 (coe v2))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'retirepool_1438))
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_1532 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_1532 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in GOVCERT" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Certs.C_regdrep_1004 v5 v6 v7
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
                                         MAlonzo.Code.Ledger.PParams.d_drepDeposit_400
                                         (coe MAlonzo.Code.Ledger.Certs.d_pp_1044 (coe v1))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (let v8
                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                       (coe
                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                          (coe v0))) in
                                          coe
                                            (let v9
                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                       (coe
                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
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
                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                    (coe
                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                       (coe v0))) in
                                       coe
                                         (let v9
                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                    (coe
                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                       (coe v0)) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1286)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (let v12
                                                             = let v12
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v13
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                     (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_622
                                                                           (coe v0)))
                                                                     (MAlonzo.Code.Ledger.Certs.d_epoch_1042
                                                                        (coe v1))
                                                                     (MAlonzo.Code.Ledger.PParams.d_drepActivity_402
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Certs.d_pp_1044
                                                                           (coe v1))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1262
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1312
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_pp_1044
                                                               (coe v1))
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1264
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'regdrep_1666
                                                   v11))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v10)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(d \8801\n .Ledger.PParams.PParams.drepDeposit (.Ledger.Certs.CertEnv.pp ce)\n \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8713 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Conformance.Certs.GState.dreps gs))\n \8846\n d \8801 0 \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Conformance.Certs.GState.dreps gs)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Certs.C_deregdrep_1006 v5 v6
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
                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                              (coe
                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                 (coe
                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                    (coe v0))) in
                                    coe
                                      (let v8
                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                 (coe
                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                    (coe v0)) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
                                         (coe v2))))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                      erased
                                      (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970
                                         (coe v0))
                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_906 (coe v5))
                                      (coe v6))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1264
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1286)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (let v11
                                                             = let v11
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v12
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1262
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1312
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_pp_1044
                                                               (coe v1))
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1264
                                                                     (coe v2)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1264
                                                                     (coe v2))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'deregdrep_1668
                                                   v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (let v10
                                                = coe
                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                       (let v10
                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                        (coe v0))) in
                                                        coe
                                                          (let v11
                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                        (coe v0)) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
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
              MAlonzo.Code.Ledger.Certs.C_ccreghot_1008 v5 v6
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
                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                       (coe
                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                          (coe v0))) in
                                          coe
                                            (let v8
                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                       (coe
                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                  (coe v7) (coe v8))))
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                            (let v7
                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                       (coe
                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                          (coe
                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                             (coe v0))) in
                                             coe
                                               (let v8
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                          (coe
                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                             (coe v0)) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                     (coe v7) (coe v8))))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1262
                                            (coe v2))))
                                   (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (let v7
                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                              (coe
                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                 (coe
                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                    (coe v0))) in
                                    coe
                                      (let v8
                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                 (coe
                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                    (coe v0)) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                            (coe v7) (coe v8))))
                                   (coe v5)
                                   (coe MAlonzo.Code.Ledger.Certs.d_coldCreds_1050 (coe v1)))) in
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1286)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
                                                         (coe v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (let v11
                                                                = let v11
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v12
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1262
                                                                  (coe v2))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1312
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_pp_1044
                                                               (coe v1))
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1264
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'ccreghot_1670
                                                   v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (let v10
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
                                                             (let v10
                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                              (coe v0))) in
                                                              coe
                                                                (let v11
                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                      (coe v10) (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                (let v10
                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                 (coe v0))) in
                                                                 coe
                                                                   (let v11
                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                 (coe v0)) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                         (coe v10) (coe v11))))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v5)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1262
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
                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 c)\n(.Ledger.Certs.CertEnv.coldCreds ce)"
                                                       ::
                                                       Data.Text.Text)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERT
d_Computational'45'CERT_1808 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_1808 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                   (d_Computational'45'POOL_1506 (coe v0))
                   (MAlonzo.Code.Ledger.Certs.d_pp_1044 (coe v1))
                   (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                      (coe v2))
                   v3 in
         coe
           (let v5
                  = coe
                      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                      (d_Computational'45'GOVCERT_1532 (coe v0)) v1
                      (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                         (coe v2))
                      v3 in
            coe
              (let v6
                     = coe
                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                         (coe
                            MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
                            (coe
                               MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
                               (coe
                                  MAlonzo.Code.Data.List.Base.du_length_284
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe
                                        MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                                       (1232 :: Integer)
                                                       (4754670284972318150 :: Integer)
                                                       "Ledger.Certs.DelegEnv"
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
                                                       (176 :: Integer)
                                                       (4754670284972318150 :: Integer) "_.PParams"
                                                       (MAlonzo.RTE.Fixity
                                                          MAlonzo.RTE.NonAssoc
                                                          MAlonzo.RTE.Unrelated)))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                        (coe
                                           MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                                          (1232 :: Integer)
                                                          (4754670284972318150 :: Integer)
                                                          "Ledger.Certs.DelegEnv"
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
                                                                   (148 :: Integer)
                                                                   (4754670284972318150 :: Integer)
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
                                                                      (972 :: Integer)
                                                                      (4754670284972318150 ::
                                                                         Integer)
                                                                      "Ledger.Certs.PoolParams"
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
                                              MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                                             (1232 :: Integer)
                                                             (4754670284972318150 :: Integer)
                                                             "Ledger.Certs.DelegEnv"
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
                                                                      (26 :: Integer)
                                                                      (4754670284972318150 ::
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
                                                                               (276 :: Integer)
                                                                               (5472012504010855638 ::
                                                                                  Integer)
                                                                               "Ledger.Types.Epoch.GlobalConstants.DecEq-Netw"
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
                                                                                        (1130 ::
                                                                                           Integer)
                                                                                        (15457238204768998804 ::
                                                                                           Integer)
                                                                                        "Ledger.Types.GovStructure.GovStructure.globalConstants"
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
                                                                                  (22 :: Integer)
                                                                                  (11985168719538843093 ::
                                                                                     Integer)
                                                                                  "Ledger.Crypto.isHashableSet.DecEq-THash"
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
                                                                                              (200 ::
                                                                                                 Integer)
                                                                                              (11985168719538843093 ::
                                                                                                 Integer)
                                                                                              "Ledger.Crypto.Crypto.khs"
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
                                                                                                       (576 ::
                                                                                                          Integer)
                                                                                                       (15457238204768998804 ::
                                                                                                          Integer)
                                                                                                       "Ledger.Types.GovStructure.GovStructure.crypto"
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
                                                                                     (204 ::
                                                                                        Integer)
                                                                                     (11985168719538843093 ::
                                                                                        Integer)
                                                                                     "Ledger.Crypto.Crypto.DecEq-ScriptHash"
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
                                                                                              (576 ::
                                                                                                 Integer)
                                                                                              (15457238204768998804 ::
                                                                                                 Integer)
                                                                                              "Ledger.Types.GovStructure.GovStructure.crypto"
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
                               (coe MAlonzo.Code.Ledger.Certs.C_DelegEnv'46'constructor_20895)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Ledger.Certs.d_pp_1044 (coe v1))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Certs.d_pools_1134
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                     (coe v2)))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                        (coe v2)))))) in
               coe
                 (let v7
                        = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                            (coe v2) in
                  coe
                    (case coe v3 of
                       MAlonzo.Code.Ledger.Certs.C_delegate_996 v8 v9 v10 v11
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
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                   (coe v0))) in
                                                   coe
                                                     (let v13
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                                        (coe v7))))
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                               (coe v11)
                                               (coe
                                                  MAlonzo.Code.Ledger.PParams.d_keyDeposit_354
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.d_pparams_1240
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
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                   (coe v0))) in
                                                   coe
                                                     (let v13
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                        MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_880
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
                                                                MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_738
                                                                (coe
                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_DRep_728)
                                                                (coe v12)))
                                                        (MAlonzo.Code.Ledger.Certs.d_delegatees_1244
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
                                                                    MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_740))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_742))
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
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
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
                                                              MAlonzo.Code.Ledger.Certs.d_pools_1242
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
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1284)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (let v16
                                                                           = let v16
                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v17
                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                                                             (coe v7))))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (let v16
                                                                              = let v16
                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v17
                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1244
                                                                                (coe v7))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (let v16
                                                                                 = let v16
                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (let v17
                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1312
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Certs.d_pparams_1240
                                                                                (coe v6))
                                                                             (coe v3)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                                                (coe v7)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1512
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
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v17)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1674
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
                                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                               (let v15
                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v16
                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                                                                     (coe v7))))
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                            (coe
                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                            (coe v11)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.PParams.d_keyDeposit_354
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Certs.d_pparams_1240
                                                                                  (coe v6)))))
                                                                      erased in
                                                            coe
                                                              (case coe v15 of
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                   -> coe
                                                                        ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Conformance.Certs.DState.rewards ds))) \8594\n d \8801\n .Ledger.PParams.PParams.keyDeposit\n (.Ledger.Certs.DelegEnv.pparams de))"
                                                                         ::
                                                                         Data.Text.Text)
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                   -> let v17
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
                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                       (coe
                                                                                                          v0))) in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                       (coe
                                                                                                          v0)) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_880
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
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_738
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.GovernanceActions.C_DRep_728)
                                                                                                           (coe
                                                                                                              v19)))
                                                                                                   (MAlonzo.Code.Ledger.Certs.d_delegatees_1244
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
                                                                                                               MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_740))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_742))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                          erased in
                                                                                coe
                                                                                  (case coe v19 of
                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                       -> coe
                                                                                            ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (credVoter DRep x))\n  (.Ledger.Certs.DelegEnv.delegatees de))\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just abstainRep \8759 just noConfidenceRep \8759 [])))"
                                                                                             ::
                                                                                             Data.Text.Text)
                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                       -> coe
                                                                                            ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.Ledger.Certs.DelegEnv.pools de)))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
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
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v17)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1674
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1676
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
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v19))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1678
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
                       MAlonzo.Code.Ledger.Certs.C_dereg_998 v8 v9
                         -> let v10
                                  = d_lookupDeposit_1296
                                      (coe v0)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                         (coe v7))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_902
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
                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (let v19
                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                                        (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970
                                                                                           (coe v0))
                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_902
                                                                                           (coe v8))
                                                                                        (coe v17))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
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
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1284)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (let v22
                                                                                                                 = let v22
                                                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                                   (coe
                                                                                                                                      v0))) in
                                                                                                                   coe
                                                                                                                     (let v23
                                                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                                   (coe
                                                                                                                                      v0)) in
                                                                                                                      coe
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
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
                                                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                                      (coe
                                                                                                                                         v0))) in
                                                                                                                      coe
                                                                                                                        (let v23
                                                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                                      (coe
                                                                                                                                         v0)) in
                                                                                                                         coe
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1244
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
                                                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                                         (coe
                                                                                                                                            v0))) in
                                                                                                                         coe
                                                                                                                           (let v23
                                                                                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                                         (coe
                                                                                                                                            v0)) in
                                                                                                                            coe
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                                                                                                               (coe
                                                                                                                                  v7)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1312
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Certs.d_pparams_1240
                                                                                                                      (coe
                                                                                                                         v6))
                                                                                                                   (coe
                                                                                                                      v3)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                                                                                            (coe
                                                                                                                               v7)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                                                                                            (coe
                                                                                                                               v7)))))))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1514
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
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v23)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                                                                     (coe
                                                                                                                        v2))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                                                     (coe
                                                                                                                        v2)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1674
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
                                                                                                                  (let v21
                                                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                                   (coe
                                                                                                                                      v0))) in
                                                                                                                   coe
                                                                                                                     (let v22
                                                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                                                   (coe
                                                                                                                                      v0)) in
                                                                                                                      coe
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                                                                            (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970
                                                                                                                               (coe
                                                                                                                                  v0))
                                                                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_902
                                                                                                                               (coe
                                                                                                                                  v8))
                                                                                                                            (coe
                                                                                                                               v17))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
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
                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                (coe
                                                                                                                   v23)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                                                                      (coe
                                                                                                                         v2))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                                                      (coe
                                                                                                                         v2)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1674
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
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                                                          (coe
                                                                                                                             v2))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             v24)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                                                             (coe
                                                                                                                                v2)))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1676
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
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                                                                 (coe
                                                                                                                                    v2))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                                                                                    (coe
                                                                                                                                       v2))
                                                                                                                                 (coe
                                                                                                                                    v25))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1678
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
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v15)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1674
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1676
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
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v17))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1678
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
                       MAlonzo.Code.Ledger.Certs.C_reg_1010 v8 v9
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
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                (coe v0))) in
                                                coe
                                                  (let v11
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                  MAlonzo.Code.Ledger.PParams.d_keyDeposit_354
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.d_pparams_1240
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
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1284)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                                                       (coe v7))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1244
                                                                          (coe v7))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (let v14
                                                                                 = let v14
                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (let v15
                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1312
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Certs.d_pparams_1240
                                                                                (coe v6))
                                                                             (coe v3)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                                                (coe v7)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1588
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
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v15)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1674
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
                                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
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
                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v14
                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
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
                                                                        ("\172\n(d \8801\n .Ledger.PParams.PParams.keyDeposit\n (.Ledger.Certs.DelegEnv.pparams de)\n \8846 d \8801 0)"
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
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v15)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1674
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1676
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
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v17))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1678
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
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                              (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1676
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                     (coe v2))
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1678
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
d_Computational'45'CERTBASE_2116 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2116 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 -> coe du_goal_2252 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Certs.Properties._._.pp
d_pp_2134 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pp_2134 ~v0 v1 ~v2 ~v3 = du_pp_2134 v1
du_pp_2134 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pp_2134 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_1044 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.votes
d_votes_2136 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808]
d_votes_2136 ~v0 v1 ~v2 ~v3 = du_votes_2136 v1
du_votes_2136 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808]
du_votes_2136 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_1046 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.wdrls
d_wdrls_2138 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2138 ~v0 v1 ~v2 ~v3 = du_wdrls_2138 v1
du_wdrls_2138 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_wdrls_2138 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_1048 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.rewards
d_rewards_2232 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2232 ~v0 ~v1 v2 ~v3 = du_rewards_2232 v2
du_rewards_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._._.voteDelegs
d_voteDelegs_2236 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2236 ~v0 ~v1 v2 ~v3 = du_voteDelegs_2236 v2
du_voteDelegs_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._.sep
d_sep_2238 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_sep_2238 ~v0 ~v1 ~v2 ~v3 = du_sep_2238
du_sep_2238 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
du_sep_2238 = coe (" | " :: Data.Text.Text)
-- Ledger.Conway.Conformance.Certs.Properties._.genErr
d_genErr_2242 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_2242 v0 v1 v2 ~v3 ~v4 = du_genErr_2242 v0 v1 v2
du_genErr_2242 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_2242 v0 v1 v2
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
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                     (coe v0))) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
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
                         (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_44 (coe v3))
                         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                    (let v3
                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_398
                          (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
                          (\ v4 -> MAlonzo.Code.Ledger.Address.d_stake_102 (coe v4))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_548
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                             (coe MAlonzo.Code.Ledger.Certs.d_wdrls_1048 (coe v1)))))))
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
                               (coe du_sep_2238))
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
                                        MAlonzo.Code.Ledger.Address.du_Show'45'Credential_250
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                              (coe
                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                           (coe
                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
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
                                                   MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_44
                                                   (coe v5))
                                                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_map_398
                                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (\ v5 ->
                                                 MAlonzo.Code.Ledger.Address.d_stake_102 (coe v5))
                                              (coe
                                                 MAlonzo.Code.Class.IsSet.du_dom_548
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.d_wdrls_1048
                                                    (coe v1)))))))))))
                      (coe du_sep_2238))
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
                               MAlonzo.Code.Ledger.Address.du_Show'45'Credential_250
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                     (coe
                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                  (coe
                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
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
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
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
                               (coe du_sep_2238))
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
                                        MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_254
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                              (coe
                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                           (coe
                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
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
                                                    MAlonzo.Code.Ledger.Address.d_stake_102
                                                      (coe v5))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.d_wdrls_1048
                                                 (coe v1))))))))))
                      (coe du_sep_2238))
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
                               MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_254
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                     (coe
                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
                                  (coe
                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                        (coe v2)))))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties._.goal
d_goal_2252 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_goal_2252 v0 v1 v2 ~v3 = du_goal_2252 v0 v1 v2
du_goal_2252 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_goal_2252 v0 v1 v2
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
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                             (coe v0))) in
                             coe
                               (let v5
                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                          (coe
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186 (coe v4)
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
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                     (coe v2))))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                       (\ v3 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                            (coe
                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                            (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_44 (coe v3))
                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_398
                          (MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (\ v3 -> MAlonzo.Code.Ledger.Address.d_stake_102 (coe v3))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_548
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                             (coe MAlonzo.Code.Ledger.Certs.d_wdrls_1048 (coe v1))))))
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
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                (coe v0))) in
                                coe
                                  (let v5
                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                (coe v0)) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                        (coe v4) (coe v5))))
                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                            (coe v3)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                     (coe v2))))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_map_398
                       (MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                          (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                          (coe (\ v3 -> MAlonzo.Code.Ledger.Address.d_stake_102 (coe v3))))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                          (coe MAlonzo.Code.Ledger.Certs.d_wdrls_1048 (coe v1)))))) in
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
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1288)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1284)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (let v7
                                                    = MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_880
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
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
                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_738
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.GovernanceActions.C_DRep_728))
                                                               (coe
                                                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
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
                                                                     MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_742)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_740)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1244
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                      (coe v2)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (let v7
                                                          = let v7
                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                            (coe v0))) in
                                                            coe
                                                              (let v8
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                            (coe v0)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                     MAlonzo.Code.Ledger.Address.d_stake_102
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
                                                                        MAlonzo.Code.Ledger.Certs.d_wdrls_1048
                                                                        (coe v1)))))
                                                            (coe (0 :: Integer)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                         (coe v2)))))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                             (coe v2))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1286)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (let v7
                                                       = let v7
                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                         (coe v0))) in
                                                         coe
                                                           (let v8
                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_576
                                                                         (coe v0)) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
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
                                                                 (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_622
                                                                       (coe v0)))
                                                                 (MAlonzo.Code.Ledger.Certs.d_epoch_1042
                                                                    (coe v1))
                                                                 (let v8
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_mkGeneralizeTel_90403
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Certs.d_pp_1044
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Certs.d_votes_1046
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Certs.d_epoch_1042
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Certs.d_wdrls_1048
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Certs.d_coldCreds_1050
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1244
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1262
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1264
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                                                  (coe v2))) in
                                                                  coe
                                                                    (MAlonzo.Code.Ledger.PParams.d_drepActivity_402
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_'46'generalizedField'45'pp_90375
                                                                          (coe v8)))) in
                                                       coe (coe (\ v9 -> v8)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1260
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                            (coe v2)))
                                                      (let v8
                                                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe v8))
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_884)
                                                            (let v9
                                                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe v9))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_votes_1046
                                                                     (coe v1))))))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1262
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                         (coe v2)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1264
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280
                                                         (coe v2)))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'base_1762
                                    v6))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v5)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe du_genErr_2242 (coe v0) (coe v1) (coe v2)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTS
d_Computational'45'CERTS_2296 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2296 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'''_1138
      (coe d_Computational'45'CERTBASE_2116 (coe v0))
      (coe d_Computational'45'CERT_1808 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
